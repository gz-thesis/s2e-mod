/*
 * S2E Selective Symbolic Execution Framework
 *
 * Copyright (c) 2010, Dependable Systems Laboratory, EPFL
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the Dependable Systems Laboratory, EPFL nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE DEPENDABLE SYSTEMS LABORATORY, EPFL BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Currently maintained by:
 *    Vitaly Chipounov <vitaly.chipounov@epfl.ch>
 *    Volodymyr Kuznetsov <vova.kuznetsov@epfl.ch>
 *
 * All contributors are listed in the S2E-AUTHORS file.
 */

#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>

#include <s2e/cpu.h>
#include <s2e/opcodes.h>

#include <s2e/ConfigFile.h>
#include <s2e/S2E.h>
#include <s2e/S2EExecutor.h>
#include <s2e/Utils.h>

namespace md5{
#include <openssl/md5.h>
}
/* #include <openssl/evp.h> */

#include <llvm/Support/FileSystem.h>
#include <llvm/Support/raw_ostream.h>

#include <iostream>
#include <cctype>
#include <time.h>

#include "DrillerSearcher.h"

namespace s2e {
namespace plugins {

using namespace llvm;

S2E_DEFINE_PLUGIN(DrillerSearcher, "Explore potaintial paths according to defined forking addresses", "DrillerSearcher");

void DrillerSearcher::initialize()
{
    m_detector = s2e()->getPlugin<ModuleExecutionDetector>();
    m_searcherInited = false;
    currentState = NULL;
    m_generate_constranit=false;
    initializeSearcher();
}

void DrillerSearcher::initializeSearcher()
{
    if (m_searcherInited) {
        return;
    }
    initializeConfiguration();

    s2e()->getExecutor()->setSearcher(this);
    m_searcherInited = true;

    // pre fork operations
    s2e()->getCorePlugin()->onStateForkDecide.connect(
            sigc::mem_fun(*this, &DrillerSearcher::onForkCheck));

    // post fork operations
    s2e()->getCorePlugin()->onStateFork.connect(
            sigc::mem_fun(*this, &DrillerSearcher::onFork));

}

void DrillerSearcher::initializeConfiguration()
{
    /* bool ok = true; */
    /* ConfigFile *cfg = s2e()->getConfig(); */
    /* ConfigFile::integer_list list; */
}


klee::ExecutionState &DrillerSearcher::selectState() {
    klee::ExecutionState *ret = states.back();

    if (currentState == NULL) {
        currentState = ret;
    }

    return *currentState;
}

void DrillerSearcher::onForkCheck(S2EExecutionState *state, bool *forkOk)
{
    const ModuleDescriptor *moduleDescriptor = m_detector->getCurrentDescriptor(state);
    if (!moduleDescriptor) {
        *forkOk = false;
        return;
    }

}
/* On state fork, prioritize the pre-defined state */
void DrillerSearcher::onFork(S2EExecutionState *state,
        const std::vector<S2EExecutionState*>& newStates,
        const std::vector<klee::ref<klee::Expr> >& newConditions
        )
{
    /* The first state in newStates is always the true */
    int tID = newStates[0]->getID();
    int fID = newStates[1]->getID();
    /* only work on state 0 */
    if(tID != 0 && fID != 0) {
        s2e()->getWarningsStream() << "not forking on state[0]\n";
        return;
    }

    // get the index of the state that is not state 0 in new states
    int idx = tID ? 0 : 1;

    s2e()->getWarningsStream()
        << "[DrillerSearcher][onFork]: "
        << "Generating test case for state ["
        << newStates[idx]->getID() << "] "
        << "with condition [" << boolString(!idx) << "]\n";

    s2e()->getExecutor()->terminateStateEarly(*newStates[idx], "generate testcase");

    s2e()->getWarningsStream()
        << "---------------------------------------------------------------------------\n";
}

/* do not accumulate states to state queue, always return states based on fork and concolic input */
/* clear states when switching input */
void DrillerSearcher::update(klee::ExecutionState *current,
	const klee::StateSet &addedStates,
	const klee::StateSet &removedStates){


    /* only add state 0 */
    for (auto& it: addedStates) {
        S2EExecutionState *es = dynamic_cast<S2EExecutionState*>(it);

        if (es->getID() == 0)
        {
            states.insert(states.end(), es);
        }
    }

    //foreach2 (it, removedStates.begin(), removedStates.end()) {
    for (klee::StateSet::const_iterator it = removedStates.begin(), ie = removedStates.end(); it != ie; ++it) {
        klee::ExecutionState *es = *it;
        if (currentState == es) {
            currentState = NULL;
        }

        if (es == states.back()) {
            states.pop_back();
        } else {
            bool ok = false;

            for (std::vector<klee::ExecutionState *>::iterator it = states.begin(), ie = states.end(); it != ie; ++it) {
                if (es == *it) {
                    states.erase(it);
                    ok = true;
                    break;
                }
            }

            assert(ok && "invalid state removed");
        }
    }

}

} // namespace plugins
} // namespace s2e
