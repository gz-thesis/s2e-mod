#!/bin/bash
set -x

S2EGET=./s2eget
S2EPUT=./s2eput
S2ECMD=./s2ecmd
TOOLS="s2ecmd s2eget s2eput s2e.so"
CB="cb"
SEED_FILE="input"
SYMB_FILE="/tmp/input"
CMD=" -a ${SYMB_FILE}"

# update guest tools
for TOOL in ${TOOLS}; do
    ${S2EGET} guest-tools/${TOOL}
    chmod +x ${TOOL}
done

# Don't print crashes in the syslog. This prevents unnecessary forking in the
# kernel
sudo sysctl -w debug.exception-trace=0

# Prevent core dumps from being created. This prevents unnecessary forking in
# the kernel
ulimit -c 0

# Ensure that /tmp is mounted in memory (if you built the image using s2e-env
# then this should already be the case. But better to be safe than sorry!)
if ! mount | grep "/tmp type tmpfs"; then
    sudo mount -t tmpfs -osize=10m tmpfs /tmp
fi

sudo modprobe s2e

# fetch target cb
${S2EGET} ${CB}
chmod +x "${CB}"

# fetch input
$S2EGET $SEED_FILE
cp ${SEED_FILE} ${SYMB_FILE}
${S2ECMD} symbfile ${SYMB_FILE}

# execute
S2E_SYM_ARGS="" LD_PRELOAD=./s2e.so ./${CB} ${CMD} > /dev/null 2> /dev/null

# Kill states before exiting
${S2ECMD} kill $? "'cb' state killed"
