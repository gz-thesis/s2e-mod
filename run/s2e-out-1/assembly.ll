; ModuleID = 'tcg-llvm'
source_filename = "tcg-llvm"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPUX86State = type <{ [16 x i64], i64, i64, i64, i64, i64, i32, i64, i32, i32, i64, [6 x %struct.SegmentCache], %struct.SegmentCache, %struct.SegmentCache, %struct.SegmentCache, %struct.SegmentCache, [5 x i64], i32, i32, i16, i16, [8 x i8], [8 x 
%struct.SegmentCache = type <{ i32, i64, i32, i32 }>
%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }
%struct.float_status = type { i8, i8, i8, i8, i8, i8, i8 }
%union.XMMReg = type { [2 x i64] }
%union.MMXReg = type { i64 }
%union.anon = type { [4 x %struct.CPUBreakpoint*] }
%struct.CPUBreakpoint = type { i64, i32, %struct.anon }
%struct.TranslationBlock = type { i64, i64, i64, i16, i16, i8*, i32, %struct.TranslationBlock*, [2 x %struct.TranslationBlock*], [2 x i64], [2 x i16], [2 x i16], [2 x %struct.TranslationBlock*], %struct.TranslationBlock*, i32, i8*, i64, i64, i64, i32, i6
%struct.tb_precise_pc_t_ = type { i16, i16, i16, i8, i8 }
%struct.CPUTLBEntry = type { i64, i64, i64, i64, i64, i64, i8*, [8 x i8] }
%struct.CPUTLBRAMEntry = type { i64, i64, i8* }
%struct.anon = type { %struct.CPUBreakpoint*, %struct.CPUBreakpoint** }
%struct.anon.0 = type { %struct.CPUWatchpoint*, %struct.CPUWatchpoint** }
%struct.CPUWatchpoint = type { i64, i64, i32, %struct.anon.0 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.MTRRVar = type { i64, i64 }
%struct.DeviceState = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.se_libcpu_interface_t = type { i32, %struct.mode, %struct.exec, %struct.tb, %struct.tlb, %struct.regs, %struct.mem, %struct.expr, %struct.libcpu, %struct.events, %struct.anon.1 }
%struct.mode = type { i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32* }
%struct.exec = type { void (i8*, i8*)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, void ()*, void (i8*)*, i64 (%struct.CPUX86State*, %struct.TranslationBlock*)*, void (i32, i32, i32, i64, i32)*, i32* }
%struct.tb = type { void (%struct.TranslationBlock*)*, void (%struct.TranslationBlock*)*, void (...)*, void (%struct.TranslationBlock*)*, i32 (%struct.TranslationBlock*)*, void (%struct.TranslationBlock*)* }
%struct.tlb = type { void ()*, void (i8*, i32, i32)*, void (%struct.CPUX86State*, i32, i64, i64)* }
%struct.regs = type { void (i32, i8*, i32)*, void (i32, i8*, i32)*, void (%struct.CPUX86State*)* }
%struct.mem = type { i8 (i64)*, void (i64, i8)*, void (i64, i8*, i32)*, void (i64, i8*, i32)*, void (i64, i8*, i64)*, void (i64, i8*, i64)*, void (i64, i8*, i64)*, i64 (i32)*, i32 (i64)*, i32 (i64, i32)*, i64 (i64)*, i8 (i8*, i64)*, i16 (i16*, i64)*, i32
%struct.expr = type { i8* ()*, void (i8*)*, void ()*, i8* (i8*, i8*, i64)*, i64 (i8*)*, void (i8*, i64)*, void (i8*, i32, i32)*, i8* (i8*, i32, i32)*, i8* (i8*, i64)*, i8* (i8*, i64)* }
%struct.libcpu = type { i32 (i64)*, i32 (i64)* }
%struct.events = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, void (i32, i32)*, void (i64, i64)*, void (i64, i32, i8*)*, void (i64, i32, i8*)*, void (i64, i64, i32, i32, i64)*, v
%struct.anon.1 = type { void (i8*, ...)* }
%struct.MemoryDescOps = type { i64 (i64, i32)*, void (i64, i64, i32)* }

@env = local_unnamed_addr global %struct.CPUX86State* null, align 8
@parity_table = external local_unnamed_addr constant [256 x i8], align 16
@loglevel = external local_unnamed_addr global i32, align 4
@logfile = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"check_exception old: 0x%x new 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Triple fault\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"vmexit(%08x, %016lx, %016lx, %016lx)!\0A\00", align 1
@g_sqi = external local_unnamed_addr global %struct.se_libcpu_interface_t, align 8
@se_do_interrupt_all.count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"%6d: v=%02x e=%04x i=%d cpl=%d IP=%04x:%016lx pc=%016lx SP=%04x:%016lx\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" CR2=%016lx\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" EAX=%016lx\00", align 1
@switch.table = private unnamed_addr constant [10 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1]
@.str.16 = private unnamed_addr constant [12 x i8] c"invalid tss\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SMM: enter\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SMM: after RSM\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vmrun! %016lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Injecting(%#hx): \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"INTR\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"EXEPT\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"SOFT\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" %#x %#x\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"vmload! %016lx\0AFS: %016lx | %016lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"vmsave! %016lx\0AFS: %016lx | %016lx\0A\00", align 1
@rclb_table = external local_unnamed_addr constant [32 x i8], align 16
@rclw_table = external local_unnamed_addr constant [32 x i8], align 16

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @compute_eflags() local_unnamed_addr #0 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 7
  %3 = load i64, i64* %2, align 4
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 16
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @helper_cc_compute_all(i32 %6)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 1024
  %12 = zext i32 %11 to i64
  %13 = or i64 %3, %8
  %14 = or i64 %13, %12
  %15 = or i64 %14, 2
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @helper_cc_compute_all(i32) local_unnamed_addr #0 {
  switch i32 %0, label %1196 [
    i32 1, label %2
    i32 2, label %7
    i32 3, label %29
    i32 4, label %53
    i32 6, label %77
    i32 7, label %113
    i32 8, label %151
    i32 10, label %187
    i32 11, label %224
    i32 12, label %263
    i32 14, label %300
    i32 15, label %336
    i32 16, label %374
    i32 18, label %410
    i32 19, label %447
    i32 20, label %486
    i32 22, label %523
    i32 23, label %538
    i32 24, label %555
    i32 26, label %572
    i32 27, label %600
    i32 28, label %630
    i32 30, label %661
    i32 31, label %689
    i32 32, label %719
    i32 34, label %750
    i32 35, label %776
    i32 36, label %804
    i32 38, label %832
    i32 39, label %857
    i32 40, label %884
    i32 5, label %911
    i32 9, label %934
    i32 13, label %968
    i32 17, label %1003
    i32 21, label %1036
    i32 25, label %1070
    i32 29, label %1086
    i32 33, label %1115
    i32 37, label %1144
    i32 41, label %1170
  ]

; <label>:2:                                      ; preds = %1
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  br label %1196

; <label>:7:                                      ; preds = %1
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 3
  %14 = load i64, i64* %13, align 16
  %15 = and i64 %14, 255
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i64 %15, 0
  %20 = zext i1 %19 to i32
  %21 = shl nuw nsw i32 %20, 6
  %22 = trunc i64 %14 to i32
  %23 = and i32 %22, 128
  %24 = shl nuw nsw i32 %12, 11
  %25 = or i32 %18, %12
  %26 = or i32 %25, %23
  %27 = or i32 %26, %24
  %28 = or i32 %27, %21
  br label %1196

; <label>:29:                                     ; preds = %1
  %30 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 3
  %36 = load i64, i64* %35, align 16
  %37 = and i64 %36, 255
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i64 %36, 65535
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = shl nuw nsw i32 %43, 6
  %45 = lshr i64 %36, 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 128
  %48 = shl nuw nsw i32 %34, 11
  %49 = or i32 %40, %34
  %50 = or i32 %49, %48
  %51 = or i32 %50, %47
  %52 = or i32 %51, %44
  br label %1196

; <label>:53:                                     ; preds = %1
  %54 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %55 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %54, i64 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %54, i64 0, i32 3
  %60 = load i64, i64* %59, align 16
  %61 = and i64 %60, 255
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = trunc i64 %60 to i32
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = shl nuw nsw i32 %67, 6
  %69 = lshr i64 %60, 24
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, 128
  %72 = shl nuw nsw i32 %58, 11
  %73 = or i32 %64, %58
  %74 = or i32 %73, %72
  %75 = or i32 %74, %71
  %76 = or i32 %75, %68
  br label %1196

; <label>:77:                                     ; preds = %1
  %78 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %79 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %78, i64 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %78, i64 0, i32 3
  %82 = load i64, i64* %81, align 16
  %83 = sub i64 %82, %80
  %84 = trunc i64 %82 to i32
  %85 = and i32 %84, 255
  %86 = trunc i64 %80 to i32
  %87 = and i32 %86, 255
  %88 = icmp ult i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = and i64 %82, 255
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = xor i64 %82, %80
  %95 = xor i64 %94, %83
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 16
  %98 = icmp eq i32 %85, 0
  %99 = zext i1 %98 to i32
  %100 = shl nuw nsw i32 %99, 6
  %101 = and i32 %84, 128
  %102 = xor i64 %80, 128
  %103 = xor i64 %102, %83
  %104 = and i64 %103, %94
  %105 = shl i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = and i32 %106, 2048
  %108 = or i32 %101, %93
  %109 = or i32 %108, %89
  %110 = or i32 %109, %97
  %111 = or i32 %110, %100
  %112 = or i32 %111, %107
  br label %1196

; <label>:113:                                    ; preds = %1
  %114 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %115 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %114, i64 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %114, i64 0, i32 3
  %118 = load i64, i64* %117, align 16
  %119 = sub i64 %118, %116
  %120 = trunc i64 %118 to i32
  %121 = and i32 %120, 65535
  %122 = trunc i64 %116 to i32
  %123 = and i32 %122, 65535
  %124 = icmp ult i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = and i64 %118, 255
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = xor i64 %118, %116
  %131 = xor i64 %130, %119
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 16
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i32
  %136 = shl nuw nsw i32 %135, 6
  %137 = lshr i64 %118, 8
  %138 = trunc i64 %137 to i32
  %139 = and i32 %138, 128
  %140 = xor i64 %116, 32768
  %141 = xor i64 %140, %119
  %142 = and i64 %141, %130
  %143 = lshr i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = and i32 %144, 2048
  %146 = or i32 %139, %129
  %147 = or i32 %146, %125
  %148 = or i32 %147, %133
  %149 = or i32 %148, %136
  %150 = or i32 %149, %145
  br label %1196

; <label>:151:                                    ; preds = %1
  %152 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %153 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %152, i64 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %152, i64 0, i32 3
  %156 = load i64, i64* %155, align 16
  %157 = sub i64 %156, %154
  %158 = trunc i64 %156 to i32
  %159 = trunc i64 %154 to i32
  %160 = icmp ult i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = and i64 %156, 255
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = xor i64 %156, %154
  %167 = xor i64 %166, %157
  %168 = trunc i64 %167 to i32
  %169 = and i32 %168, 16
  %170 = icmp eq i32 %158, 0
  %171 = zext i1 %170 to i32
  %172 = shl nuw nsw i32 %171, 6
  %173 = lshr i64 %156, 24
  %174 = trunc i64 %173 to i32
  %175 = and i32 %174, 128
  %176 = xor i64 %154, 2147483648
  %177 = xor i64 %176, %157
  %178 = and i64 %177, %166
  %179 = lshr i64 %178, 20
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 2048
  %182 = or i32 %161, %165
  %183 = or i32 %182, %175
  %184 = or i32 %183, %169
  %185 = or i32 %184, %172
  %186 = or i32 %185, %181
  br label %1196

; <label>:187:                                    ; preds = %1
  %188 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 3
  %192 = load i64, i64* %191, align 16
  %193 = sub i64 %192, %190
  %194 = add i64 %193, -1
  %195 = trunc i64 %192 to i32
  %196 = and i32 %195, 255
  %197 = trunc i64 %190 to i32
  %198 = and i32 %197, 255
  %199 = icmp ule i32 %196, %198
  %200 = zext i1 %199 to i32
  %201 = and i64 %192, 255
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = xor i64 %192, %190
  %206 = xor i64 %194, %205
  %207 = trunc i64 %206 to i32
  %208 = and i32 %207, 16
  %209 = icmp eq i32 %196, 0
  %210 = zext i1 %209 to i32
  %211 = shl nuw nsw i32 %210, 6
  %212 = and i32 %195, 128
  %213 = xor i64 %190, 128
  %214 = xor i64 %213, %194
  %215 = and i64 %214, %205
  %216 = shl i64 %215, 4
  %217 = trunc i64 %216 to i32
  %218 = and i32 %217, 2048
  %219 = or i32 %212, %204
  %220 = or i32 %219, %200
  %221 = or i32 %220, %208
  %222 = or i32 %221, %211
  %223 = or i32 %222, %218
  br label %1196

; <label>:224:                                    ; preds = %1
  %225 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %226 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %225, i64 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %225, i64 0, i32 3
  %229 = load i64, i64* %228, align 16
  %230 = sub i64 %229, %227
  %231 = add i64 %230, -1
  %232 = trunc i64 %229 to i32
  %233 = and i32 %232, 65535
  %234 = trunc i64 %227 to i32
  %235 = and i32 %234, 65535
  %236 = icmp ule i32 %233, %235
  %237 = zext i1 %236 to i32
  %238 = and i64 %229, 255
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = xor i64 %229, %227
  %243 = xor i64 %231, %242
  %244 = trunc i64 %243 to i32
  %245 = and i32 %244, 16
  %246 = icmp eq i32 %233, 0
  %247 = zext i1 %246 to i32
  %248 = shl nuw nsw i32 %247, 6
  %249 = lshr i64 %229, 8
  %250 = trunc i64 %249 to i32
  %251 = and i32 %250, 128
  %252 = xor i64 %227, 32768
  %253 = xor i64 %252, %231
  %254 = and i64 %253, %242
  %255 = lshr i64 %254, 4
  %256 = trunc i64 %255 to i32
  %257 = and i32 %256, 2048
  %258 = or i32 %251, %241
  %259 = or i32 %258, %237
  %260 = or i32 %259, %245
  %261 = or i32 %260, %248
  %262 = or i32 %261, %257
  br label %1196

; <label>:263:                                    ; preds = %1
  %264 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %265 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %264, i64 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %264, i64 0, i32 3
  %268 = load i64, i64* %267, align 16
  %269 = sub i64 %268, %266
  %270 = add i64 %269, -1
  %271 = trunc i64 %268 to i32
  %272 = trunc i64 %266 to i32
  %273 = icmp ule i32 %271, %272
  %274 = zext i1 %273 to i32
  %275 = and i64 %268, 255
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = xor i64 %268, %266
  %280 = xor i64 %270, %279
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 16
  %283 = icmp eq i32 %271, 0
  %284 = zext i1 %283 to i32
  %285 = shl nuw nsw i32 %284, 6
  %286 = lshr i64 %268, 24
  %287 = trunc i64 %286 to i32
  %288 = and i32 %287, 128
  %289 = xor i64 %266, 2147483648
  %290 = xor i64 %289, %270
  %291 = and i64 %290, %279
  %292 = lshr i64 %291, 20
  %293 = trunc i64 %292 to i32
  %294 = and i32 %293, 2048
  %295 = or i32 %274, %278
  %296 = or i32 %295, %288
  %297 = or i32 %296, %285
  %298 = or i32 %297, %282
  %299 = or i32 %298, %294
  br label %1196

; <label>:300:                                    ; preds = %1
  %301 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %302 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 3
  %303 = load i64, i64* %302, align 16
  %304 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, %303
  %307 = trunc i64 %306 to i32
  %308 = and i32 %307, 255
  %309 = trunc i64 %305 to i32
  %310 = and i32 %309, 255
  %311 = icmp ult i32 %308, %310
  %312 = zext i1 %311 to i32
  %313 = and i64 %303, 255
  %314 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = xor i64 %306, %303
  %318 = xor i64 %317, %305
  %319 = trunc i64 %318 to i32
  %320 = and i32 %319, 16
  %321 = icmp eq i64 %313, 0
  %322 = zext i1 %321 to i32
  %323 = shl nuw nsw i32 %322, 6
  %324 = trunc i64 %303 to i32
  %325 = and i32 %324, 128
  %326 = xor i64 %306, %305
  %327 = and i64 %326, %317
  %328 = shl i64 %327, 4
  %329 = trunc i64 %328 to i32
  %330 = and i32 %329, 2048
  %331 = or i32 %316, %325
  %332 = or i32 %331, %323
  %333 = or i32 %332, %312
  %334 = or i32 %333, %320
  %335 = or i32 %334, %330
  br label %1196

; <label>:336:                                    ; preds = %1
  %337 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %338 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %337, i64 0, i32 3
  %339 = load i64, i64* %338, align 16
  %340 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %337, i64 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, %339
  %343 = trunc i64 %342 to i32
  %344 = and i32 %343, 65535
  %345 = trunc i64 %341 to i32
  %346 = and i32 %345, 65535
  %347 = icmp ult i32 %344, %346
  %348 = zext i1 %347 to i32
  %349 = and i64 %339, 255
  %350 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = xor i64 %342, %339
  %354 = xor i64 %353, %341
  %355 = trunc i64 %354 to i32
  %356 = and i32 %355, 16
  %357 = and i64 %339, 65535
  %358 = icmp eq i64 %357, 0
  %359 = zext i1 %358 to i32
  %360 = shl nuw nsw i32 %359, 6
  %361 = lshr i64 %339, 8
  %362 = trunc i64 %361 to i32
  %363 = and i32 %362, 128
  %364 = xor i64 %342, %341
  %365 = and i64 %364, %353
  %366 = lshr i64 %365, 4
  %367 = trunc i64 %366 to i32
  %368 = and i32 %367, 2048
  %369 = or i32 %363, %352
  %370 = or i32 %369, %360
  %371 = or i32 %370, %348
  %372 = or i32 %371, %356
  %373 = or i32 %372, %368
  br label %1196

; <label>:374:                                    ; preds = %1
  %375 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %376 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %375, i64 0, i32 3
  %377 = load i64, i64* %376, align 16
  %378 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %375, i64 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %379, %377
  %381 = trunc i64 %380 to i32
  %382 = trunc i64 %379 to i32
  %383 = icmp ult i32 %381, %382
  %384 = zext i1 %383 to i32
  %385 = and i64 %377, 255
  %386 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = xor i64 %380, %377
  %390 = xor i64 %389, %379
  %391 = trunc i64 %390 to i32
  %392 = and i32 %391, 16
  %393 = trunc i64 %377 to i32
  %394 = icmp eq i32 %393, 0
  %395 = zext i1 %394 to i32
  %396 = shl nuw nsw i32 %395, 6
  %397 = lshr i64 %377, 24
  %398 = trunc i64 %397 to i32
  %399 = and i32 %398, 128
  %400 = xor i64 %380, %379
  %401 = and i64 %400, %389
  %402 = lshr i64 %401, 20
  %403 = trunc i64 %402 to i32
  %404 = and i32 %403, 2048
  %405 = or i32 %399, %388
  %406 = or i32 %405, %396
  %407 = or i32 %406, %384
  %408 = or i32 %407, %392
  %409 = or i32 %408, %404
  br label %1196

; <label>:410:                                    ; preds = %1
  %411 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %412 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %411, i64 0, i32 3
  %413 = load i64, i64* %412, align 16
  %414 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %411, i64 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = add i64 %413, 1
  %417 = add i64 %416, %415
  %418 = trunc i64 %417 to i32
  %419 = and i32 %418, 255
  %420 = trunc i64 %415 to i32
  %421 = and i32 %420, 255
  %422 = icmp ule i32 %419, %421
  %423 = zext i1 %422 to i32
  %424 = and i64 %413, 255
  %425 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = zext i8 %426 to i32
  %428 = xor i64 %417, %413
  %429 = xor i64 %428, %415
  %430 = trunc i64 %429 to i32
  %431 = and i32 %430, 16
  %432 = icmp eq i64 %424, 0
  %433 = zext i1 %432 to i32
  %434 = shl nuw nsw i32 %433, 6
  %435 = trunc i64 %413 to i32
  %436 = and i32 %435, 128
  %437 = xor i64 %417, %415
  %438 = and i64 %437, %428
  %439 = shl i64 %438, 4
  %440 = trunc i64 %439 to i32
  %441 = and i32 %440, 2048
  %442 = or i32 %427, %436
  %443 = or i32 %442, %434
  %444 = or i32 %443, %423
  %445 = or i32 %444, %431
  %446 = or i32 %445, %441
  br label %1196

; <label>:447:                                    ; preds = %1
  %448 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %449 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %448, i64 0, i32 3
  %450 = load i64, i64* %449, align 16
  %451 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %448, i64 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = add i64 %450, 1
  %454 = add i64 %453, %452
  %455 = trunc i64 %454 to i32
  %456 = and i32 %455, 65535
  %457 = trunc i64 %452 to i32
  %458 = and i32 %457, 65535
  %459 = icmp ule i32 %456, %458
  %460 = zext i1 %459 to i32
  %461 = and i64 %450, 255
  %462 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %461
  %463 = load i8, i8* %462, align 1
  %464 = zext i8 %463 to i32
  %465 = xor i64 %454, %450
  %466 = xor i64 %465, %452
  %467 = trunc i64 %466 to i32
  %468 = and i32 %467, 16
  %469 = and i64 %450, 65535
  %470 = icmp eq i64 %469, 0
  %471 = zext i1 %470 to i32
  %472 = shl nuw nsw i32 %471, 6
  %473 = lshr i64 %450, 8
  %474 = trunc i64 %473 to i32
  %475 = and i32 %474, 128
  %476 = xor i64 %454, %452
  %477 = and i64 %476, %465
  %478 = lshr i64 %477, 4
  %479 = trunc i64 %478 to i32
  %480 = and i32 %479, 2048
  %481 = or i32 %475, %464
  %482 = or i32 %481, %472
  %483 = or i32 %482, %460
  %484 = or i32 %483, %468
  %485 = or i32 %484, %480
  br label %1196

; <label>:486:                                    ; preds = %1
  %487 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %488 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %487, i64 0, i32 3
  %489 = load i64, i64* %488, align 16
  %490 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %487, i64 0, i32 2
  %491 = load i64, i64* %490, align 8
  %492 = add i64 %489, 1
  %493 = add i64 %492, %491
  %494 = trunc i64 %493 to i32
  %495 = trunc i64 %491 to i32
  %496 = icmp ule i32 %494, %495
  %497 = zext i1 %496 to i32
  %498 = and i64 %489, 255
  %499 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %498
  %500 = load i8, i8* %499, align 1
  %501 = zext i8 %500 to i32
  %502 = xor i64 %493, %489
  %503 = xor i64 %502, %491
  %504 = trunc i64 %503 to i32
  %505 = and i32 %504, 16
  %506 = trunc i64 %489 to i32
  %507 = icmp eq i32 %506, 0
  %508 = zext i1 %507 to i32
  %509 = shl nuw nsw i32 %508, 6
  %510 = lshr i64 %489, 24
  %511 = trunc i64 %510 to i32
  %512 = and i32 %511, 128
  %513 = xor i64 %493, %491
  %514 = and i64 %513, %502
  %515 = lshr i64 %514, 20
  %516 = trunc i64 %515 to i32
  %517 = and i32 %516, 2048
  %518 = or i32 %512, %501
  %519 = or i32 %518, %509
  %520 = or i32 %519, %497
  %521 = or i32 %520, %505
  %522 = or i32 %521, %517
  br label %1196

; <label>:523:                                    ; preds = %1
  %524 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %525 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 3
  %526 = load i64, i64* %525, align 16
  %527 = and i64 %526, 255
  %528 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = zext i8 %529 to i32
  %531 = icmp eq i64 %527, 0
  %532 = zext i1 %531 to i32
  %533 = shl nuw nsw i32 %532, 6
  %534 = trunc i64 %526 to i32
  %535 = and i32 %534, 128
  %536 = or i32 %535, %530
  %537 = or i32 %536, %533
  br label %1196

; <label>:538:                                    ; preds = %1
  %539 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %540 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %539, i64 0, i32 3
  %541 = load i64, i64* %540, align 16
  %542 = and i64 %541, 255
  %543 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = and i64 %541, 65535
  %547 = icmp eq i64 %546, 0
  %548 = zext i1 %547 to i32
  %549 = shl nuw nsw i32 %548, 6
  %550 = lshr i64 %541, 8
  %551 = trunc i64 %550 to i32
  %552 = and i32 %551, 128
  %553 = or i32 %552, %545
  %554 = or i32 %553, %549
  br label %1196

; <label>:555:                                    ; preds = %1
  %556 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %557 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %556, i64 0, i32 3
  %558 = load i64, i64* %557, align 16
  %559 = and i64 %558, 255
  %560 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %559
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i32
  %563 = trunc i64 %558 to i32
  %564 = icmp eq i32 %563, 0
  %565 = zext i1 %564 to i32
  %566 = shl nuw nsw i32 %565, 6
  %567 = lshr i64 %558, 24
  %568 = trunc i64 %567 to i32
  %569 = and i32 %568, 128
  %570 = or i32 %569, %562
  %571 = or i32 %570, %566
  br label %1196

; <label>:572:                                    ; preds = %1
  %573 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %574 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %573, i64 0, i32 3
  %575 = load i64, i64* %574, align 16
  %576 = add i64 %575, 31
  %577 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %573, i64 0, i32 2
  %578 = load i64, i64* %577, align 8
  %579 = trunc i64 %578 to i32
  %580 = and i64 %575, 255
  %581 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %580
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  %584 = xor i64 %576, %575
  %585 = trunc i64 %584 to i32
  %586 = and i32 %585, 16
  %587 = icmp eq i64 %580, 0
  %588 = zext i1 %587 to i32
  %589 = shl nuw nsw i32 %588, 6
  %590 = trunc i64 %575 to i32
  %591 = and i32 %590, 128
  %592 = icmp eq i64 %580, 128
  %593 = zext i1 %592 to i32
  %594 = shl nuw nsw i32 %593, 11
  %595 = or i32 %591, %579
  %596 = or i32 %595, %583
  %597 = or i32 %596, %586
  %598 = or i32 %597, %589
  %599 = or i32 %598, %594
  br label %1196

; <label>:600:                                    ; preds = %1
  %601 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %602 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %601, i64 0, i32 3
  %603 = load i64, i64* %602, align 16
  %604 = add i64 %603, 31
  %605 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %601, i64 0, i32 2
  %606 = load i64, i64* %605, align 8
  %607 = trunc i64 %606 to i32
  %608 = and i64 %603, 255
  %609 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  %612 = xor i64 %604, %603
  %613 = trunc i64 %612 to i32
  %614 = and i32 %613, 16
  %615 = and i64 %603, 65535
  %616 = icmp eq i64 %615, 0
  %617 = zext i1 %616 to i32
  %618 = shl nuw nsw i32 %617, 6
  %619 = lshr i64 %603, 8
  %620 = trunc i64 %619 to i32
  %621 = and i32 %620, 128
  %622 = icmp eq i64 %615, 32768
  %623 = zext i1 %622 to i32
  %624 = shl nuw nsw i32 %623, 11
  %625 = or i32 %611, %607
  %626 = or i32 %625, %621
  %627 = or i32 %626, %614
  %628 = or i32 %627, %618
  %629 = or i32 %628, %624
  br label %1196

; <label>:630:                                    ; preds = %1
  %631 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %632 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %631, i64 0, i32 3
  %633 = load i64, i64* %632, align 16
  %634 = add i64 %633, 31
  %635 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %631, i64 0, i32 2
  %636 = load i64, i64* %635, align 8
  %637 = trunc i64 %636 to i32
  %638 = and i64 %633, 255
  %639 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %638
  %640 = load i8, i8* %639, align 1
  %641 = zext i8 %640 to i32
  %642 = xor i64 %634, %633
  %643 = trunc i64 %642 to i32
  %644 = and i32 %643, 16
  %645 = trunc i64 %633 to i32
  %646 = icmp eq i32 %645, 0
  %647 = zext i1 %646 to i32
  %648 = shl nuw nsw i32 %647, 6
  %649 = lshr i64 %633, 24
  %650 = trunc i64 %649 to i32
  %651 = and i32 %650, 128
  %652 = and i64 %633, 4294967295
  %653 = icmp eq i64 %652, 2147483648
  %654 = zext i1 %653 to i32
  %655 = shl nuw nsw i32 %654, 11
  %656 = or i32 %641, %637
  %657 = or i32 %656, %651
  %658 = or i32 %657, %644
  %659 = or i32 %658, %648
  %660 = or i32 %659, %655
  br label %1196

; <label>:661:                                    ; preds = %1
  %662 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %663 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %662, i64 0, i32 3
  %664 = load i64, i64* %663, align 16
  %665 = add i64 %664, 1
  %666 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %662, i64 0, i32 2
  %667 = load i64, i64* %666, align 8
  %668 = trunc i64 %667 to i32
  %669 = and i64 %664, 255
  %670 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %669
  %671 = load i8, i8* %670, align 1
  %672 = zext i8 %671 to i32
  %673 = xor i64 %665, %664
  %674 = trunc i64 %673 to i32
  %675 = and i32 %674, 16
  %676 = icmp eq i64 %669, 0
  %677 = zext i1 %676 to i32
  %678 = shl nuw nsw i32 %677, 6
  %679 = trunc i64 %664 to i32
  %680 = and i32 %679, 128
  %681 = icmp eq i64 %669, 127
  %682 = zext i1 %681 to i32
  %683 = shl nuw nsw i32 %682, 11
  %684 = or i32 %680, %668
  %685 = or i32 %684, %672
  %686 = or i32 %685, %675
  %687 = or i32 %686, %678
  %688 = or i32 %687, %683
  br label %1196

; <label>:689:                                    ; preds = %1
  %690 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %691 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %690, i64 0, i32 3
  %692 = load i64, i64* %691, align 16
  %693 = add i64 %692, 1
  %694 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %690, i64 0, i32 2
  %695 = load i64, i64* %694, align 8
  %696 = trunc i64 %695 to i32
  %697 = and i64 %692, 255
  %698 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %697
  %699 = load i8, i8* %698, align 1
  %700 = zext i8 %699 to i32
  %701 = xor i64 %693, %692
  %702 = trunc i64 %701 to i32
  %703 = and i32 %702, 16
  %704 = and i64 %692, 65535
  %705 = icmp eq i64 %704, 0
  %706 = zext i1 %705 to i32
  %707 = shl nuw nsw i32 %706, 6
  %708 = lshr i64 %692, 8
  %709 = trunc i64 %708 to i32
  %710 = and i32 %709, 128
  %711 = icmp eq i64 %704, 32767
  %712 = zext i1 %711 to i32
  %713 = shl nuw nsw i32 %712, 11
  %714 = or i32 %700, %696
  %715 = or i32 %714, %710
  %716 = or i32 %715, %703
  %717 = or i32 %716, %707
  %718 = or i32 %717, %713
  br label %1196

; <label>:719:                                    ; preds = %1
  %720 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %721 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %720, i64 0, i32 3
  %722 = load i64, i64* %721, align 16
  %723 = add i64 %722, 1
  %724 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %720, i64 0, i32 2
  %725 = load i64, i64* %724, align 8
  %726 = trunc i64 %725 to i32
  %727 = and i64 %722, 255
  %728 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %727
  %729 = load i8, i8* %728, align 1
  %730 = zext i8 %729 to i32
  %731 = xor i64 %723, %722
  %732 = trunc i64 %731 to i32
  %733 = and i32 %732, 16
  %734 = trunc i64 %722 to i32
  %735 = icmp eq i32 %734, 0
  %736 = zext i1 %735 to i32
  %737 = shl nuw nsw i32 %736, 6
  %738 = lshr i64 %722, 24
  %739 = trunc i64 %738 to i32
  %740 = and i32 %739, 128
  %741 = and i64 %722, 4294967295
  %742 = icmp eq i64 %741, 2147483647
  %743 = zext i1 %742 to i32
  %744 = shl nuw nsw i32 %743, 11
  %745 = or i32 %730, %726
  %746 = or i32 %745, %740
  %747 = or i32 %746, %733
  %748 = or i32 %747, %737
  %749 = or i32 %748, %744
  br label %1196

; <label>:750:                                    ; preds = %1
  %751 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %752 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %751, i64 0, i32 2
  %753 = load i64, i64* %752, align 8
  %754 = lshr i64 %753, 7
  %755 = trunc i64 %754 to i32
  %756 = and i32 %755, 1
  %757 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %751, i64 0, i32 3
  %758 = load i64, i64* %757, align 16
  %759 = and i64 %758, 255
  %760 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %759
  %761 = load i8, i8* %760, align 1
  %762 = zext i8 %761 to i32
  %763 = icmp eq i64 %759, 0
  %764 = zext i1 %763 to i32
  %765 = shl nuw nsw i32 %764, 6
  %766 = trunc i64 %758 to i32
  %767 = and i32 %766, 128
  %768 = xor i64 %758, %753
  %769 = shl i64 %768, 4
  %770 = trunc i64 %769 to i32
  %771 = and i32 %770, 2048
  %772 = or i32 %756, %762
  %773 = or i32 %772, %767
  %774 = or i32 %773, %765
  %775 = or i32 %774, %771
  br label %1196

; <label>:776:                                    ; preds = %1
  %777 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %778 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %777, i64 0, i32 2
  %779 = load i64, i64* %778, align 8
  %780 = lshr i64 %779, 15
  %781 = trunc i64 %780 to i32
  %782 = and i32 %781, 1
  %783 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %777, i64 0, i32 3
  %784 = load i64, i64* %783, align 16
  %785 = and i64 %784, 255
  %786 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %785
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  %789 = and i64 %784, 65535
  %790 = icmp eq i64 %789, 0
  %791 = zext i1 %790 to i32
  %792 = shl nuw nsw i32 %791, 6
  %793 = lshr i64 %784, 8
  %794 = trunc i64 %793 to i32
  %795 = and i32 %794, 128
  %796 = xor i64 %784, %779
  %797 = lshr i64 %796, 4
  %798 = trunc i64 %797 to i32
  %799 = and i32 %798, 2048
  %800 = or i32 %782, %788
  %801 = or i32 %800, %795
  %802 = or i32 %801, %792
  %803 = or i32 %802, %799
  br label %1196

; <label>:804:                                    ; preds = %1
  %805 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %806 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %805, i64 0, i32 2
  %807 = load i64, i64* %806, align 8
  %808 = lshr i64 %807, 31
  %809 = trunc i64 %808 to i32
  %810 = and i32 %809, 1
  %811 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %805, i64 0, i32 3
  %812 = load i64, i64* %811, align 16
  %813 = and i64 %812, 255
  %814 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %813
  %815 = load i8, i8* %814, align 1
  %816 = zext i8 %815 to i32
  %817 = trunc i64 %812 to i32
  %818 = icmp eq i32 %817, 0
  %819 = zext i1 %818 to i32
  %820 = shl nuw nsw i32 %819, 6
  %821 = lshr i64 %812, 24
  %822 = trunc i64 %821 to i32
  %823 = and i32 %822, 128
  %824 = xor i64 %812, %807
  %825 = lshr i64 %824, 20
  %826 = trunc i64 %825 to i32
  %827 = and i32 %826, 2048
  %828 = or i32 %810, %816
  %829 = or i32 %828, %823
  %830 = or i32 %829, %820
  %831 = or i32 %830, %827
  br label %1196

; <label>:832:                                    ; preds = %1
  %833 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %834 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %833, i64 0, i32 2
  %835 = load i64, i64* %834, align 8
  %836 = trunc i64 %835 to i32
  %837 = and i32 %836, 1
  %838 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %833, i64 0, i32 3
  %839 = load i64, i64* %838, align 16
  %840 = and i64 %839, 255
  %841 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %840
  %842 = load i8, i8* %841, align 1
  %843 = zext i8 %842 to i32
  %844 = icmp eq i64 %840, 0
  %845 = zext i1 %844 to i32
  %846 = shl nuw nsw i32 %845, 6
  %847 = trunc i64 %839 to i32
  %848 = and i32 %847, 128
  %849 = xor i64 %839, %835
  %850 = shl i64 %849, 4
  %851 = trunc i64 %850 to i32
  %852 = and i32 %851, 2048
  %853 = or i32 %843, %837
  %854 = or i32 %853, %848
  %855 = or i32 %854, %846
  %856 = or i32 %855, %852
  br label %1196

; <label>:857:                                    ; preds = %1
  %858 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %859 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %858, i64 0, i32 2
  %860 = load i64, i64* %859, align 8
  %861 = trunc i64 %860 to i32
  %862 = and i32 %861, 1
  %863 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %858, i64 0, i32 3
  %864 = load i64, i64* %863, align 16
  %865 = and i64 %864, 255
  %866 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %865
  %867 = load i8, i8* %866, align 1
  %868 = zext i8 %867 to i32
  %869 = and i64 %864, 65535
  %870 = icmp eq i64 %869, 0
  %871 = zext i1 %870 to i32
  %872 = shl nuw nsw i32 %871, 6
  %873 = lshr i64 %864, 8
  %874 = trunc i64 %873 to i32
  %875 = and i32 %874, 128
  %876 = xor i64 %864, %860
  %877 = lshr i64 %876, 4
  %878 = trunc i64 %877 to i32
  %879 = and i32 %878, 2048
  %880 = or i32 %868, %862
  %881 = or i32 %880, %875
  %882 = or i32 %881, %872
  %883 = or i32 %882, %879
  br label %1196

; <label>:884:                                    ; preds = %1
  %885 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %886 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %885, i64 0, i32 2
  %887 = load i64, i64* %886, align 8
  %888 = trunc i64 %887 to i32
  %889 = and i32 %888, 1
  %890 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %885, i64 0, i32 3
  %891 = load i64, i64* %890, align 16
  %892 = and i64 %891, 255
  %893 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %892
  %894 = load i8, i8* %893, align 1
  %895 = zext i8 %894 to i32
  %896 = trunc i64 %891 to i32
  %897 = icmp eq i32 %896, 0
  %898 = zext i1 %897 to i32
  %899 = shl nuw nsw i32 %898, 6
  %900 = lshr i64 %891, 24
  %901 = trunc i64 %900 to i32
  %902 = and i32 %901, 128
  %903 = xor i64 %891, %887
  %904 = lshr i64 %903, 20
  %905 = trunc i64 %904 to i32
  %906 = and i32 %905, 2048
  %907 = or i32 %895, %889
  %908 = or i32 %907, %902
  %909 = or i32 %908, %899
  %910 = or i32 %909, %906
  br label %1196

; <label>:911:                                    ; preds = %1
  %912 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %913 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %912, i64 0, i32 2
  %914 = load i64, i64* %913, align 8
  %915 = icmp ne i64 %914, 0
  %916 = zext i1 %915 to i32
  %917 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %912, i64 0, i32 3
  %918 = load i64, i64* %917, align 16
  %919 = and i64 %918, 255
  %920 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %919
  %921 = load i8, i8* %920, align 1
  %922 = zext i8 %921 to i32
  %923 = icmp eq i64 %918, 0
  %924 = zext i1 %923 to i32
  %925 = shl nuw nsw i32 %924, 6
  %926 = lshr i64 %918, 56
  %927 = trunc i64 %926 to i32
  %928 = and i32 %927, 128
  %929 = shl nuw nsw i32 %916, 11
  %930 = or i32 %922, %916
  %931 = or i32 %930, %929
  %932 = or i32 %931, %925
  %933 = or i32 %932, %928
  br label %1196

; <label>:934:                                    ; preds = %1
  %935 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %936 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %935, i64 0, i32 2
  %937 = load i64, i64* %936, align 8
  %938 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %935, i64 0, i32 3
  %939 = load i64, i64* %938, align 16
  %940 = sub i64 %939, %937
  %941 = icmp ult i64 %939, %937
  %942 = zext i1 %941 to i32
  %943 = and i64 %939, 255
  %944 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %943
  %945 = load i8, i8* %944, align 1
  %946 = zext i8 %945 to i32
  %947 = xor i64 %939, %937
  %948 = xor i64 %947, %940
  %949 = trunc i64 %948 to i32
  %950 = and i32 %949, 16
  %951 = icmp eq i64 %939, 0
  %952 = zext i1 %951 to i32
  %953 = shl nuw nsw i32 %952, 6
  %954 = lshr i64 %939, 56
  %955 = trunc i64 %954 to i32
  %956 = and i32 %955, 128
  %957 = xor i64 %937, -9223372036854775808
  %958 = xor i64 %957, %940
  %959 = and i64 %958, %947
  %960 = lshr i64 %959, 52
  %961 = trunc i64 %960 to i32
  %962 = and i32 %961, 2048
  %963 = or i32 %942, %946
  %964 = or i32 %963, %953
  %965 = or i32 %964, %956
  %966 = or i32 %965, %950
  %967 = or i32 %966, %962
  br label %1196

; <label>:968:                                    ; preds = %1
  %969 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %970 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 2
  %971 = load i64, i64* %970, align 8
  %972 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 3
  %973 = load i64, i64* %972, align 16
  %974 = sub i64 %973, %971
  %975 = add i64 %974, -1
  %976 = icmp ule i64 %973, %971
  %977 = zext i1 %976 to i32
  %978 = and i64 %973, 255
  %979 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %978
  %980 = load i8, i8* %979, align 1
  %981 = zext i8 %980 to i32
  %982 = xor i64 %973, %971
  %983 = xor i64 %975, %982
  %984 = trunc i64 %983 to i32
  %985 = and i32 %984, 16
  %986 = icmp eq i64 %973, 0
  %987 = zext i1 %986 to i32
  %988 = shl nuw nsw i32 %987, 6
  %989 = lshr i64 %973, 56
  %990 = trunc i64 %989 to i32
  %991 = and i32 %990, 128
  %992 = xor i64 %971, -9223372036854775808
  %993 = xor i64 %992, %975
  %994 = and i64 %993, %982
  %995 = lshr i64 %994, 52
  %996 = trunc i64 %995 to i32
  %997 = and i32 %996, 2048
  %998 = or i32 %977, %981
  %999 = or i32 %998, %988
  %1000 = or i32 %999, %991
  %1001 = or i32 %1000, %985
  %1002 = or i32 %1001, %997
  br label %1196

; <label>:1003:                                   ; preds = %1
  %1004 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1005 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1004, i64 0, i32 3
  %1006 = load i64, i64* %1005, align 16
  %1007 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1004, i64 0, i32 2
  %1008 = load i64, i64* %1007, align 8
  %1009 = add i64 %1008, %1006
  %1010 = icmp ult i64 %1009, %1008
  %1011 = zext i1 %1010 to i32
  %1012 = and i64 %1006, 255
  %1013 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1012
  %1014 = load i8, i8* %1013, align 1
  %1015 = zext i8 %1014 to i32
  %1016 = xor i64 %1009, %1006
  %1017 = xor i64 %1016, %1008
  %1018 = trunc i64 %1017 to i32
  %1019 = and i32 %1018, 16
  %1020 = icmp eq i64 %1006, 0
  %1021 = zext i1 %1020 to i32
  %1022 = shl nuw nsw i32 %1021, 6
  %1023 = lshr i64 %1006, 56
  %1024 = trunc i64 %1023 to i32
  %1025 = and i32 %1024, 128
  %1026 = xor i64 %1009, %1008
  %1027 = and i64 %1026, %1016
  %1028 = lshr i64 %1027, 52
  %1029 = trunc i64 %1028 to i32
  %1030 = and i32 %1029, 2048
  %1031 = or i32 %1022, %1015
  %1032 = or i32 %1031, %1025
  %1033 = or i32 %1032, %1011
  %1034 = or i32 %1033, %1019
  %1035 = or i32 %1034, %1030
  br label %1196

; <label>:1036:                                   ; preds = %1
  %1037 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1038 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1037, i64 0, i32 3
  %1039 = load i64, i64* %1038, align 16
  %1040 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1037, i64 0, i32 2
  %1041 = load i64, i64* %1040, align 8
  %1042 = add i64 %1039, 1
  %1043 = add i64 %1042, %1041
  %1044 = icmp ule i64 %1043, %1041
  %1045 = zext i1 %1044 to i32
  %1046 = and i64 %1039, 255
  %1047 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1046
  %1048 = load i8, i8* %1047, align 1
  %1049 = zext i8 %1048 to i32
  %1050 = xor i64 %1043, %1039
  %1051 = xor i64 %1050, %1041
  %1052 = trunc i64 %1051 to i32
  %1053 = and i32 %1052, 16
  %1054 = icmp eq i64 %1039, 0
  %1055 = zext i1 %1054 to i32
  %1056 = shl nuw nsw i32 %1055, 6
  %1057 = lshr i64 %1039, 56
  %1058 = trunc i64 %1057 to i32
  %1059 = and i32 %1058, 128
  %1060 = xor i64 %1043, %1041
  %1061 = and i64 %1060, %1050
  %1062 = lshr i64 %1061, 52
  %1063 = trunc i64 %1062 to i32
  %1064 = and i32 %1063, 2048
  %1065 = or i32 %1056, %1049
  %1066 = or i32 %1065, %1059
  %1067 = or i32 %1066, %1045
  %1068 = or i32 %1067, %1053
  %1069 = or i32 %1068, %1064
  br label %1196

; <label>:1070:                                   ; preds = %1
  %1071 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1072 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1071, i64 0, i32 3
  %1073 = load i64, i64* %1072, align 16
  %1074 = and i64 %1073, 255
  %1075 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1074
  %1076 = load i8, i8* %1075, align 1
  %1077 = zext i8 %1076 to i32
  %1078 = icmp eq i64 %1073, 0
  %1079 = zext i1 %1078 to i32
  %1080 = shl nuw nsw i32 %1079, 6
  %1081 = lshr i64 %1073, 56
  %1082 = trunc i64 %1081 to i32
  %1083 = and i32 %1082, 128
  %1084 = or i32 %1080, %1077
  %1085 = or i32 %1084, %1083
  br label %1196

; <label>:1086:                                   ; preds = %1
  %1087 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1088 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1087, i64 0, i32 3
  %1089 = load i64, i64* %1088, align 16
  %1090 = add i64 %1089, 31
  %1091 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1087, i64 0, i32 2
  %1092 = load i64, i64* %1091, align 8
  %1093 = trunc i64 %1092 to i32
  %1094 = and i64 %1089, 255
  %1095 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1094
  %1096 = load i8, i8* %1095, align 1
  %1097 = zext i8 %1096 to i32
  %1098 = xor i64 %1090, %1089
  %1099 = trunc i64 %1098 to i32
  %1100 = and i32 %1099, 16
  %1101 = icmp eq i64 %1089, 0
  %1102 = zext i1 %1101 to i32
  %1103 = shl nuw nsw i32 %1102, 6
  %1104 = lshr i64 %1089, 56
  %1105 = trunc i64 %1104 to i32
  %1106 = and i32 %1105, 128
  %1107 = icmp eq i64 %1089, -9223372036854775808
  %1108 = zext i1 %1107 to i32
  %1109 = shl nuw nsw i32 %1108, 11
  %1110 = or i32 %1097, %1093
  %1111 = or i32 %1110, %1103
  %1112 = or i32 %1111, %1106
  %1113 = or i32 %1112, %1109
  %1114 = or i32 %1113, %1100
  br label %1196

; <label>:1115:                                   ; preds = %1
  %1116 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1117 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1116, i64 0, i32 3
  %1118 = load i64, i64* %1117, align 16
  %1119 = add i64 %1118, 1
  %1120 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1116, i64 0, i32 2
  %1121 = load i64, i64* %1120, align 8
  %1122 = trunc i64 %1121 to i32
  %1123 = and i64 %1118, 255
  %1124 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1123
  %1125 = load i8, i8* %1124, align 1
  %1126 = zext i8 %1125 to i32
  %1127 = xor i64 %1119, %1118
  %1128 = trunc i64 %1127 to i32
  %1129 = and i32 %1128, 16
  %1130 = icmp eq i64 %1118, 0
  %1131 = zext i1 %1130 to i32
  %1132 = shl nuw nsw i32 %1131, 6
  %1133 = lshr i64 %1118, 56
  %1134 = trunc i64 %1133 to i32
  %1135 = and i32 %1134, 128
  %1136 = icmp eq i64 %1118, 9223372036854775807
  %1137 = zext i1 %1136 to i32
  %1138 = shl nuw nsw i32 %1137, 11
  %1139 = or i32 %1126, %1122
  %1140 = or i32 %1139, %1132
  %1141 = or i32 %1140, %1135
  %1142 = or i32 %1141, %1138
  %1143 = or i32 %1142, %1129
  br label %1196

; <label>:1144:                                   ; preds = %1
  %1145 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1146 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1145, i64 0, i32 2
  %1147 = load i64, i64* %1146, align 8
  %1148 = lshr i64 %1147, 63
  %1149 = trunc i64 %1148 to i32
  %1150 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1145, i64 0, i32 3
  %1151 = load i64, i64* %1150, align 16
  %1152 = and i64 %1151, 255
  %1153 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1152
  %1154 = load i8, i8* %1153, align 1
  %1155 = zext i8 %1154 to i32
  %1156 = icmp eq i64 %1151, 0
  %1157 = zext i1 %1156 to i32
  %1158 = shl nuw nsw i32 %1157, 6
  %1159 = lshr i64 %1151, 56
  %1160 = trunc i64 %1159 to i32
  %1161 = and i32 %1160, 128
  %1162 = xor i64 %1151, %1147
  %1163 = lshr i64 %1162, 52
  %1164 = trunc i64 %1163 to i32
  %1165 = and i32 %1164, 2048
  %1166 = or i32 %1155, %1149
  %1167 = or i32 %1166, %1158
  %1168 = or i32 %1167, %1161
  %1169 = or i32 %1168, %1165
  br label %1196

; <label>:1170:                                   ; preds = %1
  %1171 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1172 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1171, i64 0, i32 2
  %1173 = load i64, i64* %1172, align 8
  %1174 = trunc i64 %1173 to i32
  %1175 = and i32 %1174, 1
  %1176 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1171, i64 0, i32 3
  %1177 = load i64, i64* %1176, align 16
  %1178 = and i64 %1177, 255
  %1179 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %1178
  %1180 = load i8, i8* %1179, align 1
  %1181 = zext i8 %1180 to i32
  %1182 = icmp eq i64 %1177, 0
  %1183 = zext i1 %1182 to i32
  %1184 = shl nuw nsw i32 %1183, 6
  %1185 = lshr i64 %1177, 56
  %1186 = trunc i64 %1185 to i32
  %1187 = and i32 %1186, 128
  %1188 = xor i64 %1177, %1173
  %1189 = lshr i64 %1188, 52
  %1190 = trunc i64 %1189 to i32
  %1191 = and i32 %1190, 2048
  %1192 = or i32 %1181, %1175
  %1193 = or i32 %1192, %1184
  %1194 = or i32 %1193, %1187
  %1195 = or i32 %1194, %1191
  br label %1196

; <label>:1196:                                   ; preds = %1, %1170, %1144, %1115, %1086, %1070, %1036, %1003, %968, %934, %911, %884, %857, %832, %804, %776, %750, %719, %689, %661, %630, %600, %572, %555, %538, %523, %486, %447, %410, %374, %336, %30
  %1197 = phi i32 [ %1195, %1170 ], [ %1169, %1144 ], [ %1143, %1115 ], [ %1114, %1086 ], [ %1085, %1070 ], [ %1069, %1036 ], [ %1035, %1003 ], [ %1002, %968 ], [ %967, %934 ], [ %933, %911 ], [ %910, %884 ], [ %883, %857 ], [ %856, %832 ], [ %831, %804 
  ret i32 %1197
}

; Function Attrs: norecurse nounwind uwtable
define void @cpu_set_eflags(%struct.CPUX86State* nocapture, i64) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 1
  store i64 1, i64* %3, align 16
  %4 = and i64 %1, 2261
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 2
  store i64 %4, i64* %5, align 8
  %6 = trunc i64 %1 to i32
  %7 = lshr i32 %6, 9
  %8 = and i32 %7, 2
  %9 = xor i32 %8, 2
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = and i64 %1, -3286
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 7
  store i64 %12, i64* %13, align 4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_write_eflags(i64, i32) local_unnamed_addr #1 {
  %3 = trunc i64 %0 to i32
  %4 = and i64 %0, 2261
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 2
  store i64 %4, i64* %6, align 8
  %7 = lshr i32 %3, 9
  %8 = and i32 %7, 2
  %9 = xor i32 %8, 2
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 7
  %13 = load i64, i64* %12, align 4
  %14 = xor i32 %1, -1
  %15 = sext i32 %14 to i64
  %16 = and i64 %13, %15
  %17 = and i32 %3, -3286
  %18 = and i32 %17, %1
  %19 = sext i32 %18 to i64
  %20 = or i64 %16, %19
  store i64 %20, i64* %12, align 4
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @helper_read_eflags() local_unnamed_addr #0 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %3 = load i64, i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @helper_cc_compute_all(i32 %4)
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 1024
  %9 = or i32 %8, %5
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 7
  %11 = load i64, i64* %10, align 4
  %12 = and i64 %11, 4294770687
  %13 = zext i32 %9 to i64
  %14 = or i64 %13, %12
  ret i64 %14
}

; Function Attrs: uwtable
define void @helper_check_iob(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 3
  %4 = load i32, i32* %3, align 16
  %5 = trunc i32 %4 to i16
  %6 = icmp slt i16 %5, 0
  %7 = and i32 %4, 3840
  %8 = icmp eq i32 %7, 2304
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %36

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %12, 103
  br i1 %13, label %36, label %14

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 1
  %16 = load i64, i64* %15, align 4
  %17 = add i64 %16, 102
  %18 = tail call fastcc i32 @lduw_kernel(i64 %17)
  %19 = ashr i32 %0, 3
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 13, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %36, label %26

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 13, i32 1
  %28 = load i64, i64* %27, align 4
  %29 = sext i32 %20 to i64
  %30 = add i64 %28, %29
  %31 = tail call fastcc i32 @lduw_kernel(i64 %30)
  %32 = and i32 %0, 7
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %26, %14, %10, %1
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:37:                                     ; preds = %26
  ret void
}

; Function Attrs: uwtable
define internal fastcc i32 @lduw_kernel(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %13, -4095
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %25, label %22, !prof !2

; <label>:22:                                     ; preds = %12
  %23 = tail call zeroext i16 @__ldw_mmu(i64 %13, i32 0)
  %24 = zext i16 %23 to i32
  br label %37

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %13
  %29 = inttoptr i64 %28 to i16*
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %25
  %36 = zext i16 %30 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %36, i32 4, i32 0, i64 0)
  br label %37

; <label>:37:                                     ; preds = %25, %35, %22
  %38 = phi i32 [ %24, %22 ], [ %31, %35 ], [ %31, %25 ]
  ret i32 %38
}

; Function Attrs: noreturn uwtable
define internal fastcc void @raise_exception_err(i32, i32) unnamed_addr #3 {
  tail call fastcc void @raise_interrupt(i32 %0, i32 0, i32 %1, i32 0) #13
  unreachable
}

; Function Attrs: noreturn uwtable
define internal fastcc void @raise_interrupt(i32, i32, i32, i32) unnamed_addr #3 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %62

; <label>:6:                                      ; preds = %4
  %7 = add nsw i32 %0, 64
  %8 = sext i32 %2 to i64
  tail call void @helper_svm_check_intercept_param(i32 %7, i64 %8)
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 75
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = add i32 %11, -10
  %14 = icmp ult i32 %13, 4
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %0, 0
  %17 = add i32 %0, -10
  %18 = icmp ult i32 %17, 4
  %19 = or i1 %16, %18
  %20 = load i32, i32* @loglevel, align 4
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

; <label>:23:                                     ; preds = %6
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %11, i32 %0)
  %26 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %26, i64 0, i32 75
  %28 = load i32, i32* %27, align 4
  br label %29

; <label>:29:                                     ; preds = %23, %6
  %30 = phi i32 [ %11, %6 ], [ %28, %23 ]
  %31 = phi %struct.CPUX86State* [ %9, %6 ], [ %26, %23 ]
  %32 = icmp eq i32 %30, 8
  br i1 %32, label %33, label %48

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %31, i64 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %33
  tail call void @helper_vmexit(i32 127, i64 0)
  unreachable

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* @loglevel, align 4
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %39
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %45 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %44)
  br label %46

; <label>:46:                                     ; preds = %43, %39
  tail call void @libcpu_system_reset_request()
  %47 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %74

; <label>:48:                                     ; preds = %29
  %49 = and i1 %19, %15
  br i1 %49, label %55, label %50

; <label>:50:                                     ; preds = %48
  %51 = icmp eq i32 %30, 14
  %52 = icmp eq i32 %0, 14
  %53 = or i1 %52, %19
  %54 = and i1 %53, %51
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50, %48
  br label %56

; <label>:56:                                     ; preds = %55, %50
  %57 = phi i32 [ 0, %55 ], [ %2, %50 ]
  %58 = phi i32 [ 8, %55 ], [ %0, %50 ]
  switch i32 %0, label %59 [
    i32 13, label %60
    i32 12, label %60
    i32 11, label %60
    i32 10, label %60
    i32 0, label %60
  ]

; <label>:59:                                     ; preds = %56
  switch i32 %58, label %74 [
    i32 14, label %60
    i32 8, label %60
  ]

; <label>:60:                                     ; preds = %59, %59, %56, %56, %56, %56, %56
  %61 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %31, i64 0, i32 75
  store i32 %58, i32* %61, align 4
  br label %74

; <label>:62:                                     ; preds = %4
  %63 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %63, i64 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 2097152
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68, !prof !2

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %63, i64 0, i32 48
  %70 = load i64, i64* %69, align 16
  %71 = and i64 %70, 2097152
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %74, label %73

; <label>:73:                                     ; preds = %68
  tail call void @helper_vmexit(i32 117, i64 0)
  unreachable

; <label>:74:                                     ; preds = %68, %62, %60, %59, %46
  %75 = phi %struct.CPUX86State* [ %47, %46 ], [ %31, %59 ], [ %31, %60 ], [ %63, %62 ], [ %63, %68 ]
  %76 = phi i32 [ %2, %46 ], [ %57, %59 ], [ %57, %60 ], [ %2, %62 ], [ %2, %68 ]
  %77 = phi i32 [ 65537, %46 ], [ %58, %59 ], [ %58, %60 ], [ %0, %62 ], [ %0, %68 ]
  %78 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 106
  store i32 %77, i32* %78, align 16
  %79 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 69
  store i32 %76, i32* %79, align 8
  %80 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 70
  store i32 %1, i32* %80, align 4
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 5
  %82 = load i64, i64* %81, align 16
  %83 = sext i32 %3 to i64
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 71
  store i64 %84, i64* %85, align 16
  tail call void @cpu_loop_exit(%struct.CPUX86State* %75) #13
  unreachable
}

; Function Attrs: uwtable
define void @helper_svm_check_intercept_param(i32, i64) local_unnamed_addr #2 {
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %107, label %8, !prof !2

; <label>:8:                                      ; preds = %2
  switch i32 %0, label %98 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 8, label %9
    i32 16, label %17
    i32 17, label %17
    i32 18, label %17
    i32 19, label %17
    i32 20, label %17
    i32 21, label %17
    i32 22, label %17
    i32 23, label %17
    i32 24, label %17
    i32 32, label %26
    i32 33, label %26
    i32 34, label %26
    i32 35, label %26
    i32 36, label %26
    i32 37, label %26
    i32 38, label %26
    i32 39, label %26
    i32 48, label %35
    i32 49, label %35
    i32 50, label %35
    i32 51, label %35
    i32 52, label %35
    i32 53, label %35
    i32 54, label %35
    i32 55, label %35
    i32 64, label %44
    i32 65, label %44
    i32 66, label %44
    i32 67, label %44
    i32 68, label %44
    i32 69, label %44
    i32 70, label %44
    i32 71, label %44
    i32 72, label %44
    i32 73, label %44
    i32 74, label %44
    i32 75, label %44
    i32 76, label %44
    i32 77, label %44
    i32 78, label %44
    i32 79, label %44
    i32 80, label %44
    i32 81, label %44
    i32 82, label %44
    i32 83, label %44
    i32 84, label %44
    i32 85, label %44
    i32 86, label %44
    i32 87, label %44
    i32 88, label %44
    i32 89, label %44
    i32 90, label %44
    i32 91, label %44
    i32 92, label %44
    i32 93, label %44
    i32 94, label %44
    i32 95, label %44
    i32 124, label %52
  ]

; <label>:9:                                      ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 49
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = shl i32 1, %0
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %107, label %16

; <label>:16:                                     ; preds = %9
  tail call void @helper_vmexit(i32 %0, i64 %1)
  unreachable

; <label>:17:                                     ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 50
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = add i32 %0, -16
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %107, label %25

; <label>:25:                                     ; preds = %17
  tail call void @helper_vmexit(i32 %0, i64 %1)
  unreachable

; <label>:26:                                     ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 51
  %28 = load i16, i16* %27, align 4
  %29 = zext i16 %28 to i32
  %30 = add i32 %0, -32
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %107, label %34

; <label>:34:                                     ; preds = %26
  tail call void @helper_vmexit(i32 %0, i64 %1)
  unreachable

; <label>:35:                                     ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 52
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = add i32 %0, -48
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %107, label %43

; <label>:43:                                     ; preds = %35
  tail call void @helper_vmexit(i32 %0, i64 %1)
  unreachable

; <label>:44:                                     ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 53
  %46 = load i32, i32* %45, align 16
  %47 = add i32 %0, -64
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %107, label %51

; <label>:51:                                     ; preds = %44
  tail call void @helper_vmexit(i32 %0, i64 %1)
  unreachable

; <label>:52:                                     ; preds = %8
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 48
  %54 = load i64, i64* %53, align 16
  %55 = and i64 %54, 268435456
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %107, label %57

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 46
  %59 = load i64, i64* %58, align 16
  %60 = add i64 %59, 72
  %61 = tail call i64 @ldq_phys(i64 %60)
  %62 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %62, i64 0, i32 0, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, -8192
  switch i32 %66, label %72 [
    i32 -1073676288, label %79
    i32 -1073741824, label %74
  ]

; <label>:67:                                     ; preds = %72
  %68 = shl i64 %64, 1
  %69 = trunc i64 %68 to i32
  %70 = lshr i64 %64, 2
  %71 = trunc i64 %70 to i32
  br label %85

; <label>:72:                                     ; preds = %57
  %73 = icmp ult i32 %65, 8192
  br i1 %73, label %67, label %84

; <label>:74:                                     ; preds = %57
  %75 = shl i64 %64, 1
  %76 = add i64 %75, 2147500032
  %77 = trunc i64 %76 to i32
  %78 = lshr i32 %77, 3
  br label %85

; <label>:79:                                     ; preds = %57
  %80 = shl i64 %64, 1
  %81 = add i64 %80, 2147385344
  %82 = trunc i64 %81 to i32
  %83 = lshr i32 %82, 3
  br label %85

; <label>:84:                                     ; preds = %72
  tail call void @helper_vmexit(i32 124, i64 %1)
  unreachable

; <label>:85:                                     ; preds = %79, %74, %67
  %86 = phi i32 [ %82, %79 ], [ %77, %74 ], [ %69, %67 ]
  %87 = phi i32 [ %83, %79 ], [ %78, %74 ], [ %71, %67 ]
  %88 = and i32 %86, 6
  %89 = zext i32 %87 to i64
  %90 = add i64 %89, %61
  %91 = tail call i32 @ldub_phys(i64 %90)
  %92 = trunc i64 %1 to i32
  %93 = shl i32 1, %92
  %94 = shl i32 %93, %88
  %95 = and i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

; <label>:97:                                     ; preds = %85
  tail call void @helper_vmexit(i32 124, i64 %1)
  unreachable

; <label>:98:                                     ; preds = %8
  %99 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 48
  %100 = load i64, i64* %99, align 16
  %101 = add i32 %0, -96
  %102 = zext i32 %101 to i64
  %103 = shl i64 1, %102
  %104 = and i64 %100, %103
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %107, label %106

; <label>:106:                                    ; preds = %98
  tail call void @helper_vmexit(i32 %0, i64 %1)
  unreachable

; <label>:107:                                    ; preds = %85, %98, %9, %17, %26, %35, %44, %52, %2
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: noreturn uwtable
define void @helper_vmexit(i32, i64) local_unnamed_addr #3 {
  %3 = load i32, i32* @loglevel, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 46
  %10 = load i64, i64* %9, align 16
  %11 = add i64 %10, 128
  %12 = tail call i64 @ldq_phys(i64 %11)
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 5
  %15 = load i64, i64* %14, align 16
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %0, i64 %1, i64 %12, i64 %15)
  br label %17

; <label>:17:                                     ; preds = %2, %6
  %18 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %19 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = and i32 %20, 8
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 46
  %25 = load i64, i64* %24, align 16
  %26 = add i64 %25, 104
  br i1 %23, label %32, label %27

; <label>:27:                                     ; preds = %17
  tail call void @stl_phys(i64 %26, i32 1)
  %28 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -9
  store i32 %31, i32* %29, align 4
  br label %34

; <label>:32:                                     ; preds = %17
  tail call void @stl_phys(i64 %26, i32 0)
  %33 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %34

; <label>:34:                                     ; preds = %32, %27
  %35 = phi %struct.CPUX86State* [ %33, %32 ], [ %28, %27 ]
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 46
  %37 = load i64, i64* %36, align 16
  %38 = add i64 %37, 1024
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 0, i32 0
  %40 = load i32, i32* %39, align 4
  tail call void @stw_phys(i64 %38, i32 %40)
  %41 = add i64 %37, 1032
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 0, i32 1
  %43 = load i64, i64* %42, align 4
  tail call void @stq_phys(i64 %41, i64 %43)
  %44 = add i64 %37, 1028
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 0, i32 2
  %46 = load i32, i32* %45, align 4
  tail call void @stl_phys(i64 %44, i32 %46)
  %47 = add i64 %37, 1026
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = lshr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = lshr i32 %49, 12
  %53 = and i32 %52, 3840
  %54 = or i32 %51, %53
  tail call void @stw_phys(i64 %47, i32 %54)
  %55 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %56 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %55, i64 0, i32 46
  %57 = load i64, i64* %56, align 16
  %58 = add i64 %57, 1040
  %59 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %55, i64 0, i32 11, i64 1, i32 0
  %60 = load i32, i32* %59, align 4
  tail call void @stw_phys(i64 %58, i32 %60)
  %61 = add i64 %57, 1048
  %62 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %55, i64 0, i32 11, i64 1, i32 1
  %63 = load i64, i64* %62, align 4
  tail call void @stq_phys(i64 %61, i64 %63)
  %64 = add i64 %57, 1044
  %65 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %55, i64 0, i32 11, i64 1, i32 2
  %66 = load i32, i32* %65, align 4
  tail call void @stl_phys(i64 %64, i32 %66)
  %67 = add i64 %57, 1042
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %55, i64 0, i32 11, i64 1, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = lshr i32 %69, 12
  %73 = and i32 %72, 3840
  %74 = or i32 %71, %73
  tail call void @stw_phys(i64 %67, i32 %74)
  %75 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %76 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 46
  %77 = load i64, i64* %76, align 16
  %78 = add i64 %77, 1056
  %79 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 11, i64 2, i32 0
  %80 = load i32, i32* %79, align 4
  tail call void @stw_phys(i64 %78, i32 %80)
  %81 = add i64 %77, 1064
  %82 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 11, i64 2, i32 1
  %83 = load i64, i64* %82, align 4
  tail call void @stq_phys(i64 %81, i64 %83)
  %84 = add i64 %77, 1060
  %85 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 11, i64 2, i32 2
  %86 = load i32, i32* %85, align 4
  tail call void @stl_phys(i64 %84, i32 %86)
  %87 = add i64 %77, 1058
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %75, i64 0, i32 11, i64 2, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = lshr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = lshr i32 %89, 12
  %93 = and i32 %92, 3840
  %94 = or i32 %91, %93
  tail call void @stw_phys(i64 %87, i32 %94)
  %95 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 46
  %97 = load i64, i64* %96, align 16
  %98 = add i64 %97, 1072
  %99 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 11, i64 3, i32 0
  %100 = load i32, i32* %99, align 4
  tail call void @stw_phys(i64 %98, i32 %100)
  %101 = add i64 %97, 1080
  %102 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 11, i64 3, i32 1
  %103 = load i64, i64* %102, align 4
  tail call void @stq_phys(i64 %101, i64 %103)
  %104 = add i64 %97, 1076
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 11, i64 3, i32 2
  %106 = load i32, i32* %105, align 4
  tail call void @stl_phys(i64 %104, i32 %106)
  %107 = add i64 %97, 1074
  %108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 11, i64 3, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = lshr i32 %109, 8
  %111 = and i32 %110, 255
  %112 = lshr i32 %109, 12
  %113 = and i32 %112, 3840
  %114 = or i32 %111, %113
  tail call void @stw_phys(i64 %107, i32 %114)
  %115 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %116 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 46
  %117 = load i64, i64* %116, align 16
  %118 = add i64 %117, 1128
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 14, i32 1
  %120 = load i64, i64* %119, align 4
  tail call void @stq_phys(i64 %118, i64 %120)
  %121 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %122 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %121, i64 0, i32 46
  %123 = load i64, i64* %122, align 16
  %124 = add i64 %123, 1124
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %121, i64 0, i32 14, i32 2
  %126 = load i32, i32* %125, align 4
  tail call void @stl_phys(i64 %124, i32 %126)
  %127 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %128 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %127, i64 0, i32 46
  %129 = load i64, i64* %128, align 16
  %130 = add i64 %129, 1160
  %131 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %127, i64 0, i32 15, i32 1
  %132 = load i64, i64* %131, align 4
  tail call void @stq_phys(i64 %130, i64 %132)
  %133 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %134 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %133, i64 0, i32 46
  %135 = load i64, i64* %134, align 16
  %136 = add i64 %135, 1156
  %137 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %133, i64 0, i32 15, i32 2
  %138 = load i32, i32* %137, align 4
  tail call void @stl_phys(i64 %136, i32 %138)
  %139 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %140 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %139, i64 0, i32 46
  %141 = load i64, i64* %140, align 16
  %142 = add i64 %141, 1232
  %143 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %139, i64 0, i32 43
  %144 = load i64, i64* %143, align 8
  tail call void @stq_phys(i64 %142, i64 %144)
  %145 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %146 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %145, i64 0, i32 46
  %147 = load i64, i64* %146, align 16
  %148 = add i64 %147, 1368
  %149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %145, i64 0, i32 16, i64 0
  %150 = load i64, i64* %149, align 4
  tail call void @stq_phys(i64 %148, i64 %150)
  %151 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %152 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 46
  %153 = load i64, i64* %152, align 16
  %154 = add i64 %153, 1600
  %155 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 16, i64 2
  %156 = load i64, i64* %155, align 4
  tail call void @stq_phys(i64 %154, i64 %156)
  %157 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %158 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %157, i64 0, i32 46
  %159 = load i64, i64* %158, align 16
  %160 = add i64 %159, 1360
  %161 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %157, i64 0, i32 16, i64 3
  %162 = load i64, i64* %161, align 4
  tail call void @stq_phys(i64 %160, i64 %162)
  %163 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %164 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %163, i64 0, i32 46
  %165 = load i64, i64* %164, align 16
  %166 = add i64 %165, 1352
  %167 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %163, i64 0, i32 16, i64 4
  %168 = load i64, i64* %167, align 4
  tail call void @stq_phys(i64 %166, i64 %168)
  %169 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %170 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %169, i64 0, i32 46
  %171 = load i64, i64* %170, align 16
  %172 = add i64 %171, 96
  %173 = tail call i32 @ldl_phys(i64 %172)
  %174 = and i32 %173, -272
  %175 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %176 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 54
  %177 = load i8, i8* %176, align 4
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 15
  %180 = or i32 %179, %174
  %181 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 86
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 256
  %184 = or i32 %180, %183
  %185 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 46
  %186 = load i64, i64* %185, align 16
  %187 = add i64 %186, 96
  tail call void @stl_phys(i64 %187, i32 %184)
  %188 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 46
  %190 = load i64, i64* %189, align 16
  %191 = add i64 %190, 1392
  %192 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 7
  %193 = load i64, i64* %192, align 4
  %194 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 1
  %195 = load i64, i64* %194, align 16
  %196 = trunc i64 %195 to i32
  %197 = tail call i32 @helper_cc_compute_all(i32 %196) #5
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 1024
  %202 = zext i32 %201 to i64
  %203 = or i64 %198, %193
  %204 = and i64 %203, 4294967293
  %205 = or i64 %202, %204
  %206 = or i64 %205, 2
  tail call void @stq_phys(i64 %191, i64 %206)
  %207 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %208 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %207, i64 0, i32 46
  %209 = load i64, i64* %208, align 16
  %210 = add i64 %209, 1400
  %211 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %207, i64 0, i32 5
  %212 = load i64, i64* %211, align 16
  tail call void @stq_phys(i64 %210, i64 %212)
  %213 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %214 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 46
  %215 = load i64, i64* %214, align 16
  %216 = add i64 %215, 1496
  %217 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 0, i64 4
  %218 = load i64, i64* %217, align 16
  tail call void @stq_phys(i64 %216, i64 %218)
  %219 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %220 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 46
  %221 = load i64, i64* %220, align 16
  %222 = add i64 %221, 1528
  %223 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 0, i64 0
  %224 = load i64, i64* %223, align 16
  tail call void @stq_phys(i64 %222, i64 %224)
  %225 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %226 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %225, i64 0, i32 46
  %227 = load i64, i64* %226, align 16
  %228 = add i64 %227, 1376
  %229 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %225, i64 0, i32 72, i64 7
  %230 = load i64, i64* %229, align 8
  tail call void @stq_phys(i64 %228, i64 %230)
  %231 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %232 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %231, i64 0, i32 46
  %233 = load i64, i64* %232, align 16
  %234 = add i64 %233, 1384
  %235 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %231, i64 0, i32 72, i64 6
  %236 = load i64, i64* %235, align 8
  tail call void @stq_phys(i64 %234, i64 %236)
  %237 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %238 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %237, i64 0, i32 46
  %239 = load i64, i64* %238, align 16
  %240 = add i64 %239, 1227
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %237, i64 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 3
  tail call void @stb_phys(i64 %240, i32 %243)
  %244 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %245 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %244, i64 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, -11
  store i32 %247, i32* %245, align 8
  %248 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %244, i64 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, -2097153
  store i32 %250, i32* %248, align 4
  %251 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %244, i64 0, i32 53
  store i32 0, i32* %251, align 16
  %252 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %244, i64 0, i32 86
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, -257
  store i32 %254, i32* %252, align 4
  %255 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %244, i64 0, i32 47
  %256 = bitcast i64* %255 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %256, align 8
  %257 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %244, i64 0, i32 45
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %258, 1128
  %260 = tail call i64 @ldq_phys(i64 %259)
  %261 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %262 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %261, i64 0, i32 14, i32 1
  store i64 %260, i64* %262, align 4
  %263 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %261, i64 0, i32 45
  %264 = load i64, i64* %263, align 8
  %265 = add i64 %264, 1124
  %266 = tail call i32 @ldl_phys(i64 %265)
  %267 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %268 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %267, i64 0, i32 14, i32 2
  store i32 %266, i32* %268, align 4
  %269 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %267, i64 0, i32 45
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %270, 1160
  %272 = tail call i64 @ldq_phys(i64 %271)
  %273 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %274 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %273, i64 0, i32 15, i32 1
  store i64 %272, i64* %274, align 4
  %275 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %273, i64 0, i32 45
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, 1156
  %278 = tail call i32 @ldl_phys(i64 %277)
  %279 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %280 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %279, i64 0, i32 15, i32 2
  store i32 %278, i32* %280, align 4
  %281 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %279, i64 0, i32 45
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1368
  %284 = tail call i64 @ldq_phys(i64 %283)
  %285 = or i64 %284, 1
  %286 = trunc i64 %285 to i32
  tail call void @cpu_x86_update_cr0(%struct.CPUX86State* %279, i32 %286)
  %287 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %288 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %287, i64 0, i32 45
  %289 = load i64, i64* %288, align 8
  %290 = add i64 %289, 1352
  %291 = tail call i64 @ldq_phys(i64 %290)
  %292 = trunc i64 %291 to i32
  tail call void @cpu_x86_update_cr4(%struct.CPUX86State* %287, i32 %292)
  %293 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %294 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %293, i64 0, i32 45
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 1360
  %297 = tail call i64 @ldq_phys(i64 %296)
  tail call void @cpu_x86_update_cr3(%struct.CPUX86State* %293, i64 %297)
  %298 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %299 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %298, i64 0, i32 45
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, 1232
  %302 = tail call i64 @ldq_phys(i64 %301)
  %303 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %298, i64 0, i32 43
  store i64 %302, i64* %303, align 8
  %304 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %298, i64 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, -1064961
  %307 = trunc i64 %302 to i32
  %308 = shl i32 %307, 4
  %309 = and i32 %308, 16384
  %310 = or i32 %306, %309
  %311 = shl i32 %307, 8
  %312 = and i32 %311, 1048576
  %313 = or i32 %310, %312
  store i32 %313, i32* %304, align 4
  %314 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %315 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %314, i64 0, i32 7
  store i64 0, i64* %315, align 4
  %316 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %314, i64 0, i32 45
  %317 = load i64, i64* %316, align 8
  %318 = add i64 %317, 1392
  %319 = tail call i64 @ldq_phys(i64 %318)
  %320 = trunc i64 %319 to i32
  %321 = and i64 %319, 2261
  %322 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %323 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 2
  store i64 %321, i64* %323, align 8
  %324 = lshr i32 %320, 9
  %325 = and i32 %324, 2
  %326 = xor i32 %325, 2
  %327 = add nsw i32 %326, -1
  %328 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 6
  store i32 %327, i32* %328, align 8
  %329 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 7
  %330 = load i64, i64* %329, align 4
  %331 = and i64 %330, 3285
  %332 = shl i64 %319, 32
  %333 = ashr exact i64 %332, 32
  %334 = and i64 %333, -3286
  %335 = or i64 %331, %334
  store i64 %335, i64* %329, align 4
  %336 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 1
  store i64 1, i64* %336, align 16
  %337 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 45
  %338 = load i64, i64* %337, align 8
  %339 = add i64 %338, 1024
  %340 = tail call i32 @lduw_phys(i64 %339)
  %341 = add i64 %338, 1032
  %342 = tail call i64 @ldq_phys(i64 %341)
  %343 = add i64 %338, 1028
  %344 = tail call i32 @ldl_phys(i64 %343)
  %345 = add i64 %338, 1026
  %346 = tail call i32 @lduw_phys(i64 %345)
  %347 = shl i32 %346, 8
  %348 = and i32 %347, 65280
  %349 = shl i32 %346, 12
  %350 = and i32 %349, 15728640
  %351 = or i32 %348, %350
  %352 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 0, i32 0
  store i32 %340, i32* %352, align 4
  %353 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 0, i32 1
  store i64 %342, i64* %353, align 4
  %354 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 0, i32 2
  store i32 %344, i32* %354, align 4
  %355 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 0, i32 3
  store i32 %351, i32* %355, align 4
  %356 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 8
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 2, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = lshr i32 %359, 17
  %361 = and i32 %360, 32
  %362 = trunc i32 %357 to i16
  %363 = icmp slt i16 %362, 0
  br i1 %363, label %389, label %364

; <label>:364:                                    ; preds = %34
  %365 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 16, i64 0
  %366 = load i64, i64* %365, align 4
  %367 = and i64 %366, 1
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %376, label %369

; <label>:369:                                    ; preds = %364
  %370 = load i64, i64* %329, align 4
  %371 = and i64 %370, 131072
  %372 = icmp ne i64 %371, 0
  %373 = and i32 %357, 16
  %374 = icmp eq i32 %373, 0
  %375 = or i1 %374, %372
  br i1 %375, label %376, label %378

; <label>:376:                                    ; preds = %369, %364
  %377 = or i32 %361, 64
  br label %389

; <label>:378:                                    ; preds = %369
  %379 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 3, i32 1
  %380 = load i64, i64* %379, align 4
  %381 = or i64 %342, %380
  %382 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %322, i64 0, i32 11, i64 2, i32 1
  %383 = load i64, i64* %382, align 4
  %384 = or i64 %381, %383
  %385 = icmp ne i64 %384, 0
  %386 = zext i1 %385 to i32
  %387 = shl nuw nsw i32 %386, 6
  %388 = or i32 %387, %361
  br label %389

; <label>:389:                                    ; preds = %34, %376, %378
  %390 = phi i32 [ %361, %34 ], [ %377, %376 ], [ %388, %378 ]
  %391 = and i32 %357, -97
  %392 = or i32 %390, %391
  store i32 %392, i32* %356, align 4
  %393 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %394 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 45
  %395 = load i64, i64* %394, align 8
  %396 = add i64 %395, 1040
  %397 = tail call i32 @lduw_phys(i64 %396)
  %398 = add i64 %395, 1048
  %399 = tail call i64 @ldq_phys(i64 %398)
  %400 = add i64 %395, 1044
  %401 = tail call i32 @ldl_phys(i64 %400)
  %402 = add i64 %395, 1042
  %403 = tail call i32 @lduw_phys(i64 %402)
  %404 = shl i32 %403, 8
  %405 = and i32 %404, 65280
  %406 = shl i32 %403, 12
  %407 = and i32 %406, 15728640
  %408 = or i32 %405, %407
  %409 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 1, i32 0
  store i32 %397, i32* %409, align 4
  %410 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 1, i32 1
  store i64 %399, i64* %410, align 4
  %411 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 1, i32 2
  store i32 %401, i32* %411, align 4
  %412 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 1, i32 3
  store i32 %408, i32* %412, align 4
  %413 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 8
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, 16384
  %416 = icmp eq i32 %415, 0
  %417 = and i32 %406, 2097152
  %418 = icmp eq i32 %417, 0
  %419 = or i1 %418, %416
  br i1 %419, label %423, label %420

; <label>:420:                                    ; preds = %389
  %421 = and i32 %414, -32881
  %422 = or i32 %421, 32816
  br label %428

; <label>:423:                                    ; preds = %389
  %424 = lshr exact i32 %407, 18
  %425 = and i32 %424, 16
  %426 = and i32 %414, -32785
  %427 = or i32 %426, %425
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = phi i32 [ %422, %420 ], [ %427, %423 ]
  store i32 %429, i32* %413, align 4
  %430 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 2, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = lshr i32 %431, 17
  %433 = and i32 %432, 32
  %434 = trunc i32 %429 to i16
  %435 = icmp slt i16 %434, 0
  br i1 %435, label %464, label %436

; <label>:436:                                    ; preds = %428
  %437 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 16, i64 0
  %438 = load i64, i64* %437, align 4
  %439 = and i64 %438, 1
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %449, label %441

; <label>:441:                                    ; preds = %436
  %442 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 7
  %443 = load i64, i64* %442, align 4
  %444 = and i64 %443, 131072
  %445 = icmp ne i64 %444, 0
  %446 = and i32 %429, 16
  %447 = icmp eq i32 %446, 0
  %448 = or i1 %447, %445
  br i1 %448, label %449, label %451

; <label>:449:                                    ; preds = %441, %436
  %450 = or i32 %433, 64
  br label %464

; <label>:451:                                    ; preds = %441
  %452 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 3, i32 1
  %453 = load i64, i64* %452, align 4
  %454 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 0, i32 1
  %455 = load i64, i64* %454, align 4
  %456 = or i64 %455, %453
  %457 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %393, i64 0, i32 11, i64 2, i32 1
  %458 = load i64, i64* %457, align 4
  %459 = or i64 %456, %458
  %460 = icmp ne i64 %459, 0
  %461 = zext i1 %460 to i32
  %462 = shl nuw nsw i32 %461, 6
  %463 = or i32 %462, %433
  br label %464

; <label>:464:                                    ; preds = %428, %449, %451
  %465 = phi i32 [ %433, %428 ], [ %450, %449 ], [ %463, %451 ]
  %466 = and i32 %429, -97
  %467 = or i32 %465, %466
  store i32 %467, i32* %413, align 4
  %468 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %469 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 45
  %470 = load i64, i64* %469, align 8
  %471 = add i64 %470, 1056
  %472 = tail call i32 @lduw_phys(i64 %471)
  %473 = add i64 %470, 1064
  %474 = tail call i64 @ldq_phys(i64 %473)
  %475 = add i64 %470, 1060
  %476 = tail call i32 @ldl_phys(i64 %475)
  %477 = add i64 %470, 1058
  %478 = tail call i32 @lduw_phys(i64 %477)
  %479 = shl i32 %478, 8
  %480 = and i32 %479, 65280
  %481 = shl i32 %478, 12
  %482 = and i32 %481, 15728640
  %483 = or i32 %480, %482
  %484 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 11, i64 2, i32 0
  store i32 %472, i32* %484, align 4
  %485 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 11, i64 2, i32 1
  store i64 %474, i64* %485, align 4
  %486 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 11, i64 2, i32 2
  store i32 %476, i32* %486, align 4
  %487 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 11, i64 2, i32 3
  store i32 %483, i32* %487, align 4
  %488 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 8
  %489 = load i32, i32* %488, align 4
  %490 = lshr exact i32 %482, 17
  %491 = and i32 %490, 32
  %492 = trunc i32 %489 to i16
  %493 = icmp slt i16 %492, 0
  br i1 %493, label %520, label %494

; <label>:494:                                    ; preds = %464
  %495 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 16, i64 0
  %496 = load i64, i64* %495, align 4
  %497 = and i64 %496, 1
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %507, label %499

; <label>:499:                                    ; preds = %494
  %500 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 7
  %501 = load i64, i64* %500, align 4
  %502 = and i64 %501, 131072
  %503 = icmp ne i64 %502, 0
  %504 = and i32 %489, 16
  %505 = icmp eq i32 %504, 0
  %506 = or i1 %505, %503
  br i1 %506, label %507, label %509

; <label>:507:                                    ; preds = %499, %494
  %508 = or i32 %491, 64
  br label %520

; <label>:509:                                    ; preds = %499
  %510 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 11, i64 3, i32 1
  %511 = load i64, i64* %510, align 4
  %512 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %468, i64 0, i32 11, i64 0, i32 1
  %513 = load i64, i64* %512, align 4
  %514 = or i64 %513, %511
  %515 = or i64 %514, %474
  %516 = icmp ne i64 %515, 0
  %517 = zext i1 %516 to i32
  %518 = shl nuw nsw i32 %517, 6
  %519 = or i32 %518, %491
  br label %520

; <label>:520:                                    ; preds = %464, %507, %509
  %521 = phi i32 [ %491, %464 ], [ %508, %507 ], [ %519, %509 ]
  %522 = and i32 %489, -97
  %523 = or i32 %521, %522
  store i32 %523, i32* %488, align 4
  %524 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %525 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 45
  %526 = load i64, i64* %525, align 8
  %527 = add i64 %526, 1072
  %528 = tail call i32 @lduw_phys(i64 %527)
  %529 = add i64 %526, 1080
  %530 = tail call i64 @ldq_phys(i64 %529)
  %531 = add i64 %526, 1076
  %532 = tail call i32 @ldl_phys(i64 %531)
  %533 = add i64 %526, 1074
  %534 = tail call i32 @lduw_phys(i64 %533)
  %535 = shl i32 %534, 8
  %536 = and i32 %535, 65280
  %537 = shl i32 %534, 12
  %538 = and i32 %537, 15728640
  %539 = or i32 %536, %538
  %540 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 3, i32 0
  store i32 %528, i32* %540, align 4
  %541 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 3, i32 1
  store i64 %530, i64* %541, align 4
  %542 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 3, i32 2
  store i32 %532, i32* %542, align 4
  %543 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 3, i32 3
  store i32 %539, i32* %543, align 4
  %544 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 8
  %545 = load i32, i32* %544, align 4
  %546 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 2, i32 3
  %547 = load i32, i32* %546, align 4
  %548 = lshr i32 %547, 17
  %549 = and i32 %548, 32
  %550 = trunc i32 %545 to i16
  %551 = icmp slt i16 %550, 0
  br i1 %551, label %578, label %552

; <label>:552:                                    ; preds = %520
  %553 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 16, i64 0
  %554 = load i64, i64* %553, align 4
  %555 = and i64 %554, 1
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %565, label %557

; <label>:557:                                    ; preds = %552
  %558 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 7
  %559 = load i64, i64* %558, align 4
  %560 = and i64 %559, 131072
  %561 = icmp ne i64 %560, 0
  %562 = and i32 %545, 16
  %563 = icmp eq i32 %562, 0
  %564 = or i1 %563, %561
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %557, %552
  %566 = or i32 %549, 64
  br label %578

; <label>:567:                                    ; preds = %557
  %568 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 0, i32 1
  %569 = load i64, i64* %568, align 4
  %570 = or i64 %569, %530
  %571 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %524, i64 0, i32 11, i64 2, i32 1
  %572 = load i64, i64* %571, align 4
  %573 = or i64 %570, %572
  %574 = icmp ne i64 %573, 0
  %575 = zext i1 %574 to i32
  %576 = shl nuw nsw i32 %575, 6
  %577 = or i32 %576, %549
  br label %578

; <label>:578:                                    ; preds = %520, %565, %567
  %579 = phi i32 [ %549, %520 ], [ %566, %565 ], [ %577, %567 ]
  %580 = and i32 %545, -97
  %581 = or i32 %579, %580
  store i32 %581, i32* %544, align 4
  %582 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %583 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %582, i64 0, i32 45
  %584 = load i64, i64* %583, align 8
  %585 = add i64 %584, 1400
  %586 = tail call i64 @ldq_phys(i64 %585)
  %587 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %588 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %587, i64 0, i32 5
  store i64 %586, i64* %588, align 16
  %589 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %587, i64 0, i32 45
  %590 = load i64, i64* %589, align 8
  %591 = add i64 %590, 1496
  %592 = tail call i64 @ldq_phys(i64 %591)
  %593 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %594 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %593, i64 0, i32 0, i64 4
  store i64 %592, i64* %594, align 16
  %595 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %593, i64 0, i32 45
  %596 = load i64, i64* %595, align 8
  %597 = add i64 %596, 1528
  %598 = tail call i64 @ldq_phys(i64 %597)
  %599 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %600 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %599, i64 0, i32 0, i64 0
  store i64 %598, i64* %600, align 16
  %601 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %602 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %601, i64 0, i32 45
  %603 = load i64, i64* %602, align 8
  %604 = add i64 %603, 1384
  %605 = tail call i64 @ldq_phys(i64 %604)
  %606 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %607 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %606, i64 0, i32 72, i64 6
  store i64 %605, i64* %607, align 8
  %608 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %606, i64 0, i32 45
  %609 = load i64, i64* %608, align 8
  %610 = add i64 %609, 1376
  %611 = tail call i64 @ldq_phys(i64 %610)
  %612 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %613 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %612, i64 0, i32 72, i64 7
  store i64 %611, i64* %613, align 8
  %614 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %615 = load i32, i32* %614, align 4
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %619, !prof !2

; <label>:617:                                    ; preds = %578
  %618 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %612, i64 0, i32 8
  br label %625

; <label>:619:                                    ; preds = %578
  %620 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %621 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %612, i64 0, i32 8
  %622 = load i32, i32* %621, align 4
  %623 = and i32 %622, 3
  tail call void %620(i32 %623, i32 0)
  %624 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %625

; <label>:625:                                    ; preds = %617, %619
  %626 = phi %struct.CPUX86State* [ %612, %617 ], [ %624, %619 ]
  %627 = phi i32* [ %618, %617 ], [ %621, %619 ]
  %628 = load i32, i32* %627, align 4
  %629 = and i32 %628, -4
  store i32 %629, i32* %627, align 4
  %630 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %626, i64 0, i32 46
  %631 = load i64, i64* %630, align 16
  %632 = add i64 %631, 112
  %633 = zext i32 %0 to i64
  tail call void @stq_phys(i64 %632, i64 %633)
  %634 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %635 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %634, i64 0, i32 46
  %636 = load i64, i64* %635, align 16
  %637 = add i64 %636, 120
  tail call void @stq_phys(i64 %637, i64 %1)
  %638 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %639 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %638, i64 0, i32 46
  %640 = load i64, i64* %639, align 16
  %641 = add i64 %640, 136
  %642 = add i64 %640, 168
  %643 = tail call i32 @ldl_phys(i64 %642)
  tail call void @stl_phys(i64 %641, i32 %643)
  %644 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %645 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %644, i64 0, i32 46
  %646 = load i64, i64* %645, align 16
  %647 = add i64 %646, 140
  %648 = add i64 %646, 172
  %649 = tail call i32 @ldl_phys(i64 %648)
  tail call void @stl_phys(i64 %647, i32 %649)
  %650 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %651 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %650, i64 0, i32 46
  %652 = load i64, i64* %651, align 16
  %653 = add i64 %652, 168
  tail call void @stl_phys(i64 %653, i32 0)
  %654 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %655 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %654, i64 0, i32 9
  %656 = load i32, i32* %655, align 8
  %657 = and i32 %656, -2
  store i32 %657, i32* %655, align 8
  %658 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %654, i64 0, i32 16, i64 0
  %659 = load i64, i64* %658, align 4
  %660 = or i64 %659, 1
  store i64 %660, i64* %658, align 4
  %661 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %654, i64 0, i32 7
  %662 = load i64, i64* %661, align 4
  %663 = and i64 %662, -131073
  store i64 %663, i64* %661, align 4
  %664 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %654, i64 0, i32 106
  store i32 -1, i32* %664, align 16
  %665 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %654, i64 0, i32 69
  store i32 0, i32* %665, align 8
  %666 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %654, i64 0, i32 75
  store i32 -1, i32* %666, align 4
  %667 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %668 = load i32, i32* %667, align 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %673, label %670, !prof !2

; <label>:670:                                    ; preds = %625
  %671 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %671(i32 %21, i32 0)
  %672 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %673

; <label>:673:                                    ; preds = %625, %670
  %674 = phi %struct.CPUX86State* [ %654, %625 ], [ %672, %670 ]
  tail call void @cpu_loop_exit(%struct.CPUX86State* %674) #13
  unreachable
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

declare void @libcpu_system_reset_request() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @cpu_loop_exit(%struct.CPUX86State*) local_unnamed_addr #7

declare i64 @ldq_phys(i64) local_unnamed_addr #6

declare void @stl_phys(i64, i32) local_unnamed_addr #6

declare void @stw_phys(i64, i32) local_unnamed_addr #6

declare void @stq_phys(i64, i64) local_unnamed_addr #6

declare i32 @ldl_phys(i64) local_unnamed_addr #6

declare void @stb_phys(i64, i32) local_unnamed_addr #6

declare void @cpu_x86_update_cr0(%struct.CPUX86State*, i32) local_unnamed_addr #6

declare void @cpu_x86_update_cr4(%struct.CPUX86State*, i32) local_unnamed_addr #6

declare void @cpu_x86_update_cr3(%struct.CPUX86State*, i64) local_unnamed_addr #6

declare i32 @lduw_phys(i64) local_unnamed_addr #6

declare i32 @ldub_phys(i64) local_unnamed_addr #6

declare void @tcg_llvm_before_memory_access(i64, i64, i32, i32) local_unnamed_addr #6

declare i64 @tcg_llvm_fork_and_concretize(i64, i64, i64, i64) local_unnamed_addr #6

; Function Attrs: uwtable
define zeroext i16 @__ldw_mmu(i64, i32) local_unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26, !prof !2

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %83

; <label>:28:                                     ; preds = %83, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %85, %83 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %86, %83 ]
  %31 = phi i64 [ %22, %13 ], [ %88, %83 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %66, label %34, !prof !2

; <label>:34:                                     ; preds = %28
  %35 = and i64 %14, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %70

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %14
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 0)
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_read(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = inttoptr i64 %51 to i16*
  %53 = load i16, i16* %52, align 2
  br label %56

; <label>:54:                                     ; preds = %37
  %55 = tail call zeroext i16 @io_readw_mmu(i64 %39, i64 %14, i8* null)
  br label %56

; <label>:56:                                     ; preds = %47, %54
  %57 = phi i16 [ %53, %47 ], [ %55, %54 ]
  %58 = zext i16 %57 to i64
  %59 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %58, i32 2, i32 0)
  %60 = trunc i64 %59 to i16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %61 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %91, label %64

; <label>:64:                                     ; preds = %56
  %65 = and i64 %59, 65535
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %65, i32 2, i32 1, i64 0)
  br label %91

; <label>:66:                                     ; preds = %28
  %67 = and i64 %14, 4095
  %68 = add nuw nsw i64 %67, 1
  %69 = icmp ugt i64 %68, 4095
  br i1 %69, label %70, label %72, !prof !3

; <label>:70:                                     ; preds = %34, %66
  %71 = tail call fastcc zeroext i16 @slow_ldw_mmu(i64 %14, i32 %1)
  br label %91

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %14
  %76 = inttoptr i64 %75 to i16*
  %77 = load i16, i16* %76, align 2
  %78 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

; <label>:81:                                     ; preds = %72
  %82 = zext i16 %77 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %82, i32 2, i32 0, i64 0)
  br label %91

; <label>:83:                                     ; preds = %26, %83
  %84 = phi %struct.CPUX86State* [ %19, %26 ], [ %85, %83 ]
  tail call void @tlb_fill(%struct.CPUX86State* %84, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %85 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %85, i64 0, i32 89, i64 %18, i64 %17
  %87 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %86, i64 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, -4088
  %90 = icmp eq i64 %23, %89
  br i1 %90, label %28, label %83, !prof !2

; <label>:91:                                     ; preds = %56, %72, %64, %81, %70
  %92 = phi i16 [ %71, %70 ], [ %60, %64 ], [ %60, %56 ], [ %77, %81 ], [ %77, %72 ]
  ret i16 %92
}

declare void @tcg_llvm_after_memory_access(i64, i64, i32, i32, i64) local_unnamed_addr #6

declare %struct.MemoryDescOps* @phys_get_ops(i64) local_unnamed_addr #6

declare void @tcg_llvm_write_mem_io_vaddr(i64, i32) local_unnamed_addr #6

declare zeroext i1 @se_ismemfunc(%struct.MemoryDescOps*, i32) local_unnamed_addr #6

declare i64 @se_notdirty_mem_read(i64) local_unnamed_addr #6

declare zeroext i16 @io_readw_mmu(i64, i64, i8*) local_unnamed_addr #6

declare i64 @tcg_llvm_trace_mmio_access(i64, i64, i32, i32) local_unnamed_addr #6

; Function Attrs: uwtable
define internal fastcc zeroext i16 @slow_ldw_mmu(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %97

; <label>:28:                                     ; preds = %97, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %99, %97 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %100, %97 ]
  %31 = phi i64 [ %22, %13 ], [ %102, %97 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %66, label %34

; <label>:34:                                     ; preds = %28
  %35 = and i64 %14, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %70

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %14
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 0)
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_read(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = inttoptr i64 %51 to i16*
  %53 = load i16, i16* %52, align 2
  br label %56

; <label>:54:                                     ; preds = %37
  %55 = tail call zeroext i16 @io_readw_mmu(i64 %39, i64 %14, i8* null)
  br label %56

; <label>:56:                                     ; preds = %47, %54
  %57 = phi i16 [ %53, %47 ], [ %55, %54 ]
  %58 = zext i16 %57 to i64
  %59 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %58, i32 2, i32 0)
  %60 = trunc i64 %59 to i16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %61 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %105, label %64

; <label>:64:                                     ; preds = %56
  %65 = and i64 %59, 65535
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %65, i32 2, i32 1, i64 0)
  br label %105

; <label>:66:                                     ; preds = %28
  %67 = and i64 %14, 4095
  %68 = add nuw nsw i64 %67, 1
  %69 = icmp ugt i64 %68, 4095
  br i1 %69, label %70, label %86

; <label>:70:                                     ; preds = %34, %66
  %71 = and i64 %14, -2
  %72 = add i64 %71, 2
  %73 = tail call fastcc zeroext i16 @slow_ldw_mmu(i64 %71, i32 %1)
  %74 = tail call fastcc zeroext i16 @slow_ldw_mmu(i64 %72, i32 %1)
  %75 = shl i64 %14, 3
  %76 = and i64 %75, 8
  %77 = zext i16 %73 to i32
  %78 = trunc i64 %76 to i32
  %79 = lshr i32 %77, %78
  %80 = zext i16 %74 to i32
  %81 = sub nsw i64 16, %76
  %82 = trunc i64 %81 to i32
  %83 = shl i32 %80, %82
  %84 = or i32 %83, %79
  %85 = trunc i32 %84 to i16
  ret i16 %85

; <label>:86:                                     ; preds = %66
  %87 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %14
  %90 = inttoptr i64 %89 to i16*
  %91 = load i16, i16* %90, align 2
  %92 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %105, label %95

; <label>:95:                                     ; preds = %86
  %96 = zext i16 %91 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %96, i32 2, i32 0, i64 0)
  br label %105

; <label>:97:                                     ; preds = %26, %97
  %98 = phi %struct.CPUX86State* [ %19, %26 ], [ %99, %97 ]
  tail call void @tlb_fill(%struct.CPUX86State* %98, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %99 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %100 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %99, i64 0, i32 89, i64 %18, i64 %17
  %101 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %100, i64 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = and i64 %102, -4088
  %104 = icmp eq i64 %23, %103
  br i1 %104, label %28, label %97

; <label>:105:                                    ; preds = %56, %86, %64, %95
  %106 = phi i16 [ %60, %64 ], [ %60, %56 ], [ %91, %95 ], [ %91, %86 ]
  ret i16 %106
}

; Function Attrs: uwtable
define void @tlb_fill(%struct.CPUX86State*, i64, i64, i32, i32, i8*) local_unnamed_addr #2 {
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 14), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !2

; <label>:10:                                     ; preds = %6
  %11 = load void (i64, i32, i8*)*, void (i64, i32, i8*)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 22), align 8
  tail call void %11(i64 %1, i32 %3, i8* %5)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %14 = tail call i32 @cpu_x86_handle_mmu_fault(%struct.CPUX86State* %13, i64 %2, i32 %3, i32 %4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

; <label>:16:                                     ; preds = %12
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 106
  %19 = load i32, i32* %18, align 16
  %20 = icmp eq i32 %19, 14
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 53
  %23 = load i32, i32* %22, align 16
  %24 = and i32 %23, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 46
  %28 = load i64, i64* %27, align 16
  %29 = add i64 %28, 128
  tail call void @stq_phys(i64 %29, i64 %1)
  br label %32

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 16, i64 2
  store i64 %1, i64* %31, align 4
  br label %32

; <label>:32:                                     ; preds = %26, %30, %16
  %33 = icmp eq i8* %5, null
  br i1 %33, label %40, label %34

; <label>:34:                                     ; preds = %32
  %35 = ptrtoint i8* %5 to i64
  %36 = tail call %struct.TranslationBlock* @tb_find_pc(i64 %35)
  %37 = icmp eq %struct.TranslationBlock* %36, null
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %34
  %39 = tail call i32 @cpu_restore_state(%struct.TranslationBlock* nonnull %36, %struct.CPUX86State* %0, i64 %35)
  br label %40

; <label>:40:                                     ; preds = %34, %32, %38
  %41 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 13), align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !2

; <label>:44:                                     ; preds = %40
  %45 = load void (i64, i32, i8*)*, void (i64, i32, i8*)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 21), align 8
  tail call void %45(i64 %1, i32 %3, i8* %5)
  br label %46

; <label>:46:                                     ; preds = %40, %44
  %47 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %47, i64 0, i32 106
  %49 = load i32, i32* %48, align 16
  %50 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %47, i64 0, i32 69
  %51 = load i32, i32* %50, align 8
  tail call fastcc void @raise_exception_err(i32 %49, i32 %51) #13
  unreachable

; <label>:52:                                     ; preds = %12
  ret void
}

declare i32 @cpu_x86_handle_mmu_fault(%struct.CPUX86State*, i64, i32, i32) local_unnamed_addr #6

declare %struct.TranslationBlock* @tb_find_pc(i64) local_unnamed_addr #6

declare i32 @cpu_restore_state(%struct.TranslationBlock*, %struct.CPUX86State*, i64) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_check_iow(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 3
  %4 = load i32, i32* %3, align 16
  %5 = trunc i32 %4 to i16
  %6 = icmp slt i16 %5, 0
  %7 = and i32 %4, 3840
  %8 = icmp eq i32 %7, 2304
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %36

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %12, 103
  br i1 %13, label %36, label %14

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 1
  %16 = load i64, i64* %15, align 4
  %17 = add i64 %16, 102
  %18 = tail call fastcc i32 @lduw_kernel(i64 %17)
  %19 = ashr i32 %0, 3
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 13, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %36, label %26

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 13, i32 1
  %28 = load i64, i64* %27, align 4
  %29 = sext i32 %20 to i64
  %30 = add i64 %28, %29
  %31 = tail call fastcc i32 @lduw_kernel(i64 %30)
  %32 = and i32 %0, 7
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %26, %14, %10, %1
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:37:                                     ; preds = %26
  ret void
}

; Function Attrs: uwtable
define void @helper_check_iol(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 3
  %4 = load i32, i32* %3, align 16
  %5 = trunc i32 %4 to i16
  %6 = icmp slt i16 %5, 0
  %7 = and i32 %4, 3840
  %8 = icmp eq i32 %7, 2304
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %36

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %12, 103
  br i1 %13, label %36, label %14

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 13, i32 1
  %16 = load i64, i64* %15, align 4
  %17 = add i64 %16, 102
  %18 = tail call fastcc i32 @lduw_kernel(i64 %17)
  %19 = ashr i32 %0, 3
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 13, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %36, label %26

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 13, i32 1
  %28 = load i64, i64* %27, align 4
  %29 = sext i32 %20 to i64
  %30 = add i64 %28, %29
  %31 = tail call fastcc i32 @lduw_kernel(i64 %30)
  %32 = and i32 %0, 7
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %26, %14, %10, %1
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:37:                                     ; preds = %26
  ret void
}

; Function Attrs: uwtable
define void @helper_outb(i32, i32) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 7), align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %2
  %9 = bitcast i32* %3 to i8*
  call void @tcg_llvm_get_value(i8* %9, i32 4, i1 zeroext false)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %2, %8
  %13 = phi i32 [ %1, %2 ], [ %11, %8 ]
  %14 = phi i32 [ %0, %2 ], [ %10, %8 ]
  %15 = zext i32 %14 to i64
  %16 = zext i32 %13 to i64
  %17 = call i64 @tcg_llvm_trace_port_access(i64 %15, i64 %16, i32 8, i32 1)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %31, label %19

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 6), align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19
  %24 = and i32 %13, 255
  store i32 %24, i32* %4, align 4
  %25 = bitcast i32* %4 to i8*
  call void @tcg_llvm_get_value(i8* %25, i32 4, i1 zeroext false)
  %26 = load i32, i32* %4, align 4
  br label %27

; <label>:27:                                     ; preds = %19, %23
  %28 = phi i32 [ %13, %19 ], [ %26, %23 ]
  %29 = load i32, i32* %3, align 4
  %30 = trunc i32 %28 to i8
  call void @cpu_outb(i32 %29, i8 zeroext %30)
  br label %31

; <label>:31:                                     ; preds = %12, %27
  ret void
}

declare void @tcg_llvm_get_value(i8*, i32, i1 zeroext) local_unnamed_addr #6

declare i64 @tcg_llvm_trace_port_access(i64, i64, i32, i32) local_unnamed_addr #6

declare void @cpu_outb(i32, i8 zeroext) local_unnamed_addr #6

; Function Attrs: uwtable
define i64 @helper_inb(i32) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 7), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %1
  %7 = bitcast i32* %2 to i8*
  call void @tcg_llvm_get_value(i8* %7, i32 4, i1 zeroext false)
  %8 = load i32, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ %0, %1 ], [ %8, %6 ]
  %11 = call zeroext i8 @cpu_inb(i32 %10)
  %12 = zext i8 %11 to i64
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = call i64 @tcg_llvm_trace_port_access(i64 %14, i64 %12, i32 8, i32 0)
  ret i64 %15
}

declare zeroext i8 @cpu_inb(i32) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_outw(i32, i32) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 7), align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %2
  %9 = bitcast i32* %3 to i8*
  call void @tcg_llvm_get_value(i8* %9, i32 4, i1 zeroext false)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %2, %8
  %13 = phi i32 [ %1, %2 ], [ %11, %8 ]
  %14 = phi i32 [ %0, %2 ], [ %10, %8 ]
  %15 = zext i32 %14 to i64
  %16 = zext i32 %13 to i64
  %17 = call i64 @tcg_llvm_trace_port_access(i64 %15, i64 %16, i32 16, i32 1)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %31, label %19

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 6), align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19
  %24 = and i32 %13, 65535
  store i32 %24, i32* %4, align 4
  %25 = bitcast i32* %4 to i8*
  call void @tcg_llvm_get_value(i8* %25, i32 4, i1 zeroext false)
  %26 = load i32, i32* %4, align 4
  br label %27

; <label>:27:                                     ; preds = %19, %23
  %28 = phi i32 [ %13, %19 ], [ %26, %23 ]
  %29 = load i32, i32* %3, align 4
  %30 = trunc i32 %28 to i16
  call void @cpu_outw(i32 %29, i16 zeroext %30)
  br label %31

; <label>:31:                                     ; preds = %12, %27
  ret void
}

declare void @cpu_outw(i32, i16 zeroext) local_unnamed_addr #6

; Function Attrs: uwtable
define i64 @helper_inw(i32) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 7), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %1
  %7 = bitcast i32* %2 to i8*
  call void @tcg_llvm_get_value(i8* %7, i32 4, i1 zeroext false)
  %8 = load i32, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ %0, %1 ], [ %8, %6 ]
  %11 = call zeroext i16 @cpu_inw(i32 %10)
  %12 = zext i16 %11 to i64
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = call i64 @tcg_llvm_trace_port_access(i64 %14, i64 %12, i32 16, i32 0)
  ret i64 %15
}

declare zeroext i16 @cpu_inw(i32) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_outl(i32, i32) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 7), align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %2
  %9 = bitcast i32* %3 to i8*
  call void @tcg_llvm_get_value(i8* %9, i32 4, i1 zeroext false)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %2, %8
  %13 = phi i32 [ %1, %2 ], [ %11, %8 ]
  %14 = phi i32 [ %0, %2 ], [ %10, %8 ]
  %15 = zext i32 %14 to i64
  %16 = zext i32 %13 to i64
  %17 = call i64 @tcg_llvm_trace_port_access(i64 %15, i64 %16, i32 32, i32 1)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %29, label %19

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 6), align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %19
  %24 = bitcast i32* %4 to i8*
  call void @tcg_llvm_get_value(i8* %24, i32 4, i1 zeroext false)
  %25 = load i32, i32* %4, align 4
  br label %26

; <label>:26:                                     ; preds = %19, %23
  %27 = phi i32 [ %13, %19 ], [ %25, %23 ]
  %28 = load i32, i32* %3, align 4
  call void @cpu_outl(i32 %28, i32 %27)
  br label %29

; <label>:29:                                     ; preds = %12, %26
  ret void
}

declare void @cpu_outl(i32, i32) local_unnamed_addr #6

; Function Attrs: uwtable
define i64 @helper_inl(i32) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 7), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %1
  %7 = bitcast i32* %2 to i8*
  call void @tcg_llvm_get_value(i8* %7, i32 4, i1 zeroext false)
  %8 = load i32, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %1, %6
  %10 = phi i32 [ %0, %1 ], [ %8, %6 ]
  %11 = call i32 @cpu_inl(i32 %10)
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = call i64 @tcg_llvm_trace_port_access(i64 %14, i64 %12, i32 32, i32 0)
  ret i64 %15
}

declare i32 @cpu_inl(i32) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_syscall(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 3
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 43
  %7 = load i64, i64* %6, align 8
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  tail call fastcc void @raise_exception_err(i32 6, i32 0) #13
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 44
  %13 = load i64, i64* %12, align 16
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  %16 = and i32 %4, 16384
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 5
  %19 = load i64, i64* %18, align 16
  br i1 %17, label %164, label %20

; <label>:20:                                     ; preds = %11
  %21 = sext i32 %0 to i64
  %22 = add i64 %19, %21
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 1
  %27 = load i64, i64* %26, align 16
  %28 = trunc i64 %27 to i32
  %29 = tail call i32 @helper_cc_compute_all(i32 %28) #5
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 1024
  %34 = zext i32 %33 to i64
  %35 = or i64 %30, %25
  %36 = and i64 %35, 4294967293
  %37 = or i64 %34, %36
  %38 = or i64 %37, 2
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 11
  store i64 %38, i64* %39, align 8
  %40 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !2

; <label>:43:                                     ; preds = %20
  %44 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %44(i32 %5, i32 0)
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %47

; <label>:47:                                     ; preds = %20, %43
  %48 = phi %struct.CPUX86State* [ %2, %20 ], [ %46, %43 ]
  %49 = phi i32 [ %4, %20 ], [ %45, %43 ]
  %50 = and i32 %49, -4
  store i32 %50, i32* %3, align 4
  %51 = and i32 %15, 65532
  %52 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 1, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %53, align 4
  %54 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 1, i32 3
  store i32 10525440, i32* %55, align 4
  %56 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 16384
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %57, -32881
  %61 = or i32 %60, 32816
  %62 = and i32 %57, -32785
  %63 = select i1 %59, i32 %62, i32 %61
  store i32 %63, i32* %56, align 4
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 2, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %65, 17
  %67 = and i32 %66, 32
  %68 = trunc i32 %63 to i16
  %69 = icmp slt i16 %68, 0
  br i1 %69, label %98, label %70

; <label>:70:                                     ; preds = %47
  %71 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 16, i64 0
  %72 = load i64, i64* %71, align 4
  %73 = and i64 %72, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %83, label %75

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 7
  %77 = load i64, i64* %76, align 4
  %78 = and i64 %77, 131072
  %79 = icmp ne i64 %78, 0
  %80 = and i32 %63, 16
  %81 = icmp eq i32 %80, 0
  %82 = or i1 %81, %79
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %75, %70
  %84 = or i32 %67, 64
  br label %98

; <label>:85:                                     ; preds = %75
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 3, i32 1
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 0, i32 1
  %89 = load i64, i64* %88, align 4
  %90 = or i64 %89, %87
  %91 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 2, i32 1
  %92 = load i64, i64* %91, align 4
  %93 = or i64 %90, %92
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = shl nuw nsw i32 %95, 6
  %97 = or i32 %96, %67
  br label %98

; <label>:98:                                     ; preds = %47, %83, %85
  %99 = phi i32 [ %67, %47 ], [ %84, %83 ], [ %97, %85 ]
  %100 = and i32 %63, -97
  %101 = or i32 %99, %100
  store i32 %101, i32* %56, align 4
  %102 = add i32 %15, 8
  %103 = and i32 %102, 65532
  %104 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 2, i32 0
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %105, align 4
  %106 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %106, align 4
  store i32 12620544, i32* %64, align 4
  %107 = trunc i32 %101 to i16
  %108 = icmp slt i16 %107, 0
  br i1 %108, label %132, label %109

; <label>:109:                                    ; preds = %98
  %110 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 16, i64 0
  %111 = load i64, i64* %110, align 4
  %112 = and i64 %111, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %132, label %114

; <label>:114:                                    ; preds = %109
  %115 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 7
  %116 = load i64, i64* %115, align 4
  %117 = and i64 %116, 131072
  %118 = icmp ne i64 %117, 0
  %119 = and i32 %101, 16
  %120 = icmp eq i32 %119, 0
  %121 = or i1 %120, %118
  br i1 %121, label %132, label %122

; <label>:122:                                    ; preds = %114
  %123 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 3, i32 1
  %124 = load i64, i64* %123, align 4
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 11, i64 0, i32 1
  %126 = load i64, i64* %125, align 4
  %127 = or i64 %126, %124
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = shl nuw nsw i32 %129, 6
  %131 = or i32 %130, 32
  br label %132

; <label>:132:                                    ; preds = %109, %114, %98, %122
  %133 = phi i32 [ 32, %98 ], [ %131, %122 ], [ 96, %114 ], [ 96, %109 ]
  %134 = and i32 %101, -97
  %135 = or i32 %133, %134
  store i32 %135, i32* %56, align 4
  %136 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 1
  %137 = load i64, i64* %136, align 16
  %138 = trunc i64 %137 to i32
  %139 = tail call i32 @helper_cc_compute_all(i32 %138)
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 60
  %142 = load i64, i64* %141, align 16
  %143 = xor i64 %142, -1
  %144 = and i64 %140, %143
  %145 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 2
  store i64 %144, i64* %145, align 8
  store i64 1, i64* %136, align 16
  %146 = and i64 %142, 1024
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %150, label %148

; <label>:148:                                    ; preds = %132
  %149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 6
  store i32 1, i32* %149, align 8
  br label %150

; <label>:150:                                    ; preds = %132, %148
  %151 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 7
  %152 = load i64, i64* %151, align 4
  %153 = and i64 %152, %143
  store i64 %153, i64* %151, align 4
  %154 = trunc i32 %4 to i16
  %155 = icmp slt i16 %154, 0
  br i1 %155, label %156, label %160

; <label>:156:                                    ; preds = %150
  %157 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 58
  %158 = load i64, i64* %157, align 16
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 5
  store i64 %158, i64* %159, align 16
  br label %257

; <label>:160:                                    ; preds = %150
  %161 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 59
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 5
  store i64 %162, i64* %163, align 16
  br label %257

; <label>:164:                                    ; preds = %11
  %165 = zext i32 %0 to i64
  %166 = add i64 %19, %165
  %167 = and i64 %166, 4294967295
  %168 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  store i64 %167, i64* %168, align 8
  %169 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172, !prof !2

; <label>:172:                                    ; preds = %164
  %173 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %173(i32 %5, i32 0)
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %176

; <label>:176:                                    ; preds = %164, %172
  %177 = phi %struct.CPUX86State* [ %175, %172 ], [ %2, %164 ]
  %178 = phi i32 [ %174, %172 ], [ %4, %164 ]
  %179 = and i32 %178, -4
  store i32 %179, i32* %3, align 4
  %180 = and i32 %15, 65532
  %181 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 1, i32 0
  store i32 %180, i32* %181, align 4
  %182 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %182, align 4
  %183 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %183, align 4
  %184 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 1, i32 3
  store i32 12622592, i32* %184, align 4
  %185 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, -32785
  %188 = or i32 %187, 16
  store i32 %188, i32* %185, align 4
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 2, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = lshr i32 %190, 17
  %192 = and i32 %191, 32
  %193 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 16, i64 0
  %194 = load i64, i64* %193, align 4
  %195 = and i64 %194, 1
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %202, label %197

; <label>:197:                                    ; preds = %176
  %198 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 7
  %199 = load i64, i64* %198, align 4
  %200 = and i64 %199, 131072
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %205, label %202

; <label>:202:                                    ; preds = %197, %176
  %203 = or i32 %192, 64
  %204 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 2, i32 1
  br label %218

; <label>:205:                                    ; preds = %197
  %206 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 3, i32 1
  %207 = load i64, i64* %206, align 4
  %208 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 0, i32 1
  %209 = load i64, i64* %208, align 4
  %210 = or i64 %209, %207
  %211 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 2, i32 1
  %212 = load i64, i64* %211, align 4
  %213 = or i64 %210, %212
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i32
  %216 = shl nuw nsw i32 %215, 6
  %217 = or i32 %216, %192
  br label %218

; <label>:218:                                    ; preds = %202, %205
  %219 = phi i64* [ %204, %202 ], [ %211, %205 ]
  %220 = phi i32 [ %203, %202 ], [ %217, %205 ]
  %221 = and i32 %188, -32865
  %222 = or i32 %220, %221
  store i32 %222, i32* %185, align 4
  %223 = add i32 %15, 8
  %224 = and i32 %223, 65532
  %225 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 2, i32 0
  store i32 %224, i32* %225, align 4
  store i64 0, i64* %219, align 4
  %226 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %226, align 4
  store i32 12620544, i32* %189, align 4
  %227 = trunc i32 %220 to i16
  %228 = icmp slt i16 %227, 0
  %229 = or i1 %228, %196
  %230 = select i1 %228, i32 32, i32 96
  br i1 %229, label %246, label %231

; <label>:231:                                    ; preds = %218
  %232 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 7
  %233 = load i64, i64* %232, align 4
  %234 = and i64 %233, 131072
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %246

; <label>:236:                                    ; preds = %231
  %237 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 3, i32 1
  %238 = load i64, i64* %237, align 4
  %239 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 11, i64 0, i32 1
  %240 = load i64, i64* %239, align 4
  %241 = or i64 %240, %238
  %242 = icmp ne i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = shl nuw nsw i32 %243, 6
  %245 = or i32 %244, 32
  br label %246

; <label>:246:                                    ; preds = %218, %231, %236
  %247 = phi i32 [ %230, %218 ], [ %245, %236 ], [ 96, %231 ]
  %248 = and i32 %222, -97
  %249 = or i32 %247, %248
  store i32 %249, i32* %185, align 4
  %250 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 7
  %251 = load i64, i64* %250, align 4
  %252 = and i64 %251, -197121
  store i64 %252, i64* %250, align 4
  %253 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 44
  %254 = load i64, i64* %253, align 16
  %255 = and i64 %254, 4294967295
  %256 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 5
  store i64 %255, i64* %256, align 16
  br label %257

; <label>:257:                                    ; preds = %156, %160, %246
  %258 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261, !prof !2

; <label>:261:                                    ; preds = %257
  %262 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %262(i32 %5, i32 0)
  br label %263

; <label>:263:                                    ; preds = %257, %261
  ret void
}

; Function Attrs: uwtable
define void @helper_sysret(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 43
  %6 = load i64, i64* %5, align 8
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  tail call fastcc void @raise_exception_err(i32 6, i32 0) #13
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = and i32 %4, 3
  %12 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 16, i64 0
  %13 = load i64, i64* %12, align 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  %16 = icmp ne i32 %11, 0
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %10
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 44
  %21 = load i64, i64* %20, align 16
  %22 = lshr i64 %21, 48
  %23 = trunc i64 %22 to i32
  %24 = and i32 %4, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %137, label %26

; <label>:26:                                     ; preds = %19
  %27 = icmp eq i32 %0, 2
  br i1 %27, label %28, label %45

; <label>:28:                                     ; preds = %26
  %29 = add nuw nsw i32 %23, 16
  %30 = or i32 %29, 3
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %32, align 4
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 3
  store i32 10550016, i32* %34, align 4
  %35 = and i32 %4, -32881
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = lshr i32 %37, 17
  %39 = and i32 %38, 32
  %40 = or i32 %35, 32784
  %41 = or i32 %39, %40
  store i32 %41, i32* %3, align 4
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 5
  store i64 %43, i64* %44, align 16
  br label %84

; <label>:45:                                     ; preds = %26
  %46 = or i32 %23, 3
  %47 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %48, align 4
  %49 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 3
  store i32 12647168, i32* %50, align 4
  %51 = and i32 %4, -32785
  %52 = or i32 %51, 16
  store i32 %52, i32* %3, align 4
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, 17
  %56 = and i32 %55, 32
  %57 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %58 = load i64, i64* %57, align 4
  %59 = and i64 %58, 131072
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %63, label %61

; <label>:61:                                     ; preds = %45
  %62 = or i32 %56, 64
  br label %76

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 3, i32 1
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 0, i32 1
  %67 = load i64, i64* %66, align 4
  %68 = or i64 %67, %65
  %69 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 1
  %70 = load i64, i64* %69, align 4
  %71 = or i64 %68, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = shl nuw nsw i32 %73, 6
  %75 = or i32 %74, %56
  br label %76

; <label>:76:                                     ; preds = %61, %63
  %77 = phi i32 [ %62, %61 ], [ %75, %63 ]
  %78 = and i32 %52, -32865
  %79 = or i32 %77, %78
  store i32 %79, i32* %3, align 4
  %80 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, 4294967295
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 5
  store i64 %82, i64* %83, align 16
  br label %84

; <label>:84:                                     ; preds = %76, %28
  %85 = phi i32* [ %53, %76 ], [ %36, %28 ]
  %86 = phi i32 [ %79, %76 ], [ %41, %28 ]
  %87 = add nuw nsw i32 %23, 8
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 0
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %89, align 4
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %90, align 4
  store i32 12645120, i32* %85, align 4
  %91 = trunc i32 %86 to i16
  %92 = icmp slt i16 %91, 0
  br i1 %92, label %111, label %93

; <label>:93:                                     ; preds = %84
  %94 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %95 = load i64, i64* %94, align 4
  %96 = and i64 %95, 131072
  %97 = icmp ne i64 %96, 0
  %98 = and i32 %86, 16
  %99 = icmp eq i32 %98, 0
  %100 = or i1 %99, %97
  br i1 %100, label %111, label %101

; <label>:101:                                    ; preds = %93
  %102 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 3, i32 1
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 0, i32 1
  %105 = load i64, i64* %104, align 4
  %106 = or i64 %105, %103
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = shl nuw nsw i32 %108, 6
  %110 = or i32 %109, 32
  br label %111

; <label>:111:                                    ; preds = %93, %84, %101
  %112 = phi i32 [ 32, %84 ], [ %110, %101 ], [ 96, %93 ]
  %113 = and i32 %86, -97
  %114 = or i32 %112, %113
  store i32 %114, i32* %3, align 4
  %115 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 11
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = and i64 %116, 2261
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 2
  store i64 %118, i64* %119, align 8
  %120 = lshr i32 %117, 9
  %121 = and i32 %120, 2
  %122 = xor i32 %121, 2
  %123 = add nsw i32 %122, -1
  %124 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 6
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %126 = load i64, i64* %125, align 4
  %127 = and i64 %126, -2585345
  %128 = and i64 %116, 2585344
  %129 = or i64 %127, %128
  store i64 %129, i64* %125, align 4
  %130 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %212, label %133, !prof !2

; <label>:133:                                    ; preds = %111
  %134 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %135 = and i32 %114, 3
  tail call void %134(i32 %135, i32 3)
  %136 = load i32, i32* %3, align 4
  br label %212

; <label>:137:                                    ; preds = %19
  %138 = or i32 %23, 3
  %139 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 0
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %140, align 4
  %141 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %141, align 4
  %142 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 1, i32 3
  store i32 12647168, i32* %142, align 4
  %143 = and i32 %4, -32785
  %144 = or i32 %143, 16
  store i32 %144, i32* %3, align 4
  %145 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = lshr i32 %146, 17
  %148 = and i32 %147, 32
  %149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %150 = load i64, i64* %149, align 4
  %151 = and i64 %150, 131072
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %156, label %153

; <label>:153:                                    ; preds = %137
  %154 = or i32 %148, 64
  %155 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 1
  br label %169

; <label>:156:                                    ; preds = %137
  %157 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 3, i32 1
  %158 = load i64, i64* %157, align 4
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 0, i32 1
  %160 = load i64, i64* %159, align 4
  %161 = or i64 %160, %158
  %162 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 1
  %163 = load i64, i64* %162, align 4
  %164 = or i64 %161, %163
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = shl nuw nsw i32 %166, 6
  %168 = or i32 %167, %148
  br label %169

; <label>:169:                                    ; preds = %153, %156
  %170 = phi i64* [ %155, %153 ], [ %162, %156 ]
  %171 = phi i32 [ %154, %153 ], [ %168, %156 ]
  %172 = and i32 %144, -32865
  %173 = or i32 %171, %172
  store i32 %173, i32* %3, align 4
  %174 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  %175 = load i64, i64* %174, align 8
  %176 = and i64 %175, 4294967295
  %177 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 5
  store i64 %176, i64* %177, align 16
  %178 = add nuw nsw i32 %23, 8
  %179 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 0
  store i32 %178, i32* %179, align 4
  store i64 0, i64* %170, align 4
  %180 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %180, align 4
  store i32 12645120, i32* %145, align 4
  %181 = trunc i32 %171 to i16
  %182 = icmp slt i16 %181, 0
  br i1 %182, label %198, label %183

; <label>:183:                                    ; preds = %169
  %184 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %185 = load i64, i64* %184, align 4
  %186 = and i64 %185, 131072
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %198

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 3, i32 1
  %190 = load i64, i64* %189, align 4
  %191 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 0, i32 1
  %192 = load i64, i64* %191, align 4
  %193 = or i64 %192, %190
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = shl nuw nsw i32 %195, 6
  %197 = or i32 %196, 32
  br label %198

; <label>:198:                                    ; preds = %183, %169, %188
  %199 = phi i32 [ 32, %169 ], [ %197, %188 ], [ 96, %183 ]
  %200 = and i32 %173, -97
  %201 = or i32 %199, %200
  store i32 %201, i32* %3, align 4
  %202 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 7
  %203 = load i64, i64* %202, align 4
  %204 = or i64 %203, 512
  store i64 %204, i64* %202, align 4
  %205 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208, !prof !2

; <label>:208:                                    ; preds = %198
  %209 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %210 = and i32 %201, 3
  tail call void %209(i32 %210, i32 3)
  %211 = load i32, i32* %3, align 4
  br label %212

; <label>:212:                                    ; preds = %208, %198, %133, %111
  %213 = phi i32 [ %136, %133 ], [ %114, %111 ], [ %211, %208 ], [ %201, %198 ]
  %214 = or i32 %213, 3
  store i32 %214, i32* %3, align 4
  %215 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218, !prof !2

; <label>:218:                                    ; preds = %212
  %219 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %219(i32 0, i32 3)
  br label %220

; <label>:220:                                    ; preds = %212, %218
  ret void
}

; Function Attrs: uwtable
define void @se_do_interrupt_all(i32, i32, i32, i64, i32) local_unnamed_addr #2 {
  %6 = load i32, i32* @loglevel, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %62, label %9

; <label>:9:                                      ; preds = %5
  %10 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 16, i64 0
  %12 = load i64, i64* %11, align 4
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %62, label %15

; <label>:15:                                     ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %38, label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* @se_do_interrupt_all.count, align 4
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 3
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 11, i64 1, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 5
  %26 = load i64, i64* %25, align 16
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 11, i64 1, i32 1
  %28 = load i64, i64* %27, align 4
  %29 = shl i64 %28, 32
  %30 = ashr exact i64 %29, 32
  %31 = add i64 %30, %26
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 11, i64 2, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 0, i64 4
  %35 = load i64, i64* %34, align 16
  %36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %0, i32 %2, i32 %1, i32 %22, i32 %24, i64 %26, i64 %31, i32 %33, i64 %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  br label %38

; <label>:38:                                     ; preds = %15, %18
  %39 = phi %struct._IO_FILE* [ null, %15 ], [ %37, %18 ]
  %40 = icmp eq i32 %0, 14
  %41 = icmp ne %struct._IO_FILE* %39, null
  br i1 %40, label %42, label %48

; <label>:42:                                     ; preds = %38
  br i1 %41, label %43, label %54

; <label>:43:                                     ; preds = %42
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 16, i64 2
  %46 = load i64, i64* %45, align 4
  %47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %54

; <label>:48:                                     ; preds = %38
  br i1 %41, label %49, label %54

; <label>:49:                                     ; preds = %48
  %50 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  br label %54

; <label>:54:                                     ; preds = %42, %43, %48, %49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %56 = icmp eq %struct._IO_FILE* %55, null
  br i1 %56, label %59, label %57

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %55)
  br label %59

; <label>:59:                                     ; preds = %54, %57
  %60 = load i32, i32* @se_do_interrupt_all.count, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @se_do_interrupt_all.count, align 4
  br label %62

; <label>:62:                                     ; preds = %9, %5, %59
  %63 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %63, i64 0, i32 16, i64 0
  %65 = load i64, i64* %64, align 4
  %66 = and i64 %65, 1
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %63, i64 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2097152
  %71 = icmp ne i32 %70, 0
  br i1 %67, label %1194, label %72

; <label>:72:                                     ; preds = %62
  br i1 %71, label %73, label %103

; <label>:73:                                     ; preds = %72
  %74 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %63, i64 0, i32 46
  %75 = load i64, i64* %74, align 16
  %76 = add i64 %75, 168
  %77 = tail call i32 @ldl_phys(i64 %76)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %103, label %79

; <label>:79:                                     ; preds = %73
  %80 = icmp eq i32 %1, 0
  %81 = select i1 %80, i32 768, i32 1024
  %82 = or i32 %81, %0
  %83 = or i32 %82, -2147483648
  %84 = add i32 %0, -8
  %85 = icmp ult i32 %84, 10
  br i1 %85, label %86, label %97

; <label>:86:                                     ; preds = %79
  %87 = sext i32 %84 to i64
  %88 = lshr i64 386, %87
  %89 = and i64 %88, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %86
  %92 = or i32 %82, -2147481600
  %93 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %94 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 46
  %95 = load i64, i64* %94, align 16
  %96 = add i64 %95, 172
  tail call void @stl_phys(i64 %96, i32 %2)
  br label %97

; <label>:97:                                     ; preds = %91, %86, %79
  %98 = phi i32 [ %92, %91 ], [ %83, %86 ], [ %83, %79 ]
  %99 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %100 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %99, i64 0, i32 46
  %101 = load i64, i64* %100, align 16
  %102 = add i64 %101, 168
  tail call void @stl_phys(i64 %102, i32 %98)
  br label %103

; <label>:103:                                    ; preds = %97, %73, %72
  %104 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 16384
  %108 = icmp eq i32 %107, 0
  %109 = icmp ne i32 %1, 0
  %110 = or i32 %4, %1
  %111 = icmp eq i32 %110, 0
  br i1 %108, label %502, label %112

; <label>:112:                                    ; preds = %103
  br i1 %111, label %113, label %120

; <label>:113:                                    ; preds = %112
  %114 = add i32 %0, -8
  %115 = icmp ult i32 %114, 10
  br i1 %115, label %116, label %120

; <label>:116:                                    ; preds = %113
  %117 = sext i32 %114 to i64
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* @switch.table, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  br label %120

; <label>:120:                                    ; preds = %116, %113, %112
  %121 = phi i32 [ 0, %112 ], [ %119, %116 ], [ 0, %113 ]
  br i1 %109, label %125, label %122

; <label>:122:                                    ; preds = %120
  %123 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 5
  %124 = load i64, i64* %123, align 16
  br label %125

; <label>:125:                                    ; preds = %122, %120
  %126 = phi i64 [ %124, %122 ], [ %3, %120 ]
  %127 = shl nsw i32 %0, 4
  %128 = or i32 %127, 15
  %129 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 15, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ugt i32 %128, %130
  br i1 %131, label %132, label %134

; <label>:132:                                    ; preds = %125
  %133 = or i32 %127, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %133) #13
  unreachable

; <label>:134:                                    ; preds = %125
  %135 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 15, i32 1
  %136 = load i64, i64* %135, align 4
  %137 = sext i32 %127 to i64
  %138 = add i64 %136, %137
  %139 = tail call fastcc i32 @ldl_kernel(i64 %138)
  %140 = add i64 %138, 4
  %141 = tail call fastcc i32 @ldl_kernel(i64 %140)
  %142 = add i64 %138, 8
  %143 = tail call fastcc i32 @ldl_kernel(i64 %142)
  %144 = lshr i32 %141, 8
  %145 = and i32 %144, 30
  %146 = icmp eq i32 %145, 14
  br i1 %146, label %149, label %147

; <label>:147:                                    ; preds = %134
  %148 = or i32 %127, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %148) #13
  unreachable

; <label>:149:                                    ; preds = %134
  %150 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %151 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %150, i64 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 3
  br i1 %109, label %154, label %160

; <label>:154:                                    ; preds = %149
  %155 = lshr i32 %141, 13
  %156 = and i32 %155, 3
  %157 = icmp ult i32 %156, %153
  br i1 %157, label %158, label %160

; <label>:158:                                    ; preds = %154
  %159 = or i32 %127, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %159) #13
  unreachable

; <label>:160:                                    ; preds = %154, %149
  %161 = trunc i32 %141 to i16
  %162 = icmp slt i16 %161, 0
  br i1 %162, label %165, label %163

; <label>:163:                                    ; preds = %160
  %164 = or i32 %127, 2
  tail call fastcc void @raise_exception_err(i32 11, i32 %164) #13
  unreachable

; <label>:165:                                    ; preds = %160
  %166 = lshr i32 %139, 16
  %167 = zext i32 %143 to i64
  %168 = shl nuw i64 %167, 32
  %169 = and i32 %141, -65536
  %170 = and i32 %139, 65535
  %171 = or i32 %169, %170
  %172 = zext i32 %171 to i64
  %173 = or i64 %172, %168
  %174 = and i32 %141, 7
  %175 = and i32 %166, 65532
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %165
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:178:                                    ; preds = %165
  %179 = and i32 %166, 4
  %180 = icmp eq i32 %179, 0
  %181 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %150, i64 0, i32 12
  %182 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %150, i64 0, i32 14
  %183 = select i1 %180, %struct.SegmentCache* %182, %struct.SegmentCache* %181
  %184 = or i32 %166, 7
  %185 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %183, i64 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp ugt i32 %184, %186
  br i1 %187, label %188, label %189

; <label>:188:                                    ; preds = %178
  tail call fastcc void @raise_exception_err(i32 13, i32 %175) #13
  unreachable

; <label>:189:                                    ; preds = %178
  %190 = and i32 %166, 65528
  %191 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %183, i64 0, i32 1
  %192 = load i64, i64* %191, align 4
  %193 = zext i32 %190 to i64
  %194 = add i64 %192, %193
  %195 = tail call fastcc i32 @ldl_kernel(i64 %194)
  %196 = add i64 %194, 4
  %197 = tail call fastcc i32 @ldl_kernel(i64 %196)
  %198 = and i32 %197, 6144
  %199 = icmp eq i32 %198, 6144
  br i1 %199, label %201, label %200

; <label>:200:                                    ; preds = %189
  tail call fastcc void @raise_exception_err(i32 13, i32 %175) #13
  unreachable

; <label>:201:                                    ; preds = %189
  %202 = lshr i32 %197, 13
  %203 = and i32 %202, 3
  %204 = icmp ugt i32 %203, %153
  br i1 %204, label %205, label %206

; <label>:205:                                    ; preds = %201
  tail call fastcc void @raise_exception_err(i32 13, i32 %175) #13
  unreachable

; <label>:206:                                    ; preds = %201
  %207 = trunc i32 %197 to i16
  %208 = icmp slt i16 %207, 0
  br i1 %208, label %210, label %209

; <label>:209:                                    ; preds = %206
  tail call fastcc void @raise_exception_err(i32 11, i32 %175) #13
  unreachable

; <label>:210:                                    ; preds = %206
  %211 = and i32 %197, 2097152
  %212 = and i32 %197, 6291456
  %213 = icmp eq i32 %212, 2097152
  br i1 %213, label %215, label %214

; <label>:214:                                    ; preds = %210
  tail call fastcc void @raise_exception_err(i32 13, i32 %175) #13
  unreachable

; <label>:215:                                    ; preds = %210
  %216 = and i32 %197, 1024
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

; <label>:218:                                    ; preds = %215
  %219 = icmp ult i32 %203, %153
  %220 = icmp ne i32 %174, 0
  %221 = or i1 %220, %219
  br i1 %221, label %224, label %275

; <label>:222:                                    ; preds = %215
  %223 = icmp eq i32 %174, 0
  br i1 %223, label %277, label %226

; <label>:224:                                    ; preds = %218
  %225 = icmp eq i32 %174, 0
  br i1 %225, label %251, label %226

; <label>:226:                                    ; preds = %224, %222
  %227 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %228 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %227, i64 0, i32 13, i32 3
  %229 = load i32, i32* %228, align 16
  %230 = trunc i32 %229 to i16
  %231 = icmp slt i16 %230, 0
  br i1 %231, label %233, label %232

; <label>:232:                                    ; preds = %226
  tail call void (%struct.CPUX86State*, i8*, ...) @cpu_abort(%struct.CPUX86State* %227, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)) #13
  unreachable

; <label>:233:                                    ; preds = %226
  %234 = shl nuw nsw i32 %174, 3
  %235 = add nuw nsw i32 %234, 24
  %236 = or i32 %235, 4
  %237 = add nuw nsw i32 %236, 7
  %238 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %227, i64 0, i32 13, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp ugt i32 %237, %239
  br i1 %240, label %241, label %245

; <label>:241:                                    ; preds = %233
  %242 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %227, i64 0, i32 13, i32 0
  %243 = load i32, i32* %242, align 16
  %244 = and i32 %243, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %244) #13
  unreachable

; <label>:245:                                    ; preds = %233
  %246 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %227, i64 0, i32 13, i32 1
  %247 = load i64, i64* %246, align 4
  %248 = zext i32 %236 to i64
  %249 = add i64 %247, %248
  %250 = tail call fastcc i64 @ldq_kernel(i64 %249)
  br label %314

; <label>:251:                                    ; preds = %224
  %252 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %253 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %252, i64 0, i32 13, i32 3
  %254 = load i32, i32* %253, align 16
  %255 = trunc i32 %254 to i16
  %256 = icmp slt i16 %255, 0
  br i1 %256, label %258, label %257

; <label>:257:                                    ; preds = %251
  tail call void (%struct.CPUX86State*, i8*, ...) @cpu_abort(%struct.CPUX86State* %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)) #13
  unreachable

; <label>:258:                                    ; preds = %251
  %259 = shl nuw nsw i32 %203, 3
  %260 = or i32 %259, 4
  %261 = add nuw nsw i32 %260, 7
  %262 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %252, i64 0, i32 13, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = icmp ugt i32 %261, %263
  br i1 %264, label %265, label %269

; <label>:265:                                    ; preds = %258
  %266 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %252, i64 0, i32 13, i32 0
  %267 = load i32, i32* %266, align 16
  %268 = and i32 %267, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %268) #13
  unreachable

; <label>:269:                                    ; preds = %258
  %270 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %252, i64 0, i32 13, i32 1
  %271 = load i64, i64* %270, align 4
  %272 = zext i32 %260 to i64
  %273 = add i64 %271, %272
  %274 = tail call fastcc i64 @ldq_kernel(i64 %273)
  br label %314

; <label>:275:                                    ; preds = %218
  %276 = icmp eq i32 %203, %153
  br i1 %276, label %277, label %313

; <label>:277:                                    ; preds = %275, %222
  %278 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %279 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 7
  %280 = load i64, i64* %279, align 4
  %281 = and i64 %280, 131072
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %284, label %283

; <label>:283:                                    ; preds = %277
  tail call fastcc void @raise_exception_err(i32 13, i32 %175) #13
  unreachable

; <label>:284:                                    ; preds = %277
  %285 = icmp eq i32 %174, 0
  br i1 %285, label %310, label %286

; <label>:286:                                    ; preds = %284
  %287 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 13, i32 3
  %288 = load i32, i32* %287, align 16
  %289 = trunc i32 %288 to i16
  %290 = icmp slt i16 %289, 0
  br i1 %290, label %292, label %291

; <label>:291:                                    ; preds = %286
  tail call void (%struct.CPUX86State*, i8*, ...) @cpu_abort(%struct.CPUX86State* nonnull %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)) #13
  unreachable

; <label>:292:                                    ; preds = %286
  %293 = shl nuw nsw i32 %174, 3
  %294 = add nuw nsw i32 %293, 24
  %295 = or i32 %294, 4
  %296 = add nuw nsw i32 %295, 7
  %297 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 13, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = icmp ugt i32 %296, %298
  br i1 %299, label %300, label %304

; <label>:300:                                    ; preds = %292
  %301 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 13, i32 0
  %302 = load i32, i32* %301, align 16
  %303 = and i32 %302, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %303) #13
  unreachable

; <label>:304:                                    ; preds = %292
  %305 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 13, i32 1
  %306 = load i64, i64* %305, align 4
  %307 = zext i32 %295 to i64
  %308 = add i64 %306, %307
  %309 = tail call fastcc i64 @ldq_kernel(i64 %308)
  br label %314

; <label>:310:                                    ; preds = %284
  %311 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 0, i64 4
  %312 = load i64, i64* %311, align 16
  br label %314

; <label>:313:                                    ; preds = %275
  tail call fastcc void @raise_exception_err(i32 13, i32 %175) #13
  unreachable

; <label>:314:                                    ; preds = %310, %304, %269, %245
  %315 = phi i32 [ 1, %269 ], [ 1, %245 ], [ 0, %310 ], [ 0, %304 ]
  %316 = phi i64 [ %274, %269 ], [ %250, %245 ], [ %312, %310 ], [ %309, %304 ]
  %317 = phi i32 [ %203, %269 ], [ %203, %245 ], [ %153, %310 ], [ %153, %304 ]
  %318 = and i64 %316, -16
  %319 = add i64 %318, -8
  %320 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %321 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %320, i64 0, i32 11, i64 2, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  tail call fastcc void @stq_kernel(i64 %319, i64 %323)
  %324 = add i64 %318, -16
  %325 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %326 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %325, i64 0, i32 0, i64 4
  %327 = load i64, i64* %326, align 16
  tail call fastcc void @stq_kernel(i64 %324, i64 %327)
  %328 = add i64 %318, -24
  %329 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %330 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %329, i64 0, i32 7
  %331 = load i64, i64* %330, align 4
  %332 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %329, i64 0, i32 1
  %333 = load i64, i64* %332, align 16
  %334 = trunc i64 %333 to i32
  %335 = tail call i32 @helper_cc_compute_all(i32 %334) #5
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %329, i64 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, 1024
  %340 = zext i32 %339 to i64
  %341 = or i64 %336, %331
  %342 = and i64 %341, 4294967293
  %343 = or i64 %342, %340
  %344 = or i64 %343, 2
  tail call fastcc void @stq_kernel(i64 %328, i64 %344)
  %345 = add i64 %318, -32
  %346 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %347 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %346, i64 0, i32 11, i64 1, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  tail call fastcc void @stq_kernel(i64 %345, i64 %349)
  %350 = add i64 %318, -40
  tail call fastcc void @stq_kernel(i64 %350, i64 %126)
  %351 = icmp eq i32 %121, 0
  br i1 %351, label %355, label %352

; <label>:352:                                    ; preds = %314
  %353 = add i64 %318, -48
  %354 = sext i32 %2 to i64
  tail call fastcc void @stq_kernel(i64 %353, i64 %354)
  br label %355

; <label>:355:                                    ; preds = %352, %314
  %356 = phi i64 [ %353, %352 ], [ %350, %314 ]
  %357 = icmp eq i32 %315, 0
  %358 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %357, label %359, label %362

; <label>:359:                                    ; preds = %355
  %360 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 8
  %361 = load i32, i32* %360, align 4
  br label %403

; <label>:362:                                    ; preds = %355
  %363 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 2, i32 0
  store i32 %317, i32* %363, align 4
  %364 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 2, i32 1
  %365 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 8
  %366 = bitcast i64* %364 to i8*
  br label %367

; <label>:367:                                    ; preds = %370, %362
  %368 = phi i64 [ 0, %362 ], [ %372, %370 ]
  %369 = icmp ult i64 %368, 16
  br i1 %369, label %370, label %373

; <label>:370:                                    ; preds = %367
  %371 = getelementptr i8, i8* %366, i64 %368
  store i8 0, i8* %371
  %372 = add i64 %368, 1
  br label %367

; <label>:373:                                    ; preds = %367
  %374 = load i32, i32* %365, align 4
  %375 = trunc i32 %374 to i16
  %376 = icmp slt i16 %375, 0
  br i1 %376, label %399, label %377

; <label>:377:                                    ; preds = %373
  %378 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 16, i64 0
  %379 = load i64, i64* %378, align 4
  %380 = and i64 %379, 1
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %399, label %382

; <label>:382:                                    ; preds = %377
  %383 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 7
  %384 = load i64, i64* %383, align 4
  %385 = and i64 %384, 131072
  %386 = icmp ne i64 %385, 0
  %387 = and i32 %374, 16
  %388 = icmp eq i32 %387, 0
  %389 = or i1 %388, %386
  br i1 %389, label %399, label %390

; <label>:390:                                    ; preds = %382
  %391 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 3, i32 1
  %392 = load i64, i64* %391, align 4
  %393 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 0, i32 1
  %394 = load i64, i64* %393, align 4
  %395 = or i64 %394, %392
  %396 = icmp ne i64 %395, 0
  %397 = zext i1 %396 to i32
  %398 = shl nuw nsw i32 %397, 6
  br label %399

; <label>:399:                                    ; preds = %390, %382, %377, %373
  %400 = phi i32 [ 0, %373 ], [ %398, %390 ], [ 64, %382 ], [ 64, %377 ]
  %401 = and i32 %374, -97
  %402 = or i32 %400, %401
  store i32 %402, i32* %365, align 4
  br label %403

; <label>:403:                                    ; preds = %399, %359
  %404 = phi i32* [ %365, %399 ], [ %360, %359 ]
  %405 = phi i32 [ %402, %399 ], [ %361, %359 ]
  %406 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 0, i64 4
  store i64 %356, i64* %406, align 16
  %407 = or i32 %317, %175
  %408 = lshr i32 %195, 16
  %409 = shl i32 %197, 16
  %410 = and i32 %409, 16711680
  %411 = and i32 %197, -16777216
  %412 = or i32 %411, %408
  %413 = or i32 %412, %410
  %414 = zext i32 %413 to i64
  %415 = and i32 %195, 65535
  %416 = and i32 %197, 983040
  %417 = or i32 %416, %415
  %418 = and i32 %197, 8388608
  %419 = icmp eq i32 %418, 0
  %420 = shl nuw i32 %417, 12
  %421 = or i32 %420, 4095
  %422 = select i1 %419, i32 %417, i32 %421
  %423 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 1, i32 0
  store i32 %407, i32* %423, align 4
  %424 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 1, i32 1
  store i64 %414, i64* %424, align 4
  %425 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 1, i32 2
  store i32 %422, i32* %425, align 4
  %426 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 1, i32 3
  store i32 %197, i32* %426, align 4
  %427 = and i32 %405, 16384
  %428 = icmp eq i32 %427, 0
  %429 = icmp eq i32 %211, 0
  %430 = or i1 %429, %428
  br i1 %430, label %434, label %431

; <label>:431:                                    ; preds = %403
  %432 = and i32 %405, -32881
  %433 = or i32 %432, 32816
  br label %439

; <label>:434:                                    ; preds = %403
  %435 = lshr i32 %197, 18
  %436 = and i32 %435, 16
  %437 = and i32 %405, -32785
  %438 = or i32 %437, %436
  br label %439

; <label>:439:                                    ; preds = %434, %431
  %440 = phi i32 [ %433, %431 ], [ %438, %434 ]
  store i32 %440, i32* %404, align 4
  %441 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 2, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = lshr i32 %442, 17
  %444 = and i32 %443, 32
  %445 = trunc i32 %440 to i16
  %446 = icmp slt i16 %445, 0
  br i1 %446, label %475, label %447

; <label>:447:                                    ; preds = %439
  %448 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 16, i64 0
  %449 = load i64, i64* %448, align 4
  %450 = and i64 %449, 1
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %460, label %452

; <label>:452:                                    ; preds = %447
  %453 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 7
  %454 = load i64, i64* %453, align 4
  %455 = and i64 %454, 131072
  %456 = icmp ne i64 %455, 0
  %457 = and i32 %440, 16
  %458 = icmp eq i32 %457, 0
  %459 = or i1 %458, %456
  br i1 %459, label %460, label %462

; <label>:460:                                    ; preds = %452, %447
  %461 = or i32 %444, 64
  br label %475

; <label>:462:                                    ; preds = %452
  %463 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 3, i32 1
  %464 = load i64, i64* %463, align 4
  %465 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 0, i32 1
  %466 = load i64, i64* %465, align 4
  %467 = or i64 %466, %464
  %468 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 11, i64 2, i32 1
  %469 = load i64, i64* %468, align 4
  %470 = or i64 %467, %469
  %471 = icmp ne i64 %470, 0
  %472 = zext i1 %471 to i32
  %473 = shl nuw nsw i32 %472, 6
  %474 = or i32 %473, %444
  br label %475

; <label>:475:                                    ; preds = %462, %460, %439
  %476 = phi i32 [ %444, %439 ], [ %461, %460 ], [ %474, %462 ]
  %477 = and i32 %440, -97
  %478 = or i32 %476, %477
  store i32 %478, i32* %404, align 4
  %479 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %487, label %482, !prof !2

; <label>:482:                                    ; preds = %475
  %483 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %484 = and i32 %478, 3
  tail call void %483(i32 %484, i32 %317)
  %485 = load i32, i32* %404, align 4
  %486 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %487

; <label>:487:                                    ; preds = %482, %475
  %488 = phi %struct.CPUX86State* [ %486, %482 ], [ %358, %475 ]
  %489 = phi i32 [ %485, %482 ], [ %478, %475 ]
  %490 = and i32 %489, -4
  %491 = or i32 %490, %317
  store i32 %491, i32* %404, align 4
  %492 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %488, i64 0, i32 5
  store i64 %173, i64* %492, align 16
  %493 = and i32 %144, 1
  %494 = icmp eq i32 %493, 0
  %495 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %488, i64 0, i32 7
  %496 = load i64, i64* %495, align 4
  br i1 %494, label %497, label %499

; <label>:497:                                    ; preds = %487
  %498 = and i64 %496, -513
  store i64 %498, i64* %495, align 4
  br label %499

; <label>:499:                                    ; preds = %487, %497
  %500 = phi i64 [ %498, %497 ], [ %496, %487 ]
  %501 = and i64 %500, -213249
  store i64 %501, i64* %495, align 4
  br label %1280

; <label>:502:                                    ; preds = %103
  br i1 %111, label %503, label %510

; <label>:503:                                    ; preds = %502
  %504 = add i32 %0, -8
  %505 = icmp ult i32 %504, 10
  br i1 %505, label %506, label %510

; <label>:506:                                    ; preds = %503
  %507 = sext i32 %504 to i64
  %508 = getelementptr inbounds [10 x i32], [10 x i32]* @switch.table, i64 0, i64 %507
  %509 = load i32, i32* %508, align 4
  br label %510

; <label>:510:                                    ; preds = %506, %503, %502
  %511 = phi i32 [ 0, %502 ], [ %509, %506 ], [ 0, %503 ]
  br i1 %109, label %515, label %512

; <label>:512:                                    ; preds = %510
  %513 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 5
  %514 = load i64, i64* %513, align 16
  br label %515

; <label>:515:                                    ; preds = %512, %510
  %516 = phi i64 [ %514, %512 ], [ %3, %510 ]
  %517 = trunc i64 %516 to i32
  %518 = shl nsw i32 %0, 3
  %519 = or i32 %518, 7
  %520 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 15, i32 2
  %521 = load i32, i32* %520, align 4
  %522 = icmp ugt i32 %519, %521
  br i1 %522, label %523, label %525

; <label>:523:                                    ; preds = %515
  %524 = or i32 %518, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %524) #13
  unreachable

; <label>:525:                                    ; preds = %515
  %526 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 15, i32 1
  %527 = load i64, i64* %526, align 4
  %528 = sext i32 %518 to i64
  %529 = add i64 %527, %528
  %530 = tail call fastcc i32 @ldl_kernel(i64 %529)
  %531 = add i64 %529, 4
  %532 = tail call fastcc i32 @ldl_kernel(i64 %531)
  %533 = lshr i32 %532, 8
  %534 = trunc i32 %533 to i5
  switch i5 %534, label %577 [
    i5 5, label %535
    i5 6, label %579
    i5 7, label %579
    i5 14, label %579
    i5 15, label %579
  ]

; <label>:535:                                    ; preds = %525
  %536 = trunc i32 %532 to i16
  %537 = icmp slt i16 %536, 0
  br i1 %537, label %540, label %538

; <label>:538:                                    ; preds = %535
  %539 = or i32 %518, 2
  tail call fastcc void @raise_exception_err(i32 11, i32 %539) #13
  unreachable

; <label>:540:                                    ; preds = %535
  tail call fastcc void @switch_tss(i32 %518, i32 %530, i32 %532, i32 2, i32 %517)
  %541 = icmp eq i32 %511, 0
  br i1 %541, label %1280, label %542

; <label>:542:                                    ; preds = %540
  %543 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %544 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %543, i64 0, i32 13, i32 3
  %545 = load i32, i32* %544, align 16
  %546 = lshr i32 %545, 11
  %547 = and i32 %546, 1
  %548 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %543, i64 0, i32 11, i64 2, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = and i32 %549, 4194304
  %551 = icmp eq i32 %550, 0
  %552 = lshr exact i32 %550, 6
  %553 = xor i32 %552, 65536
  %554 = add nsw i32 %553, -1
  %555 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %543, i64 0, i32 0, i64 4
  %556 = load i64, i64* %555, align 16
  %557 = shl i32 2, %547
  %558 = zext i32 %557 to i64
  %559 = sub i64 %556, %558
  %560 = zext i32 %554 to i64
  %561 = and i64 %560, %559
  %562 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %543, i64 0, i32 11, i64 2, i32 1
  %563 = load i64, i64* %562, align 4
  %564 = add i64 %561, %563
  %565 = icmp eq i32 %547, 0
  br i1 %565, label %567, label %566

; <label>:566:                                    ; preds = %542
  tail call fastcc void @stl_kernel(i64 %564, i32 %2)
  br label %568

; <label>:567:                                    ; preds = %542
  tail call fastcc void @stw_kernel(i64 %564, i32 %2)
  br label %568

; <label>:568:                                    ; preds = %567, %566
  %569 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %570 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %569, i64 0, i32 0, i64 4
  br i1 %551, label %571, label %576

; <label>:571:                                    ; preds = %568
  %572 = load i64, i64* %570, align 16
  %573 = and i64 %572, -65536
  %574 = and i64 %561, 65535
  %575 = or i64 %573, %574
  store i64 %575, i64* %570, align 16
  br label %1280

; <label>:576:                                    ; preds = %568
  store i64 %561, i64* %570, align 16
  br label %1280

; <label>:577:                                    ; preds = %525
  %578 = or i32 %518, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %578) #13
  unreachable

; <label>:579:                                    ; preds = %525, %525, %525, %525
  %580 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %581 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %580, i64 0, i32 8
  %582 = load i32, i32* %581, align 4
  %583 = and i32 %582, 3
  br i1 %109, label %584, label %590

; <label>:584:                                    ; preds = %579
  %585 = lshr i32 %532, 13
  %586 = and i32 %585, 3
  %587 = icmp ult i32 %586, %583
  br i1 %587, label %588, label %590

; <label>:588:                                    ; preds = %584
  %589 = or i32 %518, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %589) #13
  unreachable

; <label>:590:                                    ; preds = %584, %579
  %591 = trunc i32 %532 to i16
  %592 = icmp slt i16 %591, 0
  br i1 %592, label %595, label %593

; <label>:593:                                    ; preds = %590
  %594 = or i32 %518, 2
  tail call fastcc void @raise_exception_err(i32 11, i32 %594) #13
  unreachable

; <label>:595:                                    ; preds = %590
  %596 = lshr i32 %530, 16
  %597 = and i32 %532, -65536
  %598 = and i32 %530, 65535
  %599 = or i32 %597, %598
  %600 = and i32 %596, 65532
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %603

; <label>:602:                                    ; preds = %595
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:603:                                    ; preds = %595
  %604 = and i32 %596, 4
  %605 = icmp eq i32 %604, 0
  %606 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %580, i64 0, i32 12
  %607 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %580, i64 0, i32 14
  %608 = select i1 %605, %struct.SegmentCache* %607, %struct.SegmentCache* %606
  %609 = or i32 %596, 7
  %610 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %608, i64 0, i32 2
  %611 = load i32, i32* %610, align 4
  %612 = icmp ugt i32 %609, %611
  br i1 %612, label %613, label %614

; <label>:613:                                    ; preds = %603
  tail call fastcc void @raise_exception_err(i32 13, i32 %600) #13
  unreachable

; <label>:614:                                    ; preds = %603
  %615 = and i32 %596, 65528
  %616 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %608, i64 0, i32 1
  %617 = load i64, i64* %616, align 4
  %618 = zext i32 %615 to i64
  %619 = add i64 %617, %618
  %620 = tail call fastcc i32 @ldl_kernel(i64 %619)
  %621 = add i64 %619, 4
  %622 = tail call fastcc i32 @ldl_kernel(i64 %621)
  %623 = and i32 %622, 6144
  %624 = icmp eq i32 %623, 6144
  br i1 %624, label %626, label %625

; <label>:625:                                    ; preds = %614
  tail call fastcc void @raise_exception_err(i32 13, i32 %600) #13
  unreachable

; <label>:626:                                    ; preds = %614
  %627 = lshr i32 %622, 13
  %628 = and i32 %627, 3
  %629 = icmp ugt i32 %628, %583
  br i1 %629, label %630, label %631

; <label>:630:                                    ; preds = %626
  tail call fastcc void @raise_exception_err(i32 13, i32 %600) #13
  unreachable

; <label>:631:                                    ; preds = %626
  %632 = trunc i32 %622 to i16
  %633 = icmp slt i16 %632, 0
  br i1 %633, label %635, label %634

; <label>:634:                                    ; preds = %631
  tail call fastcc void @raise_exception_err(i32 11, i32 %600) #13
  unreachable

; <label>:635:                                    ; preds = %631
  %636 = and i32 %622, 1024
  %637 = icmp eq i32 %636, 0
  %638 = icmp ult i32 %628, %583
  %639 = and i1 %637, %638
  br i1 %639, label %640, label %737

; <label>:640:                                    ; preds = %635
  %641 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %642 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %641, i64 0, i32 13, i32 3
  %643 = load i32, i32* %642, align 16
  %644 = trunc i32 %643 to i16
  %645 = icmp slt i16 %644, 0
  br i1 %645, label %647, label %646

; <label>:646:                                    ; preds = %640
  tail call void (%struct.CPUX86State*, i8*, ...) @cpu_abort(%struct.CPUX86State* %641, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)) #13
  unreachable

; <label>:647:                                    ; preds = %640
  %648 = lshr i32 %643, 11
  %649 = and i32 %648, 1
  %650 = shl nuw nsw i32 %628, 2
  %651 = or i32 %650, 2
  %652 = shl i32 %651, %649
  %653 = shl i32 4, %649
  %654 = add nsw i32 %653, -1
  %655 = add nsw i32 %654, %652
  %656 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %641, i64 0, i32 13, i32 2
  %657 = load i32, i32* %656, align 4
  %658 = icmp ugt i32 %655, %657
  br i1 %658, label %659, label %663

; <label>:659:                                    ; preds = %647
  %660 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %641, i64 0, i32 13, i32 0
  %661 = load i32, i32* %660, align 16
  %662 = and i32 %661, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %662) #13
  unreachable

; <label>:663:                                    ; preds = %647
  %664 = icmp eq i32 %649, 0
  %665 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %641, i64 0, i32 13, i32 1
  %666 = load i64, i64* %665, align 4
  %667 = zext i32 %652 to i64
  %668 = add i64 %666, %667
  br i1 %664, label %669, label %677

; <label>:669:                                    ; preds = %663
  %670 = tail call fastcc i32 @lduw_kernel(i64 %668)
  %671 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %672 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %671, i64 0, i32 13, i32 1
  %673 = load i64, i64* %672, align 4
  %674 = add nuw nsw i64 %667, 2
  %675 = add i64 %674, %673
  %676 = tail call fastcc i32 @lduw_kernel(i64 %675)
  br label %685

; <label>:677:                                    ; preds = %663
  %678 = tail call fastcc i32 @ldl_kernel(i64 %668)
  %679 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %680 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %679, i64 0, i32 13, i32 1
  %681 = load i64, i64* %680, align 4
  %682 = add nuw nsw i64 %667, 4
  %683 = add i64 %682, %681
  %684 = tail call fastcc i32 @lduw_kernel(i64 %683)
  br label %685

; <label>:685:                                    ; preds = %677, %669
  %686 = phi i32 [ %670, %669 ], [ %678, %677 ]
  %687 = phi i32 [ %676, %669 ], [ %684, %677 ]
  %688 = and i32 %687, 65532
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %691

; <label>:690:                                    ; preds = %685
  tail call fastcc void @raise_exception_err(i32 10, i32 0) #13
  unreachable

; <label>:691:                                    ; preds = %685
  %692 = and i32 %687, 3
  %693 = icmp eq i32 %692, %628
  br i1 %693, label %695, label %694

; <label>:694:                                    ; preds = %691
  tail call fastcc void @raise_exception_err(i32 10, i32 %688) #13
  unreachable

; <label>:695:                                    ; preds = %691
  %696 = and i32 %687, 4
  %697 = icmp eq i32 %696, 0
  %698 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %699 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %698, i64 0, i32 12
  %700 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %698, i64 0, i32 14
  %701 = select i1 %697, %struct.SegmentCache* %700, %struct.SegmentCache* %699
  %702 = or i32 %687, 7
  %703 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %701, i64 0, i32 2
  %704 = load i32, i32* %703, align 4
  %705 = icmp ugt i32 %702, %704
  br i1 %705, label %706, label %707

; <label>:706:                                    ; preds = %695
  tail call fastcc void @raise_exception_err(i32 10, i32 %688) #13
  unreachable

; <label>:707:                                    ; preds = %695
  %708 = and i32 %687, -8
  %709 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %701, i64 0, i32 1
  %710 = load i64, i64* %709, align 4
  %711 = sext i32 %708 to i64
  %712 = add i64 %710, %711
  %713 = tail call fastcc i32 @ldl_kernel(i64 %712)
  %714 = add i64 %712, 4
  %715 = tail call fastcc i32 @ldl_kernel(i64 %714)
  %716 = lshr i32 %715, 13
  %717 = and i32 %716, 3
  %718 = icmp eq i32 %717, %628
  br i1 %718, label %720, label %719

; <label>:719:                                    ; preds = %707
  tail call fastcc void @raise_exception_err(i32 10, i32 %688) #13
  unreachable

; <label>:720:                                    ; preds = %707
  %721 = and i32 %715, 6656
  %722 = icmp eq i32 %721, 4608
  br i1 %722, label %724, label %723

; <label>:723:                                    ; preds = %720
  tail call fastcc void @raise_exception_err(i32 10, i32 %688) #13
  unreachable

; <label>:724:                                    ; preds = %720
  %725 = trunc i32 %715 to i16
  %726 = icmp slt i16 %725, 0
  br i1 %726, label %728, label %727

; <label>:727:                                    ; preds = %724
  tail call fastcc void @raise_exception_err(i32 10, i32 %688) #13
  unreachable

; <label>:728:                                    ; preds = %724
  %729 = lshr i32 %713, 16
  %730 = shl i32 %715, 16
  %731 = and i32 %730, 16711680
  %732 = and i32 %715, -16777216
  %733 = or i32 %732, %729
  %734 = or i32 %733, %731
  %735 = zext i32 %734 to i64
  %736 = and i32 %713, 65535
  br label %757

; <label>:737:                                    ; preds = %635
  %738 = icmp ne i32 %636, 0
  %739 = icmp eq i32 %628, %583
  %740 = or i1 %738, %739
  br i1 %740, label %741, label %756

; <label>:741:                                    ; preds = %737
  %742 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %743 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %742, i64 0, i32 7
  %744 = load i64, i64* %743, align 4
  %745 = and i64 %744, 131072
  %746 = icmp eq i64 %745, 0
  br i1 %746, label %748, label %747

; <label>:747:                                    ; preds = %741
  tail call fastcc void @raise_exception_err(i32 13, i32 %600) #13
  unreachable

; <label>:748:                                    ; preds = %741
  %749 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %742, i64 0, i32 11, i64 2, i32 3
  %750 = load i32, i32* %749, align 4
  %751 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %742, i64 0, i32 11, i64 2, i32 1
  %752 = load i64, i64* %751, align 4
  %753 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %742, i64 0, i32 0, i64 4
  %754 = load i64, i64* %753, align 16
  %755 = trunc i64 %754 to i32
  br label %757

; <label>:756:                                    ; preds = %737
  tail call fastcc void @raise_exception_err(i32 13, i32 %600) #13
  unreachable

; <label>:757:                                    ; preds = %748, %728
  %758 = phi i32 [ %687, %728 ], [ 0, %748 ]
  %759 = phi i32 [ %686, %728 ], [ %755, %748 ]
  %760 = phi i32 [ %736, %728 ], [ 0, %748 ]
  %761 = phi i32 [ %715, %728 ], [ 0, %748 ]
  %762 = phi i1 [ true, %728 ], [ false, %748 ]
  %763 = phi i32 [ %628, %728 ], [ %583, %748 ]
  %764 = phi i32 [ %715, %728 ], [ %750, %748 ]
  %765 = phi i64 [ %735, %728 ], [ %752, %748 ]
  %766 = lshr i32 %764, 6
  %767 = and i32 %766, 65536
  %768 = xor i32 %767, 65536
  %769 = add nsw i32 %768, -1
  %770 = and i32 %533, 24
  %771 = icmp eq i32 %770, 8
  br i1 %771, label %772, label %874

; <label>:772:                                    ; preds = %757
  br i1 %762, label %773, label %831

; <label>:773:                                    ; preds = %772
  %774 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %775 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %774, i64 0, i32 7
  %776 = load i64, i64* %775, align 4
  %777 = and i64 %776, 131072
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %812, label %779

; <label>:779:                                    ; preds = %773
  %780 = add i32 %759, -4
  %781 = and i32 %769, %780
  %782 = zext i32 %781 to i64
  %783 = add i64 %782, %765
  %784 = and i64 %783, 4294967295
  %785 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %774, i64 0, i32 11, i64 5, i32 0
  %786 = load i32, i32* %785, align 4
  tail call fastcc void @stl_kernel(i64 %784, i32 %786)
  %787 = add i32 %759, -8
  %788 = and i32 %769, %787
  %789 = zext i32 %788 to i64
  %790 = add i64 %789, %765
  %791 = and i64 %790, 4294967295
  %792 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %793 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %792, i64 0, i32 11, i64 4, i32 0
  %794 = load i32, i32* %793, align 4
  tail call fastcc void @stl_kernel(i64 %791, i32 %794)
  %795 = add i32 %759, -12
  %796 = and i32 %769, %795
  %797 = zext i32 %796 to i64
  %798 = add i64 %797, %765
  %799 = and i64 %798, 4294967295
  %800 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %801 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %800, i64 0, i32 11, i64 3, i32 0
  %802 = load i32, i32* %801, align 4
  tail call fastcc void @stl_kernel(i64 %799, i32 %802)
  %803 = add i32 %759, -16
  %804 = and i32 %769, %803
  %805 = zext i32 %804 to i64
  %806 = add i64 %805, %765
  %807 = and i64 %806, 4294967295
  %808 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %809 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %808, i64 0, i32 11, i64 0, i32 0
  %810 = load i32, i32* %809, align 4
  tail call fastcc void @stl_kernel(i64 %807, i32 %810)
  %811 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %812

; <label>:812:                                    ; preds = %779, %773
  %813 = phi %struct.CPUX86State* [ %774, %773 ], [ %811, %779 ]
  %814 = phi i32 [ %759, %773 ], [ %803, %779 ]
  %815 = add i32 %814, -4
  %816 = and i32 %815, %769
  %817 = zext i32 %816 to i64
  %818 = add i64 %817, %765
  %819 = and i64 %818, 4294967295
  %820 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %813, i64 0, i32 11, i64 2, i32 0
  %821 = load i32, i32* %820, align 4
  tail call fastcc void @stl_kernel(i64 %819, i32 %821)
  %822 = add i32 %814, -8
  %823 = and i32 %822, %769
  %824 = zext i32 %823 to i64
  %825 = add i64 %824, %765
  %826 = and i64 %825, 4294967295
  %827 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %828 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %827, i64 0, i32 0, i64 4
  %829 = load i64, i64* %828, align 16
  %830 = trunc i64 %829 to i32
  tail call fastcc void @stl_kernel(i64 %826, i32 %830)
  br label %831

; <label>:831:                                    ; preds = %812, %772
  %832 = phi i32 [ %822, %812 ], [ %759, %772 ]
  %833 = add i32 %832, -4
  %834 = and i32 %833, %769
  %835 = zext i32 %834 to i64
  %836 = add i64 %835, %765
  %837 = and i64 %836, 4294967295
  %838 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %839 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %838, i64 0, i32 7
  %840 = load i64, i64* %839, align 4
  %841 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %838, i64 0, i32 1
  %842 = load i64, i64* %841, align 16
  %843 = trunc i64 %842 to i32
  %844 = tail call i32 @helper_cc_compute_all(i32 %843) #5
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %838, i64 0, i32 6
  %847 = load i32, i32* %846, align 8
  %848 = and i32 %847, 1024
  %849 = zext i32 %848 to i64
  %850 = or i64 %840, %845
  %851 = or i64 %850, %849
  %852 = or i64 %851, 2
  %853 = trunc i64 %852 to i32
  tail call fastcc void @stl_kernel(i64 %837, i32 %853)
  %854 = add i32 %832, -8
  %855 = and i32 %854, %769
  %856 = zext i32 %855 to i64
  %857 = add i64 %856, %765
  %858 = and i64 %857, 4294967295
  %859 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %860 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %859, i64 0, i32 11, i64 1, i32 0
  %861 = load i32, i32* %860, align 4
  tail call fastcc void @stl_kernel(i64 %858, i32 %861)
  %862 = add i32 %832, -12
  %863 = and i32 %862, %769
  %864 = zext i32 %863 to i64
  %865 = add i64 %864, %765
  %866 = and i64 %865, 4294967295
  tail call fastcc void @stl_kernel(i64 %866, i32 %517)
  %867 = icmp eq i32 %511, 0
  br i1 %867, label %966, label %868

; <label>:868:                                    ; preds = %831
  %869 = add i32 %832, -16
  %870 = and i32 %869, %769
  %871 = zext i32 %870 to i64
  %872 = add i64 %871, %765
  %873 = and i64 %872, 4294967295
  tail call fastcc void @stl_kernel(i64 %873, i32 %2)
  br label %966

; <label>:874:                                    ; preds = %757
  br i1 %762, label %875, label %927

; <label>:875:                                    ; preds = %874
  %876 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %877 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %876, i64 0, i32 7
  %878 = load i64, i64* %877, align 4
  %879 = and i64 %878, 131072
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %910, label %881

; <label>:881:                                    ; preds = %875
  %882 = add i32 %759, -2
  %883 = and i32 %769, %882
  %884 = zext i32 %883 to i64
  %885 = add i64 %884, %765
  %886 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %876, i64 0, i32 11, i64 5, i32 0
  %887 = load i32, i32* %886, align 4
  tail call fastcc void @stw_kernel(i64 %885, i32 %887)
  %888 = add i32 %759, -4
  %889 = and i32 %769, %888
  %890 = zext i32 %889 to i64
  %891 = add i64 %890, %765
  %892 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %893 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %892, i64 0, i32 11, i64 4, i32 0
  %894 = load i32, i32* %893, align 4
  tail call fastcc void @stw_kernel(i64 %891, i32 %894)
  %895 = add i32 %759, -6
  %896 = and i32 %769, %895
  %897 = zext i32 %896 to i64
  %898 = add i64 %897, %765
  %899 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %900 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %899, i64 0, i32 11, i64 3, i32 0
  %901 = load i32, i32* %900, align 4
  tail call fastcc void @stw_kernel(i64 %898, i32 %901)
  %902 = add i32 %759, -8
  %903 = and i32 %769, %902
  %904 = zext i32 %903 to i64
  %905 = add i64 %904, %765
  %906 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %907 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %906, i64 0, i32 11, i64 0, i32 0
  %908 = load i32, i32* %907, align 4
  tail call fastcc void @stw_kernel(i64 %905, i32 %908)
  %909 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %910

; <label>:910:                                    ; preds = %881, %875
  %911 = phi %struct.CPUX86State* [ %876, %875 ], [ %909, %881 ]
  %912 = phi i32 [ %759, %875 ], [ %902, %881 ]
  %913 = add i32 %912, -2
  %914 = and i32 %913, %769
  %915 = zext i32 %914 to i64
  %916 = add i64 %915, %765
  %917 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %911, i64 0, i32 11, i64 2, i32 0
  %918 = load i32, i32* %917, align 4
  tail call fastcc void @stw_kernel(i64 %916, i32 %918)
  %919 = add i32 %912, -4
  %920 = and i32 %919, %769
  %921 = zext i32 %920 to i64
  %922 = add i64 %921, %765
  %923 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %924 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %923, i64 0, i32 0, i64 4
  %925 = load i64, i64* %924, align 16
  %926 = trunc i64 %925 to i32
  tail call fastcc void @stw_kernel(i64 %922, i32 %926)
  br label %927

; <label>:927:                                    ; preds = %910, %874
  %928 = phi i32 [ %919, %910 ], [ %759, %874 ]
  %929 = add i32 %928, -2
  %930 = and i32 %929, %769
  %931 = zext i32 %930 to i64
  %932 = add i64 %931, %765
  %933 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %934 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %933, i64 0, i32 7
  %935 = load i64, i64* %934, align 4
  %936 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %933, i64 0, i32 1
  %937 = load i64, i64* %936, align 16
  %938 = trunc i64 %937 to i32
  %939 = tail call i32 @helper_cc_compute_all(i32 %938) #5
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %933, i64 0, i32 6
  %942 = load i32, i32* %941, align 8
  %943 = and i32 %942, 1024
  %944 = zext i32 %943 to i64
  %945 = or i64 %935, %940
  %946 = or i64 %945, %944
  %947 = or i64 %946, 2
  %948 = trunc i64 %947 to i32
  tail call fastcc void @stw_kernel(i64 %932, i32 %948)
  %949 = add i32 %928, -4
  %950 = and i32 %949, %769
  %951 = zext i32 %950 to i64
  %952 = add i64 %951, %765
  %953 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %954 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %953, i64 0, i32 11, i64 1, i32 0
  %955 = load i32, i32* %954, align 4
  tail call fastcc void @stw_kernel(i64 %952, i32 %955)
  %956 = add i32 %928, -6
  %957 = and i32 %956, %769
  %958 = zext i32 %957 to i64
  %959 = add i64 %958, %765
  tail call fastcc void @stw_kernel(i64 %959, i32 %517)
  %960 = icmp eq i32 %511, 0
  br i1 %960, label %966, label %961

; <label>:961:                                    ; preds = %927
  %962 = add i32 %928, -8
  %963 = and i32 %962, %769
  %964 = zext i32 %963 to i64
  %965 = add i64 %964, %765
  tail call fastcc void @stw_kernel(i64 %965, i32 %2)
  br label %966

; <label>:966:                                    ; preds = %961, %927, %868, %831
  %967 = phi i32 [ %862, %831 ], [ %869, %868 ], [ %956, %927 ], [ %962, %961 ]
  br i1 %762, label %968, label %1074

; <label>:968:                                    ; preds = %966
  %969 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %970 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 7
  %971 = load i64, i64* %970, align 4
  %972 = and i64 %971, 131072
  %973 = icmp eq i64 %972, 0
  br i1 %973, label %974, label %978

; <label>:974:                                    ; preds = %968
  %975 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 8
  %976 = load i32, i32* %975, align 4
  %977 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 2, i32 3
  br label %1027

; <label>:978:                                    ; preds = %968
  %979 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 0, i32 0
  %980 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 8
  %981 = bitcast i32* %979 to i8*
  br label %982

; <label>:982:                                    ; preds = %985, %978
  %983 = phi i64 [ 0, %978 ], [ %987, %985 ]
  %984 = icmp ult i64 %983, 20
  br i1 %984, label %985, label %988

; <label>:985:                                    ; preds = %982
  %986 = getelementptr i8, i8* %981, i64 %983
  store i8 0, i8* %986
  %987 = add i64 %983, 1
  br label %982

; <label>:988:                                    ; preds = %982
  %989 = load i32, i32* %980, align 4
  %990 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 2, i32 3
  %991 = load i32, i32* %990, align 4
  %992 = lshr i32 %991, 17
  %993 = and i32 %992, 32
  %994 = trunc i32 %989 to i16
  %995 = icmp slt i16 %994, 0
  %996 = or i32 %993, 64
  %997 = select i1 %995, i32 %993, i32 %996
  %998 = and i32 %989, -97
  %999 = or i32 %997, %998
  %1000 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 3, i32 0
  %1001 = bitcast i32* %1000 to i8*
  br label %1002

; <label>:1002:                                   ; preds = %1005, %988
  %1003 = phi i64 [ 0, %988 ], [ %1007, %1005 ]
  %1004 = icmp ult i64 %1003, 20
  br i1 %1004, label %1005, label %1008

; <label>:1005:                                   ; preds = %1002
  %1006 = getelementptr i8, i8* %1001, i64 %1003
  store i8 0, i8* %1006
  %1007 = add i64 %1003, 1
  br label %1002

; <label>:1008:                                   ; preds = %1002
  %1009 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 4, i32 0
  %1010 = bitcast i32* %1009 to i8*
  br label %1011

; <label>:1011:                                   ; preds = %1014, %1008
  %1012 = phi i64 [ 0, %1008 ], [ %1016, %1014 ]
  %1013 = icmp ult i64 %1012, 20
  br i1 %1013, label %1014, label %1017

; <label>:1014:                                   ; preds = %1011
  %1015 = getelementptr i8, i8* %1010, i64 %1012
  store i8 0, i8* %1015
  %1016 = add i64 %1012, 1
  br label %1011

; <label>:1017:                                   ; preds = %1011
  %1018 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 5, i32 0
  %1019 = bitcast i32* %1018 to i8*
  br label %1020

; <label>:1020:                                   ; preds = %1023, %1017
  %1021 = phi i64 [ 0, %1017 ], [ %1025, %1023 ]
  %1022 = icmp ult i64 %1021, 20
  br i1 %1022, label %1023, label %1026

; <label>:1023:                                   ; preds = %1020
  %1024 = getelementptr i8, i8* %1019, i64 %1021
  store i8 0, i8* %1024
  %1025 = add i64 %1021, 1
  br label %1020

; <label>:1026:                                   ; preds = %1020
  store i32 %999, i32* %980, align 4
  br label %1027

; <label>:1027:                                   ; preds = %1026, %974
  %1028 = phi i32* [ %975, %974 ], [ %980, %1026 ]
  %1029 = phi i32* [ %977, %974 ], [ %990, %1026 ]
  %1030 = phi i32 [ %976, %974 ], [ %999, %1026 ]
  %1031 = and i32 %758, -4
  %1032 = or i32 %763, %1031
  %1033 = and i32 %761, 983040
  %1034 = or i32 %1033, %760
  %1035 = and i32 %761, 8388608
  %1036 = icmp eq i32 %1035, 0
  %1037 = shl nuw i32 %1034, 12
  %1038 = or i32 %1037, 4095
  %1039 = select i1 %1036, i32 %1034, i32 %1038
  %1040 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 2, i32 0
  store i32 %1032, i32* %1040, align 4
  %1041 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 2, i32 1
  store i64 %765, i64* %1041, align 4
  %1042 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 2, i32 2
  store i32 %1039, i32* %1042, align 4
  store i32 %761, i32* %1029, align 4
  %1043 = lshr i32 %761, 17
  %1044 = and i32 %1043, 32
  %1045 = trunc i32 %1030 to i16
  %1046 = icmp slt i16 %1045, 0
  br i1 %1046, label %1070, label %1047

; <label>:1047:                                   ; preds = %1027
  %1048 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 16, i64 0
  %1049 = load i64, i64* %1048, align 4
  %1050 = and i64 %1049, 1
  %1051 = icmp eq i64 %1050, 0
  br i1 %1051, label %1057, label %1052

; <label>:1052:                                   ; preds = %1047
  %1053 = icmp ne i64 %972, 0
  %1054 = and i32 %1030, 16
  %1055 = icmp eq i32 %1054, 0
  %1056 = or i1 %1053, %1055
  br i1 %1056, label %1057, label %1059

; <label>:1057:                                   ; preds = %1052, %1047
  %1058 = or i32 %1044, 64
  br label %1070

; <label>:1059:                                   ; preds = %1052
  %1060 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 3, i32 1
  %1061 = load i64, i64* %1060, align 4
  %1062 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %969, i64 0, i32 11, i64 0, i32 1
  %1063 = load i64, i64* %1062, align 4
  %1064 = or i64 %1061, %765
  %1065 = or i64 %1064, %1063
  %1066 = icmp ne i64 %1065, 0
  %1067 = zext i1 %1066 to i32
  %1068 = shl nuw nsw i32 %1067, 6
  %1069 = or i32 %1068, %1044
  br label %1070

; <label>:1070:                                   ; preds = %1059, %1057, %1027
  %1071 = phi i32 [ %1044, %1027 ], [ %1058, %1057 ], [ %1069, %1059 ]
  %1072 = and i32 %1030, -97
  %1073 = or i32 %1071, %1072
  store i32 %1073, i32* %1028, align 4
  br label %1074

; <label>:1074:                                   ; preds = %1070, %966
  %1075 = icmp eq i32 %769, 65535
  br i1 %1075, label %1076, label %1084

; <label>:1076:                                   ; preds = %1074
  %1077 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1078 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1077, i64 0, i32 0, i64 4
  %1079 = load i64, i64* %1078, align 16
  %1080 = and i64 %1079, -65536
  %1081 = and i32 %967, 65535
  %1082 = zext i32 %1081 to i64
  %1083 = or i64 %1080, %1082
  store i64 %1083, i64* %1078, align 16
  br label %1088

; <label>:1084:                                   ; preds = %1074
  %1085 = zext i32 %967 to i64
  %1086 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1087 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1086, i64 0, i32 0, i64 4
  store i64 %1085, i64* %1087, align 16
  br label %1088

; <label>:1088:                                   ; preds = %1084, %1076
  %1089 = phi %struct.CPUX86State* [ %1086, %1084 ], [ %1077, %1076 ]
  %1090 = or i32 %763, %600
  %1091 = lshr i32 %620, 16
  %1092 = shl i32 %622, 16
  %1093 = and i32 %1092, 16711680
  %1094 = and i32 %622, -16777216
  %1095 = or i32 %1094, %1091
  %1096 = or i32 %1095, %1093
  %1097 = zext i32 %1096 to i64
  %1098 = and i32 %620, 65535
  %1099 = and i32 %622, 983040
  %1100 = or i32 %1099, %1098
  %1101 = and i32 %622, 8388608
  %1102 = icmp eq i32 %1101, 0
  %1103 = shl nuw i32 %1100, 12
  %1104 = or i32 %1103, 4095
  %1105 = select i1 %1102, i32 %1100, i32 %1104
  %1106 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 1, i32 0
  store i32 %1090, i32* %1106, align 4
  %1107 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 1, i32 1
  store i64 %1097, i64* %1107, align 4
  %1108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 1, i32 2
  store i32 %1105, i32* %1108, align 4
  %1109 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 1, i32 3
  store i32 %622, i32* %1109, align 4
  %1110 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 8
  %1111 = load i32, i32* %1110, align 4
  %1112 = and i32 %1111, 16384
  %1113 = icmp eq i32 %1112, 0
  %1114 = and i32 %622, 2097152
  %1115 = icmp eq i32 %1114, 0
  %1116 = or i1 %1115, %1113
  br i1 %1116, label %1120, label %1117

; <label>:1117:                                   ; preds = %1088
  %1118 = and i32 %1111, -32881
  %1119 = or i32 %1118, 32816
  br label %1125

; <label>:1120:                                   ; preds = %1088
  %1121 = lshr i32 %622, 18
  %1122 = and i32 %1121, 16
  %1123 = and i32 %1111, -32785
  %1124 = or i32 %1123, %1122
  br label %1125

; <label>:1125:                                   ; preds = %1120, %1117
  %1126 = phi i32 [ %1119, %1117 ], [ %1124, %1120 ]
  store i32 %1126, i32* %1110, align 4
  %1127 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 2, i32 3
  %1128 = load i32, i32* %1127, align 4
  %1129 = lshr i32 %1128, 17
  %1130 = and i32 %1129, 32
  %1131 = trunc i32 %1126 to i16
  %1132 = icmp slt i16 %1131, 0
  br i1 %1132, label %1161, label %1133

; <label>:1133:                                   ; preds = %1125
  %1134 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 16, i64 0
  %1135 = load i64, i64* %1134, align 4
  %1136 = and i64 %1135, 1
  %1137 = icmp eq i64 %1136, 0
  br i1 %1137, label %1146, label %1138

; <label>:1138:                                   ; preds = %1133
  %1139 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 7
  %1140 = load i64, i64* %1139, align 4
  %1141 = and i64 %1140, 131072
  %1142 = icmp ne i64 %1141, 0
  %1143 = and i32 %1126, 16
  %1144 = icmp eq i32 %1143, 0
  %1145 = or i1 %1144, %1142
  br i1 %1145, label %1146, label %1148

; <label>:1146:                                   ; preds = %1138, %1133
  %1147 = or i32 %1130, 64
  br label %1161

; <label>:1148:                                   ; preds = %1138
  %1149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 3, i32 1
  %1150 = load i64, i64* %1149, align 4
  %1151 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 0, i32 1
  %1152 = load i64, i64* %1151, align 4
  %1153 = or i64 %1152, %1150
  %1154 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1089, i64 0, i32 11, i64 2, i32 1
  %1155 = load i64, i64* %1154, align 4
  %1156 = or i64 %1153, %1155
  %1157 = icmp ne i64 %1156, 0
  %1158 = zext i1 %1157 to i32
  %1159 = shl nuw nsw i32 %1158, 6
  %1160 = or i32 %1159, %1130
  br label %1161

; <label>:1161:                                   ; preds = %1148, %1146, %1125
  %1162 = phi i32 [ %1130, %1125 ], [ %1147, %1146 ], [ %1160, %1148 ]
  %1163 = and i32 %1126, -97
  %1164 = or i32 %1162, %1163
  store i32 %1164, i32* %1110, align 4
  %1165 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %1166 = load i32, i32* %1165, align 4
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1173, label %1168, !prof !2

; <label>:1168:                                   ; preds = %1161
  %1169 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %1170 = and i32 %1164, 3
  tail call void %1169(i32 %1170, i32 %763)
  %1171 = load i32, i32* %1110, align 4
  %1172 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %1173

; <label>:1173:                                   ; preds = %1168, %1161
  %1174 = phi %struct.CPUX86State* [ %1172, %1168 ], [ %1089, %1161 ]
  %1175 = phi i32 [ %1171, %1168 ], [ %1164, %1161 ]
  %1176 = and i32 %1175, -4
  %1177 = or i32 %1176, %763
  store i32 %1177, i32* %1110, align 4
  %1178 = zext i32 %599 to i64
  %1179 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1174, i64 0, i32 5
  store i64 %1178, i64* %1179, align 16
  %1180 = and i32 %533, 1
  %1181 = icmp eq i32 %1180, 0
  %1182 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1174, i64 0, i32 7
  %1183 = load i64, i64* %1182, align 4
  br i1 %1181, label %1184, label %1186

; <label>:1184:                                   ; preds = %1173
  %1185 = and i64 %1183, -513
  store i64 %1185, i64* %1182, align 4
  br label %1186

; <label>:1186:                                   ; preds = %1184, %1173
  %1187 = phi i64 [ %1185, %1184 ], [ %1183, %1173 ]
  %1188 = and i64 %1187, -213249
  store i64 %1188, i64* %1182, align 4
  %1189 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %1190 = load i32, i32* %1189, align 4
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1280, label %1192, !prof !2

; <label>:1192:                                   ; preds = %1186
  %1193 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %1193(i32 %583, i32 %763)
  br label %1280

; <label>:1194:                                   ; preds = %62
  br i1 %71, label %1195, label %1210

; <label>:1195:                                   ; preds = %1194
  %1196 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %63, i64 0, i32 46
  %1197 = load i64, i64* %1196, align 16
  %1198 = add i64 %1197, 168
  %1199 = tail call i32 @ldl_phys(i64 %1198)
  %1200 = icmp slt i32 %1199, 0
  br i1 %1200, label %1210, label %1201

; <label>:1201:                                   ; preds = %1195
  %1202 = icmp eq i32 %1, 0
  %1203 = select i1 %1202, i32 768, i32 1024
  %1204 = or i32 %1203, %0
  %1205 = or i32 %1204, -2147483648
  %1206 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1207 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1206, i64 0, i32 46
  %1208 = load i64, i64* %1207, align 16
  %1209 = add i64 %1208, 168
  tail call void @stl_phys(i64 %1209, i32 %1205)
  br label %1210

; <label>:1210:                                   ; preds = %1201, %1195, %1194
  %1211 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1212 = shl nsw i32 %0, 2
  %1213 = or i32 %1212, 3
  %1214 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1211, i64 0, i32 15, i32 2
  %1215 = load i32, i32* %1214, align 4
  %1216 = icmp ugt i32 %1213, %1215
  br i1 %1216, label %1217, label %1220

; <label>:1217:                                   ; preds = %1210
  %1218 = shl nsw i32 %0, 3
  %1219 = or i32 %1218, 2
  tail call fastcc void @raise_exception_err(i32 13, i32 %1219) #13
  unreachable

; <label>:1220:                                   ; preds = %1210
  %1221 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1211, i64 0, i32 15, i32 1
  %1222 = load i64, i64* %1221, align 4
  %1223 = sext i32 %1212 to i64
  %1224 = add i64 %1222, %1223
  %1225 = tail call fastcc i32 @lduw_kernel(i64 %1224)
  %1226 = add i64 %1224, 2
  %1227 = tail call fastcc i32 @lduw_kernel(i64 %1226)
  %1228 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1229 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 0, i64 4
  %1230 = load i64, i64* %1229, align 16
  %1231 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 11, i64 2, i32 1
  %1232 = load i64, i64* %1231, align 4
  %1233 = icmp eq i32 %1, 0
  br i1 %1233, label %1234, label %1237

; <label>:1234:                                   ; preds = %1220
  %1235 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 5
  %1236 = load i64, i64* %1235, align 16
  br label %1237

; <label>:1237:                                   ; preds = %1220, %1234
  %1238 = phi i64 [ %1236, %1234 ], [ %3, %1220 ]
  %1239 = trunc i64 %1238 to i32
  %1240 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 11, i64 1, i32 0
  %1241 = load i32, i32* %1240, align 4
  %1242 = add i64 %1230, 65534
  %1243 = and i64 %1242, 65535
  %1244 = add i64 %1243, %1232
  %1245 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 7
  %1246 = load i64, i64* %1245, align 4
  %1247 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 1
  %1248 = load i64, i64* %1247, align 16
  %1249 = trunc i64 %1248 to i32
  %1250 = tail call i32 @helper_cc_compute_all(i32 %1249) #5
  %1251 = zext i32 %1250 to i64
  %1252 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1228, i64 0, i32 6
  %1253 = load i32, i32* %1252, align 8
  %1254 = and i32 %1253, 1024
  %1255 = zext i32 %1254 to i64
  %1256 = or i64 %1246, %1251
  %1257 = or i64 %1256, %1255
  %1258 = or i64 %1257, 2
  %1259 = trunc i64 %1258 to i32
  tail call fastcc void @stw_kernel(i64 %1244, i32 %1259)
  %1260 = add i64 %1230, 65532
  %1261 = and i64 %1260, 65535
  %1262 = add i64 %1261, %1232
  tail call fastcc void @stw_kernel(i64 %1262, i32 %1241)
  %1263 = add i64 %1230, 65530
  %1264 = and i64 %1263, 65535
  %1265 = add i64 %1264, %1232
  tail call fastcc void @stw_kernel(i64 %1265, i32 %1239)
  %1266 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1267 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1266, i64 0, i32 0, i64 4
  %1268 = load i64, i64* %1267, align 16
  %1269 = and i64 %1268, -65536
  %1270 = or i64 %1269, %1264
  store i64 %1270, i64* %1267, align 16
  %1271 = zext i32 %1225 to i64
  %1272 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1266, i64 0, i32 5
  store i64 %1271, i64* %1272, align 16
  %1273 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1266, i64 0, i32 11, i64 1, i32 0
  store i32 %1227, i32* %1273, align 4
  %1274 = shl i32 %1227, 4
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1266, i64 0, i32 11, i64 1, i32 1
  store i64 %1275, i64* %1276, align 4
  %1277 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1266, i64 0, i32 7
  %1278 = load i64, i64* %1277, align 4
  %1279 = and i64 %1278, -328449
  store i64 %1279, i64* %1277, align 4
  br label %1280

; <label>:1280:                                   ; preds = %1192, %1186, %576, %571, %540, %499, %1237
  %1281 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1282 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1281, i64 0, i32 8
  %1283 = load i32, i32* %1282, align 4
  %1284 = and i32 %1283, 2097152
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1296, label %1286

; <label>:1286:                                   ; preds = %1280
  %1287 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1281, i64 0, i32 46
  %1288 = load i64, i64* %1287, align 16
  %1289 = add i64 %1288, 168
  %1290 = tail call i32 @ldl_phys(i64 %1289)
  %1291 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1292 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1291, i64 0, i32 46
  %1293 = load i64, i64* %1292, align 16
  %1294 = add i64 %1293, 168
  %1295 = and i32 %1290, 2147483647
  tail call void @stl_phys(i64 %1294, i32 %1295)
  br label %1296

; <label>:1296:                                   ; preds = %1280, %1286
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: uwtable
define internal fastcc i32 @ldl_kernel(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %13, -4093
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %24, label %22, !prof !2

; <label>:22:                                     ; preds = %12
  %23 = tail call i32 @__ldl_mmu(i64 %13, i32 0)
  br label %35

; <label>:24:                                     ; preds = %12
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %13
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %24
  %34 = zext i32 %29 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %34, i32 4, i32 0, i64 0)
  br label %35

; <label>:35:                                     ; preds = %24, %33, %22
  %36 = phi i32 [ %23, %22 ], [ %29, %33 ], [ %29, %24 ]
  ret i32 %36
}

; Function Attrs: noreturn
declare void @cpu_abort(%struct.CPUX86State*, i8*, ...) local_unnamed_addr #7

; Function Attrs: uwtable
define internal fastcc i64 @ldq_kernel(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %13, -4089
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %24, label %22, !prof !2

; <label>:22:                                     ; preds = %12
  %23 = tail call i64 @__ldq_mmu(i64 %13, i32 0)
  br label %34

; <label>:24:                                     ; preds = %12
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %13
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %24
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %29, i32 8, i32 0, i64 0)
  br label %34

; <label>:34:                                     ; preds = %24, %33, %22
  %35 = phi i64 [ %23, %22 ], [ %29, %33 ], [ %29, %24 ]
  ret i64 %35
}

; Function Attrs: uwtable
define internal fastcc void @stq_kernel(i64, i64) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %1, i32 8, i32 1)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %19 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 89, i64 0, i64 %17, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %14, -4089
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %24, label %23, !prof !2

; <label>:23:                                     ; preds = %13
  tail call void @__stq_mmu(i64 %14, i64 %1, i32 0)
  br label %33

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 89, i64 0, i64 %17, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %14
  %28 = inttoptr i64 %27 to i64*
  store i64 %1, i64* %28, align 8
  %29 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %24
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %1, i32 8, i32 2, i64 0)
  br label %33

; <label>:33:                                     ; preds = %24, %32, %23
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: uwtable
define internal fastcc void @switch_tss(i32, i32, i32, i32, i32) unnamed_addr #2 {
  %6 = alloca [8 x i32], align 16
  %7 = alloca [6 x i32], align 16
  %8 = bitcast [8 x i32]* %6 to i8*
  %9 = bitcast [6 x i32]* %7 to i8*
  %10 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 3
  %14 = lshr i32 %2, 8
  %15 = and i32 %14, 15
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %55

; <label>:17:                                     ; preds = %5
  %18 = trunc i32 %2 to i16
  %19 = icmp slt i16 %18, 0
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %17
  %21 = and i32 %0, 65532
  tail call fastcc void @raise_exception_err(i32 11, i32 %21) #13
  unreachable

; <label>:22:                                     ; preds = %17
  %23 = lshr i32 %1, 16
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %22
  %27 = and i32 %23, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %27) #13
  unreachable

; <label>:28:                                     ; preds = %22
  %29 = or i32 %23, 7
  %30 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 14, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %28
  %34 = and i32 %23, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %34) #13
  unreachable

; <label>:35:                                     ; preds = %28
  %36 = and i32 %23, 65528
  %37 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 14, i32 1
  %38 = load i64, i64* %37, align 4
  %39 = zext i32 %36 to i64
  %40 = add i64 %38, %39
  %41 = tail call fastcc i32 @ldl_kernel(i64 %40)
  %42 = add i64 %40, 4
  %43 = tail call fastcc i32 @ldl_kernel(i64 %42)
  %44 = and i32 %43, 4096
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

; <label>:46:                                     ; preds = %35
  %47 = and i32 %23, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %47) #13
  unreachable

; <label>:48:                                     ; preds = %35
  %49 = lshr i32 %43, 8
  %50 = and i32 %49, 15
  %51 = and i32 %49, 7
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %55, label %53

; <label>:53:                                     ; preds = %48
  %54 = and i32 %23, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %54) #13
  unreachable

; <label>:55:                                     ; preds = %48, %5
  %56 = phi i32 [ %41, %48 ], [ %1, %5 ]
  %57 = phi i32 [ %43, %48 ], [ %2, %5 ]
  %58 = phi i32 [ %50, %48 ], [ %15, %5 ]
  %59 = phi i32 [ %23, %48 ], [ %0, %5 ]
  %60 = trunc i32 %57 to i16
  %61 = icmp slt i16 %60, 0
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %55
  %63 = and i32 %59, 65532
  tail call fastcc void @raise_exception_err(i32 11, i32 %63) #13
  unreachable

; <label>:64:                                     ; preds = %55
  %65 = and i32 %58, 8
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %66, i32 103, i32 43
  %68 = and i32 %56, 65535
  %69 = and i32 %57, 983040
  %70 = or i32 %69, %68
  %71 = and i32 %57, 8388608
  %72 = icmp eq i32 %71, 0
  %73 = shl nuw i32 %70, 12
  %74 = or i32 %73, 4095
  %75 = select i1 %72, i32 %70, i32 %74
  %76 = lshr i32 %56, 16
  %77 = shl i32 %57, 16
  %78 = and i32 %77, 16711680
  %79 = and i32 %57, -16777216
  %80 = or i32 %79, %76
  %81 = or i32 %80, %78
  %82 = zext i32 %81 to i64
  %83 = and i32 %59, 4
  %84 = icmp ne i32 %83, 0
  %85 = icmp slt i32 %75, %67
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %64
  %88 = and i32 %59, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %88) #13
  unreachable

; <label>:89:                                     ; preds = %64
  %90 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %91 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %90, i64 0, i32 13, i32 3
  %92 = load i32, i32* %91, align 16
  %93 = and i32 %92, 2048
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i64 43, i64 103
  br i1 %66, label %96, label %149

; <label>:96:                                     ; preds = %89
  %97 = add nuw nsw i64 %82, 28
  %98 = tail call fastcc i32 @ldl_kernel(i64 %97)
  %99 = add nuw nsw i64 %82, 32
  %100 = tail call fastcc i32 @ldl_kernel(i64 %99)
  %101 = add nuw nsw i64 %82, 36
  %102 = tail call fastcc i32 @ldl_kernel(i64 %101)
  %103 = add nuw nsw i64 %82, 40
  %104 = tail call fastcc i32 @ldl_kernel(i64 %103)
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %104, i32* %105, align 16
  %106 = add nuw nsw i64 %82, 44
  %107 = tail call fastcc i32 @ldl_kernel(i64 %106)
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  store i32 %107, i32* %108, align 4
  %109 = add nuw nsw i64 %82, 48
  %110 = tail call fastcc i32 @ldl_kernel(i64 %109)
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 %110, i32* %111, align 8
  %112 = add nuw nsw i64 %82, 52
  %113 = tail call fastcc i32 @ldl_kernel(i64 %112)
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %113, i32* %114, align 4
  %115 = add nuw nsw i64 %82, 56
  %116 = tail call fastcc i32 @ldl_kernel(i64 %115)
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %116, i32* %117, align 16
  %118 = add nuw nsw i64 %82, 60
  %119 = tail call fastcc i32 @ldl_kernel(i64 %118)
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  store i32 %119, i32* %120, align 4
  %121 = add nuw nsw i64 %82, 64
  %122 = tail call fastcc i32 @ldl_kernel(i64 %121)
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  store i32 %122, i32* %123, align 8
  %124 = add nuw nsw i64 %82, 68
  %125 = tail call fastcc i32 @ldl_kernel(i64 %124)
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 %125, i32* %126, align 4
  %127 = add nuw nsw i64 %82, 72
  %128 = tail call fastcc i32 @lduw_kernel(i64 %127)
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %128, i32* %129, align 16
  %130 = add nuw nsw i64 %82, 76
  %131 = tail call fastcc i32 @lduw_kernel(i64 %130)
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %131, i32* %132, align 4
  %133 = add nuw nsw i64 %82, 80
  %134 = tail call fastcc i32 @lduw_kernel(i64 %133)
  %135 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %134, i32* %135, align 8
  %136 = add nuw nsw i64 %82, 84
  %137 = tail call fastcc i32 @lduw_kernel(i64 %136)
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %137, i32* %138, align 4
  %139 = add nuw nsw i64 %82, 88
  %140 = tail call fastcc i32 @lduw_kernel(i64 %139)
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 %140, i32* %141, align 16
  %142 = add nuw nsw i64 %82, 92
  %143 = tail call fastcc i32 @lduw_kernel(i64 %142)
  %144 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 %143, i32* %144, align 4
  %145 = add nuw nsw i64 %82, 96
  %146 = tail call fastcc i32 @lduw_kernel(i64 %145)
  %147 = add nuw nsw i64 %82, 100
  %148 = tail call fastcc i32 @ldl_kernel(i64 %147)
  br label %201

; <label>:149:                                    ; preds = %89
  %150 = add nuw nsw i64 %82, 14
  %151 = tail call fastcc i32 @lduw_kernel(i64 %150)
  %152 = add nuw nsw i64 %82, 16
  %153 = tail call fastcc i32 @lduw_kernel(i64 %152)
  %154 = add nuw nsw i64 %82, 18
  %155 = tail call fastcc i32 @lduw_kernel(i64 %154)
  %156 = or i32 %155, -65536
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %156, i32* %157, align 16
  %158 = add nuw nsw i64 %82, 20
  %159 = tail call fastcc i32 @lduw_kernel(i64 %158)
  %160 = or i32 %159, -65536
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  store i32 %160, i32* %161, align 4
  %162 = add nuw nsw i64 %82, 22
  %163 = tail call fastcc i32 @lduw_kernel(i64 %162)
  %164 = or i32 %163, -65536
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 %164, i32* %165, align 8
  %166 = add nuw nsw i64 %82, 24
  %167 = tail call fastcc i32 @lduw_kernel(i64 %166)
  %168 = or i32 %167, -65536
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %168, i32* %169, align 4
  %170 = add nuw nsw i64 %82, 26
  %171 = tail call fastcc i32 @lduw_kernel(i64 %170)
  %172 = or i32 %171, -65536
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %172, i32* %173, align 16
  %174 = add nuw nsw i64 %82, 28
  %175 = tail call fastcc i32 @lduw_kernel(i64 %174)
  %176 = or i32 %175, -65536
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  store i32 %176, i32* %177, align 4
  %178 = add nuw nsw i64 %82, 30
  %179 = tail call fastcc i32 @lduw_kernel(i64 %178)
  %180 = or i32 %179, -65536
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  store i32 %180, i32* %181, align 8
  %182 = add nuw nsw i64 %82, 32
  %183 = tail call fastcc i32 @lduw_kernel(i64 %182)
  %184 = or i32 %183, -65536
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 %184, i32* %185, align 4
  %186 = add nuw nsw i64 %82, 34
  %187 = tail call fastcc i32 @lduw_kernel(i64 %186)
  %188 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %187, i32* %188, align 16
  %189 = add nuw nsw i64 %82, 38
  %190 = tail call fastcc i32 @lduw_kernel(i64 %189)
  %191 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %190, i32* %191, align 4
  %192 = add nuw nsw i64 %82, 42
  %193 = tail call fastcc i32 @lduw_kernel(i64 %192)
  %194 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %193, i32* %194, align 8
  %195 = add nuw nsw i64 %82, 46
  %196 = tail call fastcc i32 @lduw_kernel(i64 %195)
  %197 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %196, i32* %197, align 4
  %198 = tail call fastcc i32 @lduw_kernel(i64 %192)
  %199 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %199, align 16
  %200 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 0, i32* %200, align 4
  br label %201

; <label>:201:                                    ; preds = %149, %96
  %202 = phi i32 [ %146, %96 ], [ %198, %149 ]
  %203 = phi i32 [ %98, %96 ], [ 0, %149 ]
  %204 = phi i32 [ %100, %96 ], [ %151, %149 ]
  %205 = phi i32 [ %102, %96 ], [ %153, %149 ]
  %206 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %207 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %206, i64 0, i32 13, i32 1
  %208 = load i64, i64* %207, align 4
  %209 = tail call fastcc i32 @ldub_kernel(i64 %208)
  %210 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %211 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %210, i64 0, i32 13, i32 1
  %212 = load i64, i64* %211, align 4
  %213 = add i64 %212, %95
  %214 = tail call fastcc i32 @ldub_kernel(i64 %213)
  %215 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %216 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %215, i64 0, i32 13, i32 1
  %217 = load i64, i64* %216, align 4
  tail call fastcc void @stb_kernel(i64 %217, i32 %209)
  %218 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %219 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %218, i64 0, i32 13, i32 1
  %220 = load i64, i64* %219, align 4
  %221 = add i64 %220, %95
  tail call fastcc void @stb_kernel(i64 %221, i32 %214)
  %222 = icmp eq i32 %3, 1
  %223 = or i32 %3, 1
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %237

; <label>:225:                                    ; preds = %201
  %226 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %227 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %226, i64 0, i32 14, i32 1
  %228 = load i64, i64* %227, align 4
  %229 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %226, i64 0, i32 13, i32 0
  %230 = load i32, i32* %229, align 16
  %231 = and i32 %230, -8
  %232 = zext i32 %231 to i64
  %233 = add i64 %228, 4
  %234 = add i64 %233, %232
  %235 = tail call fastcc i32 @ldl_kernel(i64 %234)
  %236 = and i32 %235, -513
  tail call fastcc void @stl_kernel(i64 %234, i32 %236)
  br label %237

; <label>:237:                                    ; preds = %201, %225
  %238 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %239 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %238, i64 0, i32 7
  %240 = load i64, i64* %239, align 4
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %238, i64 0, i32 1
  %242 = load i64, i64* %241, align 16
  %243 = trunc i64 %242 to i32
  %244 = tail call i32 @helper_cc_compute_all(i32 %243) #5
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %238, i64 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, 1024
  %249 = zext i32 %248 to i64
  %250 = or i64 %240, %245
  %251 = or i64 %250, %249
  %252 = or i64 %251, 2
  %253 = trunc i64 %252 to i32
  %254 = and i32 %253, -16385
  %255 = select i1 %222, i32 %254, i32 %253
  %256 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %238, i64 0, i32 13, i32 1
  %257 = load i64, i64* %256, align 4
  br i1 %66, label %258, label %356

; <label>:258:                                    ; preds = %237
  %259 = add i64 %257, 32
  tail call fastcc void @stl_kernel(i64 %259, i32 %4)
  %260 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %261 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %260, i64 0, i32 13, i32 1
  %262 = load i64, i64* %261, align 4
  %263 = add i64 %262, 36
  tail call fastcc void @stl_kernel(i64 %263, i32 %255)
  %264 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %265 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %264, i64 0, i32 13, i32 1
  %266 = load i64, i64* %265, align 4
  %267 = add i64 %266, 40
  %268 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %264, i64 0, i32 0, i64 0
  %269 = load i64, i64* %268, align 16
  %270 = trunc i64 %269 to i32
  tail call fastcc void @stl_kernel(i64 %267, i32 %270)
  %271 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %272 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %271, i64 0, i32 13, i32 1
  %273 = load i64, i64* %272, align 4
  %274 = add i64 %273, 44
  %275 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %271, i64 0, i32 0, i64 1
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  tail call fastcc void @stl_kernel(i64 %274, i32 %277)
  %278 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %279 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 13, i32 1
  %280 = load i64, i64* %279, align 4
  %281 = add i64 %280, 48
  %282 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 0, i64 2
  %283 = load i64, i64* %282, align 16
  %284 = trunc i64 %283 to i32
  tail call fastcc void @stl_kernel(i64 %281, i32 %284)
  %285 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %286 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %285, i64 0, i32 13, i32 1
  %287 = load i64, i64* %286, align 4
  %288 = add i64 %287, 52
  %289 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %285, i64 0, i32 0, i64 3
  %290 = load i64, i64* %289, align 8
  %291 = trunc i64 %290 to i32
  tail call fastcc void @stl_kernel(i64 %288, i32 %291)
  %292 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %293 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %292, i64 0, i32 13, i32 1
  %294 = load i64, i64* %293, align 4
  %295 = add i64 %294, 56
  %296 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %292, i64 0, i32 0, i64 4
  %297 = load i64, i64* %296, align 16
  %298 = trunc i64 %297 to i32
  tail call fastcc void @stl_kernel(i64 %295, i32 %298)
  %299 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %300 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %299, i64 0, i32 13, i32 1
  %301 = load i64, i64* %300, align 4
  %302 = add i64 %301, 60
  %303 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %299, i64 0, i32 0, i64 5
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  tail call fastcc void @stl_kernel(i64 %302, i32 %305)
  %306 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %307 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %306, i64 0, i32 13, i32 1
  %308 = load i64, i64* %307, align 4
  %309 = add i64 %308, 64
  %310 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %306, i64 0, i32 0, i64 6
  %311 = load i64, i64* %310, align 16
  %312 = trunc i64 %311 to i32
  tail call fastcc void @stl_kernel(i64 %309, i32 %312)
  %313 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %314 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %313, i64 0, i32 13, i32 1
  %315 = load i64, i64* %314, align 4
  %316 = add i64 %315, 68
  %317 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %313, i64 0, i32 0, i64 7
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  tail call fastcc void @stl_kernel(i64 %316, i32 %319)
  %320 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %321 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %320, i64 0, i32 13, i32 1
  %322 = load i64, i64* %321, align 4
  %323 = add i64 %322, 72
  %324 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %320, i64 0, i32 11, i64 0, i32 0
  %325 = load i32, i32* %324, align 4
  tail call fastcc void @stw_kernel(i64 %323, i32 %325)
  %326 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %327 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %326, i64 0, i32 13, i32 1
  %328 = load i64, i64* %327, align 4
  %329 = add i64 %328, 76
  %330 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %326, i64 0, i32 11, i64 1, i32 0
  %331 = load i32, i32* %330, align 4
  tail call fastcc void @stw_kernel(i64 %329, i32 %331)
  %332 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %333 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %332, i64 0, i32 13, i32 1
  %334 = load i64, i64* %333, align 4
  %335 = add i64 %334, 80
  %336 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %332, i64 0, i32 11, i64 2, i32 0
  %337 = load i32, i32* %336, align 4
  tail call fastcc void @stw_kernel(i64 %335, i32 %337)
  %338 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %339 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %338, i64 0, i32 13, i32 1
  %340 = load i64, i64* %339, align 4
  %341 = add i64 %340, 84
  %342 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %338, i64 0, i32 11, i64 3, i32 0
  %343 = load i32, i32* %342, align 4
  tail call fastcc void @stw_kernel(i64 %341, i32 %343)
  %344 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %345 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %344, i64 0, i32 13, i32 1
  %346 = load i64, i64* %345, align 4
  %347 = add i64 %346, 88
  %348 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %344, i64 0, i32 11, i64 4, i32 0
  %349 = load i32, i32* %348, align 4
  tail call fastcc void @stw_kernel(i64 %347, i32 %349)
  %350 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %351 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %350, i64 0, i32 13, i32 1
  %352 = load i64, i64* %351, align 4
  %353 = add i64 %352, 92
  %354 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %350, i64 0, i32 11, i64 5, i32 0
  %355 = load i32, i32* %354, align 4
  tail call fastcc void @stw_kernel(i64 %353, i32 %355)
  br label %442

; <label>:356:                                    ; preds = %237
  %357 = add i64 %257, 14
  tail call fastcc void @stw_kernel(i64 %357, i32 %4)
  %358 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %359 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %358, i64 0, i32 13, i32 1
  %360 = load i64, i64* %359, align 4
  %361 = add i64 %360, 16
  tail call fastcc void @stw_kernel(i64 %361, i32 %255)
  %362 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %363 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %362, i64 0, i32 13, i32 1
  %364 = load i64, i64* %363, align 4
  %365 = add i64 %364, 18
  %366 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %362, i64 0, i32 0, i64 0
  %367 = load i64, i64* %366, align 16
  %368 = trunc i64 %367 to i32
  tail call fastcc void @stw_kernel(i64 %365, i32 %368)
  %369 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %370 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %369, i64 0, i32 13, i32 1
  %371 = load i64, i64* %370, align 4
  %372 = add i64 %371, 20
  %373 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %369, i64 0, i32 0, i64 1
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  tail call fastcc void @stw_kernel(i64 %372, i32 %375)
  %376 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %377 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %376, i64 0, i32 13, i32 1
  %378 = load i64, i64* %377, align 4
  %379 = add i64 %378, 22
  %380 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %376, i64 0, i32 0, i64 2
  %381 = load i64, i64* %380, align 16
  %382 = trunc i64 %381 to i32
  tail call fastcc void @stw_kernel(i64 %379, i32 %382)
  %383 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %384 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %383, i64 0, i32 13, i32 1
  %385 = load i64, i64* %384, align 4
  %386 = add i64 %385, 24
  %387 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %383, i64 0, i32 0, i64 3
  %388 = load i64, i64* %387, align 8
  %389 = trunc i64 %388 to i32
  tail call fastcc void @stw_kernel(i64 %386, i32 %389)
  %390 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %391 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %390, i64 0, i32 13, i32 1
  %392 = load i64, i64* %391, align 4
  %393 = add i64 %392, 26
  %394 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %390, i64 0, i32 0, i64 4
  %395 = load i64, i64* %394, align 16
  %396 = trunc i64 %395 to i32
  tail call fastcc void @stw_kernel(i64 %393, i32 %396)
  %397 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %398 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %397, i64 0, i32 13, i32 1
  %399 = load i64, i64* %398, align 4
  %400 = add i64 %399, 28
  %401 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %397, i64 0, i32 0, i64 5
  %402 = load i64, i64* %401, align 8
  %403 = trunc i64 %402 to i32
  tail call fastcc void @stw_kernel(i64 %400, i32 %403)
  %404 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %405 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %404, i64 0, i32 13, i32 1
  %406 = load i64, i64* %405, align 4
  %407 = add i64 %406, 30
  %408 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %404, i64 0, i32 0, i64 6
  %409 = load i64, i64* %408, align 16
  %410 = trunc i64 %409 to i32
  tail call fastcc void @stw_kernel(i64 %407, i32 %410)
  %411 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %412 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %411, i64 0, i32 13, i32 1
  %413 = load i64, i64* %412, align 4
  %414 = add i64 %413, 32
  %415 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %411, i64 0, i32 0, i64 7
  %416 = load i64, i64* %415, align 8
  %417 = trunc i64 %416 to i32
  tail call fastcc void @stw_kernel(i64 %414, i32 %417)
  %418 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %419 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %418, i64 0, i32 13, i32 1
  %420 = load i64, i64* %419, align 4
  %421 = add i64 %420, 34
  %422 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %418, i64 0, i32 11, i64 0, i32 0
  %423 = load i32, i32* %422, align 4
  tail call fastcc void @stw_kernel(i64 %421, i32 %423)
  %424 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %425 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %424, i64 0, i32 13, i32 1
  %426 = load i64, i64* %425, align 4
  %427 = add i64 %426, 38
  %428 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %424, i64 0, i32 11, i64 1, i32 0
  %429 = load i32, i32* %428, align 4
  tail call fastcc void @stw_kernel(i64 %427, i32 %429)
  %430 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %431 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %430, i64 0, i32 13, i32 1
  %432 = load i64, i64* %431, align 4
  %433 = add i64 %432, 42
  %434 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %430, i64 0, i32 11, i64 2, i32 0
  %435 = load i32, i32* %434, align 4
  tail call fastcc void @stw_kernel(i64 %433, i32 %435)
  %436 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %437 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %436, i64 0, i32 13, i32 1
  %438 = load i64, i64* %437, align 4
  %439 = add i64 %438, 46
  %440 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %436, i64 0, i32 11, i64 3, i32 0
  %441 = load i32, i32* %440, align 4
  tail call fastcc void @stw_kernel(i64 %439, i32 %441)
  br label %442

; <label>:442:                                    ; preds = %356, %258
  %443 = icmp eq i32 %3, 2
  br i1 %443, label %444, label %449

; <label>:444:                                    ; preds = %442
  %445 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %446 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %445, i64 0, i32 13, i32 0
  %447 = load i32, i32* %446, align 16
  tail call fastcc void @stw_kernel(i64 %82, i32 %447)
  %448 = or i32 %205, 16384
  br label %452

; <label>:449:                                    ; preds = %442
  %450 = or i32 %3, 2
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %452, label %463

; <label>:452:                                    ; preds = %444, %449
  %453 = phi i32 [ %448, %444 ], [ %205, %449 ]
  %454 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %455 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %454, i64 0, i32 14, i32 1
  %456 = load i64, i64* %455, align 4
  %457 = and i32 %59, -8
  %458 = sext i32 %457 to i64
  %459 = or i64 %458, 4
  %460 = add i64 %459, %456
  %461 = tail call fastcc i32 @ldl_kernel(i64 %460)
  %462 = or i32 %461, 512
  tail call fastcc void @stl_kernel(i64 %460, i32 %462)
  br label %463

; <label>:463:                                    ; preds = %449, %452
  %464 = phi i32 [ %205, %449 ], [ %453, %452 ]
  %465 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %466 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %465, i64 0, i32 16, i64 0
  %467 = load i64, i64* %466, align 4
  %468 = or i64 %467, 8
  store i64 %468, i64* %466, align 4
  %469 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %465, i64 0, i32 8
  %470 = load i32, i32* %469, align 4
  %471 = or i32 %470, 2048
  store i32 %471, i32* %469, align 4
  %472 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %465, i64 0, i32 13, i32 0
  store i32 %59, i32* %472, align 16
  %473 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %465, i64 0, i32 13, i32 1
  store i64 %82, i64* %473, align 4
  %474 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %465, i64 0, i32 13, i32 2
  store i32 %75, i32* %474, align 4
  %475 = and i32 %57, -513
  %476 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %465, i64 0, i32 13, i32 3
  store i32 %475, i32* %476, align 16
  %477 = icmp ugt i64 %468, 2147483647
  %478 = and i1 %66, %477
  br i1 %478, label %479, label %482

; <label>:479:                                    ; preds = %463
  %480 = zext i32 %203 to i64
  tail call void @cpu_x86_update_cr3(%struct.CPUX86State* %465, i64 %480)
  %481 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %482

; <label>:482:                                    ; preds = %479, %463
  %483 = phi %struct.CPUX86State* [ %481, %479 ], [ %465, %463 ]
  %484 = zext i32 %204 to i64
  %485 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %483, i64 0, i32 5
  store i64 %484, i64* %485, align 16
  %486 = select i1 %66, i32 2585344, i32 29440
  %487 = and i32 %464, 2261
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %483, i64 0, i32 2
  store i64 %488, i64* %489, align 8
  %490 = lshr i32 %464, 9
  %491 = and i32 %490, 2
  %492 = xor i32 %491, 2
  %493 = add nsw i32 %492, -1
  %494 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %483, i64 0, i32 6
  store i32 %493, i32* %494, align 8
  %495 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %483, i64 0, i32 7
  %496 = load i64, i64* %495, align 4
  %497 = xor i32 %486, -1
  %498 = sext i32 %497 to i64
  %499 = and i64 %496, %498
  %500 = and i32 %464, %486
  %501 = zext i32 %500 to i64
  %502 = or i64 %499, %501
  store i64 %502, i64* %495, align 4
  %503 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %504 = load i32, i32* %503, align 16
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %483, i64 0, i32 0, i64 0
  store i64 %505, i64* %506, align 16
  %507 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %508 = load i32, i32* %507, align 4
  %509 = zext i32 %508 to i64
  %510 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %511 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 1
  store i64 %509, i64* %511, align 8
  %512 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %513 = bitcast i32* %512 to i64*
  %514 = load i64, i64* %513, align 8
  %515 = and i64 %514, 4294967295
  %516 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 2
  store i64 %515, i64* %516, align 16
  %517 = lshr i64 %514, 32
  %518 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 3
  store i64 %517, i64* %518, align 8
  %519 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %520 = bitcast i32* %519 to i64*
  %521 = load i64, i64* %520, align 16
  %522 = and i64 %521, 4294967295
  %523 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 4
  store i64 %522, i64* %523, align 16
  %524 = lshr i64 %521, 32
  %525 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 5
  store i64 %524, i64* %525, align 8
  %526 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %527 = bitcast i32* %526 to i64*
  %528 = load i64, i64* %527, align 8
  %529 = and i64 %528, 4294967295
  %530 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 6
  store i64 %529, i64* %530, align 16
  %531 = lshr i64 %528, 32
  %532 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 0, i64 7
  store i64 %531, i64* %532, align 8
  %533 = and i32 %464, 131072
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %612

; <label>:535:                                    ; preds = %482
  %536 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 8
  %537 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 1, i32 3
  %538 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 2, i32 3
  %539 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 16, i64 0
  %540 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 7
  %541 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 3, i32 1
  %542 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 0, i32 1
  %543 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 2, i32 1
  br label %544

; <label>:544:                                    ; preds = %593, %535
  %545 = phi i64 [ 0, %535 ], [ %597, %593 ]
  %546 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = and i32 %547, 65535
  %549 = shl nuw nsw i32 %548, 4
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 %545, i32 0
  store i32 %548, i32* %551, align 4
  %552 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 %545, i32 1
  store i64 %550, i64* %552, align 4
  %553 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 %545, i32 2
  store i32 65535, i32* %553, align 4
  %554 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 11, i64 %545, i32 3
  store i32 0, i32* %554, align 4
  %555 = icmp eq i64 %545, 1
  %556 = load i32, i32* %536, align 4
  br i1 %555, label %557, label %563

; <label>:557:                                    ; preds = %544
  %558 = load i32, i32* %537, align 4
  %559 = lshr i32 %558, 18
  %560 = and i32 %559, 16
  %561 = and i32 %556, -32785
  %562 = or i32 %560, %561
  store i32 %562, i32* %536, align 4
  br label %563

; <label>:563:                                    ; preds = %557, %544
  %564 = phi i32 [ %562, %557 ], [ %556, %544 ]
  %565 = load i32, i32* %538, align 4
  %566 = lshr i32 %565, 17
  %567 = and i32 %566, 32
  %568 = trunc i32 %564 to i16
  %569 = icmp slt i16 %568, 0
  br i1 %569, label %593, label %570

; <label>:570:                                    ; preds = %563
  %571 = load i64, i64* %539, align 4
  %572 = and i64 %571, 1
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %581, label %574

; <label>:574:                                    ; preds = %570
  %575 = load i64, i64* %540, align 4
  %576 = and i64 %575, 131072
  %577 = icmp ne i64 %576, 0
  %578 = and i32 %564, 16
  %579 = icmp eq i32 %578, 0
  %580 = or i1 %579, %577
  br i1 %580, label %581, label %583

; <label>:581:                                    ; preds = %574, %570
  %582 = or i32 %567, 64
  br label %593

; <label>:583:                                    ; preds = %574
  %584 = load i64, i64* %541, align 4
  %585 = load i64, i64* %542, align 4
  %586 = or i64 %585, %584
  %587 = load i64, i64* %543, align 4
  %588 = or i64 %586, %587
  %589 = icmp ne i64 %588, 0
  %590 = zext i1 %589 to i32
  %591 = shl nuw nsw i32 %590, 6
  %592 = or i32 %591, %567
  br label %593

; <label>:593:                                    ; preds = %563, %581, %583
  %594 = phi i32 [ %567, %563 ], [ %582, %581 ], [ %592, %583 ]
  %595 = and i32 %564, -97
  %596 = or i32 %594, %595
  store i32 %596, i32* %536, align 4
  %597 = add nuw nsw i64 %545, 1
  %598 = icmp eq i64 %597, 6
  br i1 %598, label %599, label %544

; <label>:599:                                    ; preds = %593
  %600 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %608, label %603, !prof !2

; <label>:603:                                    ; preds = %599
  %604 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %605 = and i32 %596, 3
  tail call void %604(i32 %605, i32 3)
  %606 = load i32, i32* %536, align 4
  %607 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %608

; <label>:608:                                    ; preds = %599, %603
  %609 = phi %struct.CPUX86State* [ %607, %603 ], [ %510, %599 ]
  %610 = phi i32 [ %606, %603 ], [ %596, %599 ]
  %611 = or i32 %610, 3
  store i32 %611, i32* %536, align 4
  br label %699

; <label>:612:                                    ; preds = %482
  %613 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %614 = load i32, i32* %613, align 4
  %615 = and i32 %614, 3
  %616 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %617 = load i32, i32* %616, align 4
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %621, !prof !2

; <label>:619:                                    ; preds = %612
  %620 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 8
  br label %627

; <label>:621:                                    ; preds = %612
  %622 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %623 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %510, i64 0, i32 8
  %624 = load i32, i32* %623, align 4
  %625 = and i32 %624, 3
  tail call void %622(i32 %625, i32 %615)
  %626 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %627

; <label>:627:                                    ; preds = %619, %621
  %628 = phi %struct.CPUX86State* [ %510, %619 ], [ %626, %621 ]
  %629 = phi i32* [ %620, %619 ], [ %623, %621 ]
  %630 = load i32, i32* %629, align 4
  %631 = and i32 %630, -4
  %632 = or i32 %631, %615
  store i32 %632, i32* %629, align 4
  %633 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 8
  %634 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 1, i32 3
  %635 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 2, i32 3
  %636 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 16, i64 0
  %637 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 7
  %638 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 3, i32 1
  %639 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 0, i32 1
  %640 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 2, i32 1
  br label %641

; <label>:641:                                    ; preds = %693, %627
  %642 = phi i64 [ 0, %627 ], [ %697, %693 ]
  %643 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 %642, i32 0
  store i32 %644, i32* %645, align 4
  %646 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %628, i64 0, i32 11, i64 %642, i32 1
  %647 = icmp eq i64 %642, 1
  %648 = bitcast i64* %646 to i8*
  br label %649

; <label>:649:                                    ; preds = %652, %641
  %650 = phi i64 [ 0, %641 ], [ %654, %652 ]
  %651 = icmp ult i64 %650, 16
  br i1 %651, label %652, label %655

; <label>:652:                                    ; preds = %649
  %653 = getelementptr i8, i8* %648, i64 %650
  store i8 0, i8* %653
  %654 = add i64 %650, 1
  br label %649

; <label>:655:                                    ; preds = %649
  %656 = load i32, i32* %633, align 4
  br i1 %647, label %657, label %663

; <label>:657:                                    ; preds = %655
  %658 = load i32, i32* %634, align 4
  %659 = lshr i32 %658, 18
  %660 = and i32 %659, 16
  %661 = and i32 %656, -32785
  %662 = or i32 %660, %661
  store i32 %662, i32* %633, align 4
  br label %663

; <label>:663:                                    ; preds = %657, %655
  %664 = phi i32 [ %662, %657 ], [ %656, %655 ]
  %665 = load i32, i32* %635, align 4
  %666 = lshr i32 %665, 17
  %667 = and i32 %666, 32
  %668 = trunc i32 %664 to i16
  %669 = icmp slt i16 %668, 0
  br i1 %669, label %693, label %670

; <label>:670:                                    ; preds = %663
  %671 = load i64, i64* %636, align 4
  %672 = and i64 %671, 1
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %681, label %674

; <label>:674:                                    ; preds = %670
  %675 = load i64, i64* %637, align 4
  %676 = and i64 %675, 131072
  %677 = icmp ne i64 %676, 0
  %678 = and i32 %664, 16
  %679 = icmp eq i32 %678, 0
  %680 = or i1 %679, %677
  br i1 %680, label %681, label %683

; <label>:681:                                    ; preds = %674, %670
  %682 = or i32 %667, 64
  br label %693

; <label>:683:                                    ; preds = %674
  %684 = load i64, i64* %638, align 4
  %685 = load i64, i64* %639, align 4
  %686 = or i64 %685, %684
  %687 = load i64, i64* %640, align 4
  %688 = or i64 %686, %687
  %689 = icmp ne i64 %688, 0
  %690 = zext i1 %689 to i32
  %691 = shl nuw nsw i32 %690, 6
  %692 = or i32 %691, %667
  br label %693

; <label>:693:                                    ; preds = %663, %681, %683
  %694 = phi i32 [ %667, %663 ], [ %682, %681 ], [ %692, %683 ]
  %695 = and i32 %664, -97
  %696 = or i32 %694, %695
  store i32 %696, i32* %633, align 4
  %697 = add nuw nsw i64 %642, 1
  %698 = icmp eq i64 %697, 6
  br i1 %698, label %699, label %641

; <label>:699:                                    ; preds = %693, %608
  %700 = phi %struct.CPUX86State* [ %609, %608 ], [ %628, %693 ]
  %701 = phi i32 [ 3, %608 ], [ %615, %693 ]
  %702 = and i32 %202, -5
  %703 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %700, i64 0, i32 12, i32 0
  store i32 %702, i32* %703, align 4
  %704 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %700, i64 0, i32 12, i32 1
  %705 = bitcast i64* %704 to i8*
  br label %706

; <label>:706:                                    ; preds = %709, %699
  %707 = phi i64 [ 0, %699 ], [ %711, %709 ]
  %708 = icmp ult i64 %707, 16
  br i1 %708, label %709, label %712

; <label>:709:                                    ; preds = %706
  %710 = getelementptr i8, i8* %705, i64 %707
  store i8 0, i8* %710
  %711 = add i64 %707, 1
  br label %706

; <label>:712:                                    ; preds = %706
  %713 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %714 = load i32, i32* %713, align 4
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %718, label %716, !prof !2

; <label>:716:                                    ; preds = %712
  %717 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %717(i32 %13, i32 %701)
  br label %718

; <label>:718:                                    ; preds = %712, %716
  %719 = and i32 %202, 4
  %720 = icmp eq i32 %719, 0
  %721 = and i32 %202, 65532
  br i1 %720, label %723, label %722

; <label>:722:                                    ; preds = %718
  tail call fastcc void @raise_exception_err(i32 10, i32 %721) #13
  unreachable

; <label>:723:                                    ; preds = %718
  %724 = icmp eq i32 %721, 0
  br i1 %724, label %768, label %725

; <label>:725:                                    ; preds = %723
  %726 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %727 = or i32 %202, 7
  %728 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %726, i64 0, i32 14, i32 2
  %729 = load i32, i32* %728, align 4
  %730 = icmp ugt i32 %727, %729
  br i1 %730, label %731, label %732

; <label>:731:                                    ; preds = %725
  tail call fastcc void @raise_exception_err(i32 10, i32 %721) #13
  unreachable

; <label>:732:                                    ; preds = %725
  %733 = and i32 %202, -8
  %734 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %726, i64 0, i32 14, i32 1
  %735 = load i64, i64* %734, align 4
  %736 = sext i32 %733 to i64
  %737 = add i64 %735, %736
  %738 = tail call fastcc i32 @ldl_kernel(i64 %737)
  %739 = add i64 %737, 4
  %740 = tail call fastcc i32 @ldl_kernel(i64 %739)
  %741 = and i32 %740, 7936
  %742 = icmp eq i32 %741, 512
  br i1 %742, label %744, label %743

; <label>:743:                                    ; preds = %732
  tail call fastcc void @raise_exception_err(i32 10, i32 %721) #13
  unreachable

; <label>:744:                                    ; preds = %732
  %745 = trunc i32 %740 to i16
  %746 = icmp slt i16 %745, 0
  br i1 %746, label %748, label %747

; <label>:747:                                    ; preds = %744
  tail call fastcc void @raise_exception_err(i32 10, i32 %721) #13
  unreachable

; <label>:748:                                    ; preds = %744
  %749 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %750 = lshr i32 %738, 16
  %751 = shl i32 %740, 16
  %752 = and i32 %751, 16711680
  %753 = and i32 %740, -16777216
  %754 = or i32 %753, %750
  %755 = or i32 %754, %752
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %749, i64 0, i32 12, i32 1
  store i64 %756, i64* %757, align 4
  %758 = and i32 %738, 65535
  %759 = and i32 %740, 983040
  %760 = or i32 %759, %758
  %761 = and i32 %740, 8388608
  %762 = icmp eq i32 %761, 0
  %763 = shl nuw i32 %760, 12
  %764 = or i32 %763, 4095
  %765 = select i1 %762, i32 %760, i32 %764
  %766 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %749, i64 0, i32 12, i32 2
  store i32 %765, i32* %766, align 4
  %767 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %749, i64 0, i32 12, i32 3
  store i32 %740, i32* %767, align 4
  br label %768

; <label>:768:                                    ; preds = %723, %748
  br i1 %534, label %786, label %769

; <label>:769:                                    ; preds = %768
  %770 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %771 = load i32, i32* %770, align 4
  tail call fastcc void @tss_load_seg(i32 1, i32 %771)
  %772 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %773 = bitcast i32* %772 to i64*
  %774 = load i64, i64* %773, align 8
  %775 = trunc i64 %774 to i32
  tail call fastcc void @tss_load_seg(i32 2, i32 %775)
  %776 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %777 = load i32, i32* %776, align 16
  tail call fastcc void @tss_load_seg(i32 0, i32 %777)
  %778 = lshr i64 %774, 32
  %779 = trunc i64 %778 to i32
  tail call fastcc void @tss_load_seg(i32 3, i32 %779)
  %780 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %781 = bitcast i32* %780 to i64*
  %782 = load i64, i64* %781, align 16
  %783 = trunc i64 %782 to i32
  tail call fastcc void @tss_load_seg(i32 4, i32 %783)
  %784 = lshr i64 %782, 32
  %785 = trunc i64 %784 to i32
  tail call fastcc void @tss_load_seg(i32 5, i32 %785)
  br label %786

; <label>:786:                                    ; preds = %769, %768
  %787 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %788 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %787, i64 0, i32 11, i64 1, i32 2
  %789 = load i32, i32* %788, align 4
  %790 = icmp ugt i32 %204, %789
  br i1 %790, label %791, label %792

; <label>:791:                                    ; preds = %786
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:792:                                    ; preds = %786
  %793 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %787, i64 0, i32 72, i64 7
  %794 = load i64, i64* %793, align 8
  %795 = and i64 %794, 85
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %809, label %797

; <label>:797:                                    ; preds = %792
  %798 = and i64 %794, 3
  %799 = icmp eq i64 %798, 1
  br i1 %799, label %800, label %804

; <label>:800:                                    ; preds = %797
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* nonnull %787, i32 0)
  %801 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %802 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %801, i64 0, i32 72, i64 7
  %803 = load i64, i64* %802, align 8
  br label %804

; <label>:804:                                    ; preds = %797, %800
  %805 = phi i64 [ %794, %797 ], [ %803, %800 ]
  %806 = phi %struct.CPUX86State* [ %787, %797 ], [ %801, %800 ]
  %807 = and i64 %805, 12
  %808 = icmp eq i64 %807, 4
  br i1 %808, label %810, label %814

; <label>:809:                                    ; preds = %792, %832
  ret void

; <label>:810:                                    ; preds = %804
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %806, i32 1)
  %811 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %812 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %811, i64 0, i32 72, i64 7
  %813 = load i64, i64* %812, align 8
  br label %814

; <label>:814:                                    ; preds = %810, %804
  %815 = phi i64 [ %813, %810 ], [ %805, %804 ]
  %816 = phi %struct.CPUX86State* [ %811, %810 ], [ %806, %804 ]
  %817 = and i64 %815, 48
  %818 = icmp eq i64 %817, 16
  br i1 %818, label %819, label %823

; <label>:819:                                    ; preds = %814
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %816, i32 2)
  %820 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %821 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %820, i64 0, i32 72, i64 7
  %822 = load i64, i64* %821, align 8
  br label %823

; <label>:823:                                    ; preds = %819, %814
  %824 = phi i64 [ %822, %819 ], [ %815, %814 ]
  %825 = phi %struct.CPUX86State* [ %820, %819 ], [ %816, %814 ]
  %826 = and i64 %824, 192
  %827 = icmp eq i64 %826, 64
  br i1 %827, label %828, label %832

; <label>:828:                                    ; preds = %823
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %825, i32 3)
  %829 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %830 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %829, i64 0, i32 72, i64 7
  %831 = load i64, i64* %830, align 8
  br label %832

; <label>:832:                                    ; preds = %828, %823
  %833 = phi i64 [ %831, %828 ], [ %824, %823 ]
  %834 = phi %struct.CPUX86State* [ %829, %828 ], [ %825, %823 ]
  %835 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %834, i64 0, i32 72, i64 7
  %836 = and i64 %833, -86
  store i64 %836, i64* %835, align 8
  br label %809
}

; Function Attrs: uwtable
define internal fastcc void @stl_kernel(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %7, i32 4, i32 1)
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %14

; <label>:14:                                     ; preds = %8, %12
  %15 = phi i64 [ %13, %12 ], [ %0, %8 ]
  %16 = lshr i64 %15, 12
  %17 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 4503599627370495, i64 0)
  %18 = and i64 %17, 1023
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 0, i64 %18, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %15, -4093
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %25, label %24, !prof !2

; <label>:24:                                     ; preds = %14
  tail call void @__stl_mmu(i64 %15, i32 %1, i32 0)
  br label %35

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 0, i64 %18, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %15
  %29 = inttoptr i64 %28 to i32*
  store i32 %1, i32* %29, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %25
  %34 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %34, i32 4, i32 2, i64 0)
  br label %35

; <label>:35:                                     ; preds = %25, %33, %24
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @stw_kernel(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %7, i32 4, i32 1)
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %14

; <label>:14:                                     ; preds = %8, %12
  %15 = phi i64 [ %13, %12 ], [ %0, %8 ]
  %16 = lshr i64 %15, 12
  %17 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 4503599627370495, i64 0)
  %18 = and i64 %17, 1023
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 0, i64 %18, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %15, -4095
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %26, label %24, !prof !2

; <label>:24:                                     ; preds = %14
  %25 = trunc i32 %1 to i16
  tail call void @__stw_mmu(i64 %15, i16 zeroext %25, i32 0)
  br label %37

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 0, i64 %18, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %15
  %30 = trunc i32 %1 to i16
  %31 = inttoptr i64 %29 to i16*
  store i16 %30, i16* %31, align 2
  %32 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %26
  %36 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %36, i32 4, i32 2, i64 0)
  br label %37

; <label>:37:                                     ; preds = %26, %35, %24
  ret void
}

; Function Attrs: uwtable
define void @__stw_mmu(i64, i16 zeroext, i32) local_unnamed_addr #2 {
  %4 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = zext i16 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %8, i32 2, i32 1)
  br label %9

; <label>:9:                                      ; preds = %3, %7
  %10 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %15

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i64 [ %14, %13 ], [ %0, %9 ]
  %17 = lshr i64 %16, 12
  %18 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %17, i64 0, i64 4503599627370495, i64 0)
  %19 = and i64 %18, 1023
  %20 = sext i32 %2 to i64
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %16, -4096
  %25 = and i64 %23, -4088
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %29, label %27, !prof !2

; <label>:27:                                     ; preds = %15
  %28 = shl i64 %18, 12
  br label %160

; <label>:29:                                     ; preds = %160, %15
  %30 = phi %struct.CPUX86State* [ %21, %15 ], [ %162, %160 ]
  %31 = phi i64 [ %23, %15 ], [ %164, %160 ]
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19
  %33 = and i64 %31, 4095
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %62, label %35, !prof !2

; <label>:35:                                     ; preds = %29
  %36 = and i64 %16, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %66

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 90, i64 %20, i64 %19
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 95
  store %struct.CPUTLBEntry* %32, %struct.CPUTLBEntry** %41, align 8
  %42 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %40)
  %43 = and i64 %40, -4096
  %44 = add i64 %43, %16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %16, i32 0)
  %45 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %46 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %45, i64 0, i32 83
  store i64 0, i64* %46, align 8
  %47 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %42, i32 1)
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %38
  %49 = and i64 %44, -4096
  %50 = tail call i64 @se_notdirty_mem_write(i64 %49)
  %51 = and i64 %44, 4095
  %52 = or i64 %50, %51
  %53 = inttoptr i64 %52 to i16*
  store i16 %1, i16* %53, align 2
  br label %55

; <label>:54:                                     ; preds = %38
  tail call void @io_writew_mmu(i64 %40, i16 zeroext %1, i64 %16, i8* null)
  br label %55

; <label>:55:                                     ; preds = %48, %54
  %56 = zext i16 %1 to i64
  %57 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %16, i64 %56, i32 2, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %58 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %167, label %61

; <label>:61:                                     ; preds = %55
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %56, i32 2, i32 3, i64 0)
  br label %167

; <label>:62:                                     ; preds = %29
  %63 = and i64 %16, 4095
  %64 = add nuw nsw i64 %63, 1
  %65 = icmp ugt i64 %64, 4095
  br i1 %65, label %66, label %150, !prof !3

; <label>:66:                                     ; preds = %35, %62
  %67 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

; <label>:70:                                     ; preds = %66
  %71 = zext i16 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %16, i64 %71, i32 2, i32 1)
  br label %72

; <label>:72:                                     ; preds = %70, %66
  %73 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

; <label>:76:                                     ; preds = %72
  %77 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 -1, i64 0)
  br label %78

; <label>:78:                                     ; preds = %76, %72
  %79 = phi i64 [ %77, %76 ], [ %16, %72 ]
  %80 = lshr i64 %79, 12
  %81 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %80, i64 0, i64 4503599627370495, i64 0)
  %82 = and i64 %81, 1023
  %83 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %83, i64 0, i32 89, i64 %20, i64 %82, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %79, -4096
  %87 = and i64 %85, -4088
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %91, label %89

; <label>:89:                                     ; preds = %78
  %90 = shl i64 %81, 12
  br label %143

; <label>:91:                                     ; preds = %143, %78
  %92 = phi %struct.CPUX86State* [ %83, %78 ], [ %145, %143 ]
  %93 = phi i64 [ %85, %78 ], [ %147, %143 ]
  %94 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 89, i64 %20, i64 %82
  %95 = and i64 %93, 4095
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %124, label %97

; <label>:97:                                     ; preds = %91
  %98 = and i64 %79, 1
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %128

; <label>:100:                                    ; preds = %97
  %101 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 90, i64 %20, i64 %82
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 95
  store %struct.CPUTLBEntry* %94, %struct.CPUTLBEntry** %103, align 8
  %104 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %102)
  %105 = and i64 %102, -4096
  %106 = add i64 %105, %79
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %79, i32 0)
  %107 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %107, i64 0, i32 83
  store i64 0, i64* %108, align 8
  %109 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %104, i32 1)
  br i1 %109, label %110, label %116

; <label>:110:                                    ; preds = %100
  %111 = and i64 %106, -4096
  %112 = tail call i64 @se_notdirty_mem_write(i64 %111)
  %113 = and i64 %106, 4095
  %114 = or i64 %112, %113
  %115 = inttoptr i64 %114 to i16*
  store i16 %1, i16* %115, align 2
  br label %117

; <label>:116:                                    ; preds = %100
  tail call void @io_writew_mmu(i64 %102, i16 zeroext %1, i64 %79, i8* null)
  br label %117

; <label>:117:                                    ; preds = %116, %110
  %118 = zext i16 %1 to i64
  %119 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %79, i64 %118, i32 2, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %120 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %167, label %123

; <label>:123:                                    ; preds = %117
  tail call void @tcg_llvm_after_memory_access(i64 %79, i64 %118, i32 2, i32 3, i64 0)
  br label %167

; <label>:124:                                    ; preds = %91
  %125 = and i64 %79, 4095
  %126 = add nuw nsw i64 %125, 1
  %127 = icmp ugt i64 %126, 4095
  br i1 %127, label %128, label %133

; <label>:128:                                    ; preds = %124, %97
  %129 = add i64 %79, 1
  %130 = lshr i16 %1, 8
  %131 = trunc i16 %130 to i8
  tail call fastcc void @slow_stb_mmu(i64 %129, i8 zeroext %131, i32 %2)
  %132 = trunc i16 %1 to i8
  tail call fastcc void @slow_stb_mmu(i64 %79, i8 zeroext %132, i32 %2)
  br label %167

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 89, i64 %20, i64 %82, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %79
  %137 = inttoptr i64 %136 to i16*
  store i16 %1, i16* %137, align 2
  %138 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %167, label %141

; <label>:141:                                    ; preds = %133
  %142 = zext i16 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %79, i64 %142, i32 2, i32 2, i64 0)
  br label %167

; <label>:143:                                    ; preds = %143, %89
  %144 = phi %struct.CPUX86State* [ %83, %89 ], [ %145, %143 ]
  tail call void @tlb_fill(%struct.CPUX86State* %144, i64 %79, i64 %90, i32 1, i32 %2, i8* null)
  %145 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %146 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %145, i64 0, i32 89, i64 %20, i64 %82, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, -4088
  %149 = icmp eq i64 %86, %148
  br i1 %149, label %91, label %143

; <label>:150:                                    ; preds = %62
  %151 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %16
  %154 = inttoptr i64 %153 to i16*
  store i16 %1, i16* %154, align 2
  %155 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %167, label %158

; <label>:158:                                    ; preds = %150
  %159 = zext i16 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %159, i32 2, i32 2, i64 0)
  br label %167

; <label>:160:                                    ; preds = %27, %160
  %161 = phi %struct.CPUX86State* [ %21, %27 ], [ %162, %160 ]
  tail call void @tlb_fill(%struct.CPUX86State* %161, i64 %16, i64 %28, i32 1, i32 %2, i8* null)
  %162 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %163 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = and i64 %164, -4088
  %166 = icmp eq i64 %24, %165
  br i1 %166, label %29, label %160, !prof !2

; <label>:167:                                    ; preds = %141, %133, %128, %123, %117, %55, %150, %61, %158
  ret void
}

declare i64 @se_notdirty_mem_write(i64) local_unnamed_addr #6

declare void @io_writew_mmu(i64, i16 zeroext, i64, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define internal fastcc void @slow_stb_mmu(i64, i8 zeroext, i32) unnamed_addr #2 {
  %4 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = zext i8 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %8, i32 1, i32 1)
  br label %9

; <label>:9:                                      ; preds = %3, %7
  %10 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %15

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i64 [ %14, %13 ], [ %0, %9 ]
  %17 = lshr i64 %16, 12
  %18 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %17, i64 0, i64 4503599627370495, i64 0)
  %19 = and i64 %18, 1023
  %20 = sext i32 %2 to i64
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %16, -4096
  %25 = and i64 %23, -4088
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %15
  %28 = shl i64 %18, 12
  br label %69

; <label>:29:                                     ; preds = %69, %15
  %30 = phi %struct.CPUX86State* [ %21, %15 ], [ %71, %69 ]
  %31 = phi i64 [ %23, %15 ], [ %73, %69 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %59, label %34

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 90, i64 %20, i64 %19
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 95
  store %struct.CPUTLBEntry* %35, %struct.CPUTLBEntry** %38, align 8
  %39 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %37)
  %40 = and i64 %37, -4096
  %41 = add i64 %40, %16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %16, i32 0)
  %42 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %43 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 83
  store i64 0, i64* %43, align 8
  %44 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %39, i32 1)
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %34
  %46 = and i64 %41, -4096
  %47 = tail call i64 @se_notdirty_mem_write(i64 %46)
  %48 = and i64 %41, 4095
  %49 = or i64 %47, %48
  %50 = inttoptr i64 %49 to i8*
  store i8 %1, i8* %50, align 1
  br label %52

; <label>:51:                                     ; preds = %34
  tail call void @io_writeb_mmu(i64 %37, i8 zeroext %1, i64 %16, i8* null)
  br label %52

; <label>:52:                                     ; preds = %45, %51
  %53 = zext i8 %1 to i64
  %54 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %16, i64 %53, i32 1, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %55 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

; <label>:58:                                     ; preds = %52
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %53, i32 1, i32 3, i64 0)
  br label %76

; <label>:59:                                     ; preds = %29
  %60 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %16
  %63 = inttoptr i64 %62 to i8*
  store i8 %1, i8* %63, align 1
  %64 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

; <label>:67:                                     ; preds = %59
  %68 = zext i8 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %68, i32 1, i32 2, i64 0)
  br label %76

; <label>:69:                                     ; preds = %27, %69
  %70 = phi %struct.CPUX86State* [ %21, %27 ], [ %71, %69 ]
  tail call void @tlb_fill(%struct.CPUX86State* %70, i64 %16, i64 %28, i32 1, i32 %2, i8* null)
  %71 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %72 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, -4088
  %75 = icmp eq i64 %24, %74
  br i1 %75, label %29, label %69

; <label>:76:                                     ; preds = %52, %59, %58, %67
  ret void
}

declare void @io_writeb_mmu(i64, i8 zeroext, i64, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @__stl_mmu(i64, i32, i32) local_unnamed_addr #2 {
  %4 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %8, i32 4, i32 1)
  br label %9

; <label>:9:                                      ; preds = %3, %7
  %10 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %15

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i64 [ %14, %13 ], [ %0, %9 ]
  %17 = lshr i64 %16, 12
  %18 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %17, i64 0, i64 4503599627370495, i64 0)
  %19 = and i64 %18, 1023
  %20 = sext i32 %2 to i64
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %16, -4096
  %25 = and i64 %23, -4088
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %29, label %27, !prof !2

; <label>:27:                                     ; preds = %15
  %28 = shl i64 %18, 12
  br label %166

; <label>:29:                                     ; preds = %166, %15
  %30 = phi %struct.CPUX86State* [ %21, %15 ], [ %168, %166 ]
  %31 = phi i64 [ %23, %15 ], [ %170, %166 ]
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19
  %33 = and i64 %31, 4095
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %62, label %35, !prof !2

; <label>:35:                                     ; preds = %29
  %36 = and i64 %16, 3
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %66

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 90, i64 %20, i64 %19
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 95
  store %struct.CPUTLBEntry* %32, %struct.CPUTLBEntry** %41, align 8
  %42 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %40)
  %43 = and i64 %40, -4096
  %44 = add i64 %43, %16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %16, i32 0)
  %45 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %46 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %45, i64 0, i32 83
  store i64 0, i64* %46, align 8
  %47 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %42, i32 1)
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %38
  %49 = and i64 %44, -4096
  %50 = tail call i64 @se_notdirty_mem_write(i64 %49)
  %51 = and i64 %44, 4095
  %52 = or i64 %50, %51
  %53 = inttoptr i64 %52 to i32*
  store i32 %1, i32* %53, align 4
  br label %55

; <label>:54:                                     ; preds = %38
  tail call void @io_writel_mmu(i64 %40, i32 %1, i64 %16, i8* null)
  br label %55

; <label>:55:                                     ; preds = %48, %54
  %56 = zext i32 %1 to i64
  %57 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %16, i64 %56, i32 4, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %58 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %173, label %61

; <label>:61:                                     ; preds = %55
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %56, i32 4, i32 3, i64 0)
  br label %173

; <label>:62:                                     ; preds = %29
  %63 = and i64 %16, 4095
  %64 = add nuw nsw i64 %63, 3
  %65 = icmp ugt i64 %64, 4095
  br i1 %65, label %66, label %156, !prof !3

; <label>:66:                                     ; preds = %35, %62
  %67 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

; <label>:70:                                     ; preds = %66
  %71 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %16, i64 %71, i32 4, i32 1)
  br label %72

; <label>:72:                                     ; preds = %70, %66
  %73 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

; <label>:76:                                     ; preds = %72
  %77 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 -1, i64 0)
  br label %78

; <label>:78:                                     ; preds = %76, %72
  %79 = phi i64 [ %77, %76 ], [ %16, %72 ]
  %80 = lshr i64 %79, 12
  %81 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %80, i64 0, i64 4503599627370495, i64 0)
  %82 = and i64 %81, 1023
  %83 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %83, i64 0, i32 89, i64 %20, i64 %82, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %79, -4096
  %87 = and i64 %85, -4088
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %91, label %89

; <label>:89:                                     ; preds = %78
  %90 = shl i64 %81, 12
  br label %149

; <label>:91:                                     ; preds = %149, %78
  %92 = phi %struct.CPUX86State* [ %83, %78 ], [ %151, %149 ]
  %93 = phi i64 [ %85, %78 ], [ %153, %149 ]
  %94 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 89, i64 %20, i64 %82
  %95 = and i64 %93, 4095
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %124, label %97

; <label>:97:                                     ; preds = %91
  %98 = and i64 %79, 3
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %128

; <label>:100:                                    ; preds = %97
  %101 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 90, i64 %20, i64 %82
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 95
  store %struct.CPUTLBEntry* %94, %struct.CPUTLBEntry** %103, align 8
  %104 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %102)
  %105 = and i64 %102, -4096
  %106 = add i64 %105, %79
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %79, i32 0)
  %107 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %107, i64 0, i32 83
  store i64 0, i64* %108, align 8
  %109 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %104, i32 1)
  br i1 %109, label %110, label %116

; <label>:110:                                    ; preds = %100
  %111 = and i64 %106, -4096
  %112 = tail call i64 @se_notdirty_mem_write(i64 %111)
  %113 = and i64 %106, 4095
  %114 = or i64 %112, %113
  %115 = inttoptr i64 %114 to i32*
  store i32 %1, i32* %115, align 4
  br label %117

; <label>:116:                                    ; preds = %100
  tail call void @io_writel_mmu(i64 %102, i32 %1, i64 %79, i8* null)
  br label %117

; <label>:117:                                    ; preds = %116, %110
  %118 = zext i32 %1 to i64
  %119 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %79, i64 %118, i32 4, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %120 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %173, label %123

; <label>:123:                                    ; preds = %117
  tail call void @tcg_llvm_after_memory_access(i64 %79, i64 %118, i32 4, i32 3, i64 0)
  br label %173

; <label>:124:                                    ; preds = %91
  %125 = and i64 %79, 4095
  %126 = add nuw nsw i64 %125, 3
  %127 = icmp ugt i64 %126, 4095
  br i1 %127, label %128, label %139

; <label>:128:                                    ; preds = %124, %97
  %129 = add i64 %79, 3
  %130 = lshr i32 %1, 24
  %131 = trunc i32 %130 to i8
  tail call fastcc void @slow_stb_mmu(i64 %129, i8 zeroext %131, i32 %2)
  %132 = add i64 %79, 2
  %133 = lshr i32 %1, 16
  %134 = trunc i32 %133 to i8
  tail call fastcc void @slow_stb_mmu(i64 %132, i8 zeroext %134, i32 %2)
  %135 = add i64 %79, 1
  %136 = lshr i32 %1, 8
  %137 = trunc i32 %136 to i8
  tail call fastcc void @slow_stb_mmu(i64 %135, i8 zeroext %137, i32 %2)
  %138 = trunc i32 %1 to i8
  tail call fastcc void @slow_stb_mmu(i64 %79, i8 zeroext %138, i32 %2)
  br label %173

; <label>:139:                                    ; preds = %124
  %140 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 89, i64 %20, i64 %82, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %79
  %143 = inttoptr i64 %142 to i32*
  store i32 %1, i32* %143, align 4
  %144 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %173, label %147

; <label>:147:                                    ; preds = %139
  %148 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %79, i64 %148, i32 4, i32 2, i64 0)
  br label %173

; <label>:149:                                    ; preds = %149, %89
  %150 = phi %struct.CPUX86State* [ %83, %89 ], [ %151, %149 ]
  tail call void @tlb_fill(%struct.CPUX86State* %150, i64 %79, i64 %90, i32 1, i32 %2, i8* null)
  %151 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %152 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 89, i64 %20, i64 %82, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = and i64 %153, -4088
  %155 = icmp eq i64 %86, %154
  br i1 %155, label %91, label %149

; <label>:156:                                    ; preds = %62
  %157 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %16
  %160 = inttoptr i64 %159 to i32*
  store i32 %1, i32* %160, align 4
  %161 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164

; <label>:164:                                    ; preds = %156
  %165 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %165, i32 4, i32 2, i64 0)
  br label %173

; <label>:166:                                    ; preds = %27, %166
  %167 = phi %struct.CPUX86State* [ %21, %27 ], [ %168, %166 ]
  tail call void @tlb_fill(%struct.CPUX86State* %167, i64 %16, i64 %28, i32 1, i32 %2, i8* null)
  %168 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %169 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %168, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = and i64 %170, -4088
  %172 = icmp eq i64 %24, %171
  br i1 %172, label %29, label %166, !prof !2

; <label>:173:                                    ; preds = %147, %139, %128, %123, %117, %55, %156, %61, %164
  ret void
}

declare void @io_writel_mmu(i64, i32, i64, i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: uwtable
define internal fastcc i32 @ldub_kernel(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %13, -4096
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %25, label %22, !prof !2

; <label>:22:                                     ; preds = %12
  %23 = tail call zeroext i8 @__ldb_mmu(i64 %13, i32 0)
  %24 = zext i8 %23 to i32
  br label %37

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 0, i64 %16, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %13
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %25
  %36 = zext i8 %30 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %36, i32 4, i32 0, i64 0)
  br label %37

; <label>:37:                                     ; preds = %25, %35, %22
  %38 = phi i32 [ %24, %22 ], [ %31, %35 ], [ %31, %25 ]
  ret i32 %38
}

; Function Attrs: uwtable
define internal fastcc void @stb_kernel(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %7, i32 4, i32 1)
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %14

; <label>:14:                                     ; preds = %8, %12
  %15 = phi i64 [ %13, %12 ], [ %0, %8 ]
  %16 = lshr i64 %15, 12
  %17 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 4503599627370495, i64 0)
  %18 = and i64 %17, 1023
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 0, i64 %18, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %15, -4096
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %26, label %24, !prof !2

; <label>:24:                                     ; preds = %14
  %25 = trunc i32 %1 to i8
  tail call void @__stb_mmu(i64 %15, i8 zeroext %25, i32 0)
  br label %37

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 0, i64 %18, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %15
  %30 = inttoptr i64 %29 to i8*
  %31 = trunc i32 %1 to i8
  store i8 %31, i8* %30, align 1
  %32 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %26
  %36 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %36, i32 4, i32 2, i64 0)
  br label %37

; <label>:37:                                     ; preds = %26, %35, %24
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @tss_load_seg(i32, i32) unnamed_addr #2 {
  %3 = and i32 %1, 65532
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %149, label %5

; <label>:5:                                      ; preds = %2
  %6 = and i32 %1, 4
  %7 = icmp eq i32 %6, 0
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 12
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 14
  %11 = select i1 %7, %struct.SegmentCache* %10, %struct.SegmentCache* %9
  %12 = or i32 %1, 7
  %13 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %11, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %5
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:17:                                     ; preds = %5
  %18 = and i32 %1, -8
  %19 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %11, i64 0, i32 1
  %20 = load i64, i64* %19, align 4
  %21 = sext i32 %18 to i64
  %22 = add i64 %20, %21
  %23 = tail call fastcc i32 @ldl_kernel(i64 %22)
  %24 = add i64 %22, 4
  %25 = tail call fastcc i32 @ldl_kernel(i64 %24)
  %26 = and i32 %25, 4096
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %17
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:29:                                     ; preds = %17
  %30 = and i32 %1, 3
  %31 = lshr i32 %25, 13
  %32 = and i32 %31, 3
  %33 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %0, 1
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %29
  %39 = and i32 %25, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:42:                                     ; preds = %38
  %43 = icmp eq i32 %32, %30
  br i1 %43, label %67, label %44

; <label>:44:                                     ; preds = %42
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:45:                                     ; preds = %29
  %46 = icmp eq i32 %0, 2
  %47 = and i32 %25, 2560
  br i1 %46, label %48, label %56

; <label>:48:                                     ; preds = %45
  %49 = icmp eq i32 %47, 512
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %48
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:51:                                     ; preds = %48
  %52 = icmp eq i32 %32, %36
  %53 = icmp eq i32 %32, %30
  %54 = and i1 %53, %52
  br i1 %54, label %67, label %55

; <label>:55:                                     ; preds = %51
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:56:                                     ; preds = %45
  %57 = icmp eq i32 %47, 2048
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %56
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:59:                                     ; preds = %56
  %60 = and i32 %25, 3072
  %61 = icmp ult i32 %60, 3072
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %59
  %63 = icmp ult i32 %32, %36
  %64 = icmp ult i32 %32, %30
  %65 = or i1 %64, %63
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %62
  tail call fastcc void @raise_exception_err(i32 10, i32 %3) #13
  unreachable

; <label>:67:                                     ; preds = %42, %62, %51, %59
  %68 = trunc i32 %25 to i16
  %69 = icmp slt i16 %68, 0
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %67
  tail call fastcc void @raise_exception_err(i32 11, i32 %3) #13
  unreachable

; <label>:71:                                     ; preds = %67
  %72 = lshr i32 %23, 16
  %73 = shl i32 %25, 16
  %74 = and i32 %73, 16711680
  %75 = and i32 %25, -16777216
  %76 = or i32 %75, %72
  %77 = or i32 %76, %74
  %78 = zext i32 %77 to i64
  %79 = and i32 %23, 65535
  %80 = and i32 %25, 983040
  %81 = or i32 %80, %79
  %82 = and i32 %25, 8388608
  %83 = icmp eq i32 %82, 0
  %84 = shl nuw i32 %81, 12
  %85 = or i32 %84, 4095
  %86 = select i1 %83, i32 %81, i32 %85
  %87 = sext i32 %0 to i64
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 %87, i32 0
  store i32 %1, i32* %88, align 4
  %89 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 %87, i32 1
  store i64 %78, i64* %89, align 4
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 %87, i32 2
  store i32 %86, i32* %90, align 4
  %91 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 %87, i32 3
  store i32 %25, i32* %91, align 4
  %92 = load i32, i32* %34, align 4
  br i1 %37, label %93, label %109

; <label>:93:                                     ; preds = %71
  %94 = and i32 %92, 16384
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %25, 2097152
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %97, %95
  br i1 %98, label %102, label %99

; <label>:99:                                     ; preds = %93
  %100 = and i32 %92, -32881
  %101 = or i32 %100, 32816
  store i32 %101, i32* %34, align 4
  br label %109

; <label>:102:                                    ; preds = %93
  %103 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 1, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = lshr i32 %104, 18
  %106 = and i32 %105, 16
  %107 = and i32 %92, -32785
  %108 = or i32 %106, %107
  store i32 %108, i32* %34, align 4
  br label %109

; <label>:109:                                    ; preds = %102, %99, %71
  %110 = phi i32 [ %101, %99 ], [ %108, %102 ], [ %92, %71 ]
  %111 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 2, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = lshr i32 %112, 17
  %114 = and i32 %113, 32
  %115 = trunc i32 %110 to i16
  %116 = icmp slt i16 %115, 0
  br i1 %116, label %145, label %117

; <label>:117:                                    ; preds = %109
  %118 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 16, i64 0
  %119 = load i64, i64* %118, align 4
  %120 = and i64 %119, 1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %130, label %122

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 7
  %124 = load i64, i64* %123, align 4
  %125 = and i64 %124, 131072
  %126 = icmp ne i64 %125, 0
  %127 = and i32 %110, 16
  %128 = icmp eq i32 %127, 0
  %129 = or i1 %128, %126
  br i1 %129, label %130, label %132

; <label>:130:                                    ; preds = %122, %117
  %131 = or i32 %114, 64
  br label %145

; <label>:132:                                    ; preds = %122
  %133 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 3, i32 1
  %134 = load i64, i64* %133, align 4
  %135 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 0, i32 1
  %136 = load i64, i64* %135, align 4
  %137 = or i64 %136, %134
  %138 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 2, i32 1
  %139 = load i64, i64* %138, align 4
  %140 = or i64 %137, %139
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = shl nuw nsw i32 %142, 6
  %144 = or i32 %143, %114
  br label %145

; <label>:145:                                    ; preds = %109, %130, %132
  %146 = phi i32 [ %114, %109 ], [ %131, %130 ], [ %144, %132 ]
  %147 = and i32 %110, -97
  %148 = or i32 %146, %147
  store i32 %148, i32* %34, align 4
  br label %153

; <label>:149:                                    ; preds = %2
  %150 = add i32 %0, -1
  %151 = icmp ult i32 %150, 2
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %149
  tail call fastcc void @raise_exception_err(i32 10, i32 0) #13
  unreachable

; <label>:153:                                    ; preds = %149, %145
  ret void
}

declare void @hw_breakpoint_remove(%struct.CPUX86State*, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: uwtable
define void @__stb_mmu(i64, i8 zeroext, i32) local_unnamed_addr #2 {
  %4 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = zext i8 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %8, i32 1, i32 1)
  br label %9

; <label>:9:                                      ; preds = %3, %7
  %10 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %15

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i64 [ %14, %13 ], [ %0, %9 ]
  %17 = lshr i64 %16, 12
  %18 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %17, i64 0, i64 4503599627370495, i64 0)
  %19 = and i64 %18, 1023
  %20 = sext i32 %2 to i64
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %16, -4096
  %25 = and i64 %23, -4088
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %29, label %27, !prof !2

; <label>:27:                                     ; preds = %15
  %28 = shl i64 %18, 12
  br label %69

; <label>:29:                                     ; preds = %69, %15
  %30 = phi %struct.CPUX86State* [ %21, %15 ], [ %71, %69 ]
  %31 = phi i64 [ %23, %15 ], [ %73, %69 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %59, label %34, !prof !2

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 90, i64 %20, i64 %19
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 95
  store %struct.CPUTLBEntry* %35, %struct.CPUTLBEntry** %38, align 8
  %39 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %37)
  %40 = and i64 %37, -4096
  %41 = add i64 %40, %16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %16, i32 0)
  %42 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %43 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 83
  store i64 0, i64* %43, align 8
  %44 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %39, i32 1)
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %34
  %46 = and i64 %41, -4096
  %47 = tail call i64 @se_notdirty_mem_write(i64 %46)
  %48 = and i64 %41, 4095
  %49 = or i64 %47, %48
  %50 = inttoptr i64 %49 to i8*
  store i8 %1, i8* %50, align 1
  br label %52

; <label>:51:                                     ; preds = %34
  tail call void @io_writeb_mmu(i64 %37, i8 zeroext %1, i64 %16, i8* null)
  br label %52

; <label>:52:                                     ; preds = %45, %51
  %53 = zext i8 %1 to i64
  %54 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %16, i64 %53, i32 1, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %55 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

; <label>:58:                                     ; preds = %52
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %53, i32 1, i32 3, i64 0)
  br label %76

; <label>:59:                                     ; preds = %29
  %60 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 89, i64 %20, i64 %19, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %16
  %63 = inttoptr i64 %62 to i8*
  store i8 %1, i8* %63, align 1
  %64 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

; <label>:67:                                     ; preds = %59
  %68 = zext i8 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %16, i64 %68, i32 1, i32 2, i64 0)
  br label %76

; <label>:69:                                     ; preds = %27, %69
  %70 = phi %struct.CPUX86State* [ %21, %27 ], [ %71, %69 ]
  tail call void @tlb_fill(%struct.CPUX86State* %70, i64 %16, i64 %28, i32 1, i32 %2, i8* null)
  %71 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %72 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 89, i64 %20, i64 %19, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, -4088
  %75 = icmp eq i64 %24, %74
  br i1 %75, label %29, label %69, !prof !2

; <label>:76:                                     ; preds = %52, %59, %58, %67
  ret void
}

; Function Attrs: uwtable
define zeroext i8 @__ldb_mmu(i64, i32) local_unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26, !prof !2

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %74

; <label>:28:                                     ; preds = %74, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %76, %74 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %77, %74 ]
  %31 = phi i64 [ %22, %13 ], [ %79, %74 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %63, label %34, !prof !2

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %37, align 8
  %38 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %36)
  %39 = and i64 %36, -4096
  %40 = add i64 %39, %14
  %41 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 83
  store i64 0, i64* %42, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %43 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %38, i32 0)
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %34
  %45 = and i64 %40, -4096
  %46 = tail call i64 @se_notdirty_mem_read(i64 %45)
  %47 = and i64 %40, 4095
  %48 = or i64 %46, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8, i8* %49, align 1
  br label %53

; <label>:51:                                     ; preds = %34
  %52 = tail call zeroext i8 @io_readb_mmu(i64 %36, i64 %14, i8* null)
  br label %53

; <label>:53:                                     ; preds = %44, %51
  %54 = phi i8 [ %50, %44 ], [ %52, %51 ]
  %55 = zext i8 %54 to i64
  %56 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %55, i32 1, i32 0)
  %57 = trunc i64 %56 to i8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %58 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %82, label %61

; <label>:61:                                     ; preds = %53
  %62 = and i64 %56, 255
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %62, i32 1, i32 1, i64 0)
  br label %82

; <label>:63:                                     ; preds = %28
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %14
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8, i8* %67, align 1
  %69 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

; <label>:72:                                     ; preds = %63
  %73 = zext i8 %68 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %73, i32 1, i32 0, i64 0)
  br label %82

; <label>:74:                                     ; preds = %26, %74
  %75 = phi %struct.CPUX86State* [ %19, %26 ], [ %76, %74 ]
  tail call void @tlb_fill(%struct.CPUX86State* %75, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %76 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %77 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %76, i64 0, i32 89, i64 %18, i64 %17
  %78 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %77, i64 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, -4088
  %81 = icmp eq i64 %23, %80
  br i1 %81, label %28, label %74, !prof !2

; <label>:82:                                     ; preds = %53, %63, %61, %72
  %83 = phi i8 [ %57, %61 ], [ %57, %53 ], [ %68, %72 ], [ %68, %63 ]
  ret i8 %83
}

declare zeroext i8 @io_readb_mmu(i64, i64, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @__stq_mmu(i64, i64, i32) local_unnamed_addr #2 {
  %4 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %1, i32 8, i32 1)
  br label %8

; <label>:8:                                      ; preds = %3, %7
  %9 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %14

; <label>:14:                                     ; preds = %8, %12
  %15 = phi i64 [ %13, %12 ], [ %0, %8 ]
  %16 = lshr i64 %15, 12
  %17 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 4503599627370495, i64 0)
  %18 = and i64 %17, 1023
  %19 = sext i32 %2 to i64
  %20 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %20, i64 0, i32 89, i64 %19, i64 %18, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %15, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26, !prof !2

; <label>:26:                                     ; preds = %14
  %27 = shl i64 %17, 12
  br label %182

; <label>:28:                                     ; preds = %182, %14
  %29 = phi %struct.CPUX86State* [ %20, %14 ], [ %184, %182 ]
  %30 = phi i64 [ %22, %14 ], [ %186, %182 ]
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %19, i64 %18
  %32 = and i64 %30, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %65, label %34, !prof !2

; <label>:34:                                     ; preds = %28
  %35 = and i64 %15, 7
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %69

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %19, i64 %18
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %31, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %15
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %15, i32 0)
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 1)
  br i1 %46, label %47, label %58

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_write(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = trunc i64 %1 to i32
  %53 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %53, align 4
  %54 = add i64 %51, 4
  %55 = lshr i64 %1, 32
  %56 = trunc i64 %55 to i32
  %57 = inttoptr i64 %54 to i32*
  store i32 %56, i32* %57, align 4
  br label %59

; <label>:58:                                     ; preds = %37
  tail call void @io_writeq_mmu(i64 %39, i64 %1, i64 %15, i8* null)
  br label %59

; <label>:59:                                     ; preds = %47, %58
  %60 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %15, i64 %1, i32 8, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %61 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %189, label %64

; <label>:64:                                     ; preds = %59
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %1, i32 8, i32 3, i64 0)
  br label %189

; <label>:65:                                     ; preds = %28
  %66 = and i64 %15, 4095
  %67 = add nuw nsw i64 %66, 7
  %68 = icmp ugt i64 %67, 4095
  br i1 %68, label %69, label %173, !prof !3

; <label>:69:                                     ; preds = %34, %65
  %70 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

; <label>:73:                                     ; preds = %69
  tail call void @tcg_llvm_before_memory_access(i64 %15, i64 %1, i32 8, i32 1)
  br label %74

; <label>:74:                                     ; preds = %73, %69
  %75 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

; <label>:78:                                     ; preds = %74
  %79 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 -1, i64 0)
  br label %80

; <label>:80:                                     ; preds = %78, %74
  %81 = phi i64 [ %79, %78 ], [ %15, %74 ]
  %82 = lshr i64 %81, 12
  %83 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %82, i64 0, i64 4503599627370495, i64 0)
  %84 = and i64 %83, 1023
  %85 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %85, i64 0, i32 89, i64 %19, i64 %84, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %81, -4096
  %89 = and i64 %87, -4088
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %80
  %92 = shl i64 %83, 12
  br label %166

; <label>:93:                                     ; preds = %166, %80
  %94 = phi %struct.CPUX86State* [ %85, %80 ], [ %168, %166 ]
  %95 = phi i64 [ %87, %80 ], [ %170, %166 ]
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %94, i64 0, i32 89, i64 %19, i64 %84
  %97 = and i64 %95, 4095
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %130, label %99

; <label>:99:                                     ; preds = %93
  %100 = and i64 %81, 7
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %134

; <label>:102:                                    ; preds = %99
  %103 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %94, i64 0, i32 90, i64 %19, i64 %84
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %94, i64 0, i32 95
  store %struct.CPUTLBEntry* %96, %struct.CPUTLBEntry** %105, align 8
  %106 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %104)
  %107 = and i64 %104, -4096
  %108 = add i64 %107, %81
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %81, i32 0)
  %109 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %110 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %109, i64 0, i32 83
  store i64 0, i64* %110, align 8
  %111 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %106, i32 1)
  br i1 %111, label %112, label %123

; <label>:112:                                    ; preds = %102
  %113 = and i64 %108, -4096
  %114 = tail call i64 @se_notdirty_mem_write(i64 %113)
  %115 = and i64 %108, 4095
  %116 = or i64 %114, %115
  %117 = trunc i64 %1 to i32
  %118 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %118, align 4
  %119 = add i64 %116, 4
  %120 = lshr i64 %1, 32
  %121 = trunc i64 %120 to i32
  %122 = inttoptr i64 %119 to i32*
  store i32 %121, i32* %122, align 4
  br label %124

; <label>:123:                                    ; preds = %102
  tail call void @io_writeq_mmu(i64 %104, i64 %1, i64 %81, i8* null)
  br label %124

; <label>:124:                                    ; preds = %123, %112
  %125 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %81, i64 %1, i32 8, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %126 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %189, label %129

; <label>:129:                                    ; preds = %124
  tail call void @tcg_llvm_after_memory_access(i64 %81, i64 %1, i32 8, i32 3, i64 0)
  br label %189

; <label>:130:                                    ; preds = %93
  %131 = and i64 %81, 4095
  %132 = add nuw nsw i64 %131, 7
  %133 = icmp ugt i64 %132, 4095
  br i1 %133, label %134, label %157

; <label>:134:                                    ; preds = %130, %99
  %135 = add i64 %81, 7
  %136 = lshr i64 %1, 56
  %137 = trunc i64 %136 to i8
  tail call fastcc void @slow_stb_mmu(i64 %135, i8 zeroext %137, i32 %2)
  %138 = add i64 %81, 6
  %139 = lshr i64 %1, 48
  %140 = trunc i64 %139 to i8
  tail call fastcc void @slow_stb_mmu(i64 %138, i8 zeroext %140, i32 %2)
  %141 = add i64 %81, 5
  %142 = lshr i64 %1, 40
  %143 = trunc i64 %142 to i8
  tail call fastcc void @slow_stb_mmu(i64 %141, i8 zeroext %143, i32 %2)
  %144 = add i64 %81, 4
  %145 = lshr i64 %1, 32
  %146 = trunc i64 %145 to i8
  tail call fastcc void @slow_stb_mmu(i64 %144, i8 zeroext %146, i32 %2)
  %147 = add i64 %81, 3
  %148 = lshr i64 %1, 24
  %149 = trunc i64 %148 to i8
  tail call fastcc void @slow_stb_mmu(i64 %147, i8 zeroext %149, i32 %2)
  %150 = add i64 %81, 2
  %151 = lshr i64 %1, 16
  %152 = trunc i64 %151 to i8
  tail call fastcc void @slow_stb_mmu(i64 %150, i8 zeroext %152, i32 %2)
  %153 = add i64 %81, 1
  %154 = lshr i64 %1, 8
  %155 = trunc i64 %154 to i8
  tail call fastcc void @slow_stb_mmu(i64 %153, i8 zeroext %155, i32 %2)
  %156 = trunc i64 %1 to i8
  tail call fastcc void @slow_stb_mmu(i64 %81, i8 zeroext %156, i32 %2)
  br label %189

; <label>:157:                                    ; preds = %130
  %158 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %94, i64 0, i32 89, i64 %19, i64 %84, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, %81
  %161 = inttoptr i64 %160 to i64*
  store i64 %1, i64* %161, align 8
  %162 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %189, label %165

; <label>:165:                                    ; preds = %157
  tail call void @tcg_llvm_after_memory_access(i64 %81, i64 %1, i32 8, i32 2, i64 0)
  br label %189

; <label>:166:                                    ; preds = %166, %91
  %167 = phi %struct.CPUX86State* [ %85, %91 ], [ %168, %166 ]
  tail call void @tlb_fill(%struct.CPUX86State* %167, i64 %81, i64 %92, i32 1, i32 %2, i8* null)
  %168 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %169 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %168, i64 0, i32 89, i64 %19, i64 %84, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = and i64 %170, -4088
  %172 = icmp eq i64 %88, %171
  br i1 %172, label %93, label %166

; <label>:173:                                    ; preds = %65
  %174 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %19, i64 %18, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, %15
  %177 = inttoptr i64 %176 to i64*
  store i64 %1, i64* %177, align 8
  %178 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

; <label>:181:                                    ; preds = %173
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %1, i32 8, i32 2, i64 0)
  br label %189

; <label>:182:                                    ; preds = %26, %182
  %183 = phi %struct.CPUX86State* [ %20, %26 ], [ %184, %182 ]
  tail call void @tlb_fill(%struct.CPUX86State* %183, i64 %15, i64 %27, i32 1, i32 %2, i8* null)
  %184 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %185 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %184, i64 0, i32 89, i64 %19, i64 %18, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = and i64 %186, -4088
  %188 = icmp eq i64 %23, %187
  br i1 %188, label %28, label %182, !prof !2

; <label>:189:                                    ; preds = %165, %157, %134, %129, %124, %59, %173, %64, %181
  ret void
}

declare void @io_writeq_mmu(i64, i64, i64, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define i64 @__ldq_mmu(i64, i32) local_unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26, !prof !2

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %84

; <label>:28:                                     ; preds = %84, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %86, %84 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %87, %84 ]
  %31 = phi i64 [ %22, %13 ], [ %89, %84 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %68, label %34, !prof !2

; <label>:34:                                     ; preds = %28
  %35 = and i64 %14, 7
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %72

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %14
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 0)
  br i1 %46, label %47, label %59

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_read(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = inttoptr i64 %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %51, 4
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = shl i64 %56, 32
  %58 = or i64 %57, %53
  br label %61

; <label>:59:                                     ; preds = %37
  %60 = tail call i64 @io_readq_mmu(i64 %39, i64 %14, i8* null)
  br label %61

; <label>:61:                                     ; preds = %47, %59
  %62 = phi i64 [ %58, %47 ], [ %60, %59 ]
  %63 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %62, i32 8, i32 0)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %64 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %92, label %67

; <label>:67:                                     ; preds = %61
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %63, i32 8, i32 1, i64 0)
  br label %92

; <label>:68:                                     ; preds = %28
  %69 = and i64 %14, 4095
  %70 = add nuw nsw i64 %69, 7
  %71 = icmp ugt i64 %70, 4095
  br i1 %71, label %72, label %74, !prof !3

; <label>:72:                                     ; preds = %34, %68
  %73 = tail call fastcc i64 @slow_ldq_mmu(i64 %14, i32 %1)
  br label %92

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %14
  %78 = inttoptr i64 %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

; <label>:83:                                     ; preds = %74
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %79, i32 8, i32 0, i64 0)
  br label %92

; <label>:84:                                     ; preds = %26, %84
  %85 = phi %struct.CPUX86State* [ %19, %26 ], [ %86, %84 ]
  tail call void @tlb_fill(%struct.CPUX86State* %85, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %86 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %87 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %86, i64 0, i32 89, i64 %18, i64 %17
  %88 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %87, i64 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = and i64 %89, -4088
  %91 = icmp eq i64 %23, %90
  br i1 %91, label %28, label %84, !prof !2

; <label>:92:                                     ; preds = %61, %74, %67, %83, %72
  %93 = phi i64 [ %73, %72 ], [ %63, %67 ], [ %63, %61 ], [ %79, %83 ], [ %79, %74 ]
  ret i64 %93
}

declare i64 @io_readq_mmu(i64, i64, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define internal fastcc i64 @slow_ldq_mmu(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %93

; <label>:28:                                     ; preds = %93, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %95, %93 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %96, %93 ]
  %31 = phi i64 [ %22, %13 ], [ %98, %93 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %68, label %34

; <label>:34:                                     ; preds = %28
  %35 = and i64 %14, 7
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %72

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %14
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 0)
  br i1 %46, label %47, label %59

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_read(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = inttoptr i64 %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %51, 4
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = shl i64 %56, 32
  %58 = or i64 %57, %53
  br label %61

; <label>:59:                                     ; preds = %37
  %60 = tail call i64 @io_readq_mmu(i64 %39, i64 %14, i8* null)
  br label %61

; <label>:61:                                     ; preds = %47, %59
  %62 = phi i64 [ %58, %47 ], [ %60, %59 ]
  %63 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %62, i32 8, i32 0)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %64 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %101, label %67

; <label>:67:                                     ; preds = %61
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %63, i32 8, i32 1, i64 0)
  br label %101

; <label>:68:                                     ; preds = %28
  %69 = and i64 %14, 4095
  %70 = add nuw nsw i64 %69, 7
  %71 = icmp ugt i64 %70, 4095
  br i1 %71, label %72, label %83

; <label>:72:                                     ; preds = %34, %68
  %73 = and i64 %14, -8
  %74 = add i64 %73, 8
  %75 = tail call fastcc i64 @slow_ldq_mmu(i64 %73, i32 %1)
  %76 = tail call fastcc i64 @slow_ldq_mmu(i64 %74, i32 %1)
  %77 = shl i64 %14, 3
  %78 = and i64 %77, 56
  %79 = lshr i64 %75, %78
  %80 = sub nsw i64 64, %78
  %81 = shl i64 %76, %80
  %82 = or i64 %81, %79
  ret i64 %82

; <label>:83:                                     ; preds = %68
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %14
  %87 = inttoptr i64 %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

; <label>:92:                                     ; preds = %83
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %88, i32 8, i32 0, i64 0)
  br label %101

; <label>:93:                                     ; preds = %26, %93
  %94 = phi %struct.CPUX86State* [ %19, %26 ], [ %95, %93 ]
  tail call void @tlb_fill(%struct.CPUX86State* %94, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %95 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 89, i64 %18, i64 %17
  %97 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %96, i64 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = and i64 %98, -4088
  %100 = icmp eq i64 %23, %99
  br i1 %100, label %28, label %93

; <label>:101:                                    ; preds = %61, %83, %67, %92
  %102 = phi i64 [ %63, %67 ], [ %63, %61 ], [ %88, %92 ], [ %88, %83 ]
  ret i64 %102
}

; Function Attrs: uwtable
define i32 @__ldl_mmu(i64, i32) local_unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26, !prof !2

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %83

; <label>:28:                                     ; preds = %83, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %85, %83 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %86, %83 ]
  %31 = phi i64 [ %22, %13 ], [ %88, %83 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %66, label %34, !prof !2

; <label>:34:                                     ; preds = %28
  %35 = and i64 %14, 3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %70

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %14
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 0)
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_read(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  br label %56

; <label>:54:                                     ; preds = %37
  %55 = tail call i32 @io_readl_mmu(i64 %39, i64 %14, i8* null)
  br label %56

; <label>:56:                                     ; preds = %47, %54
  %57 = phi i32 [ %53, %47 ], [ %55, %54 ]
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %58, i32 4, i32 0)
  %60 = trunc i64 %59 to i32
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %61 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %91, label %64

; <label>:64:                                     ; preds = %56
  %65 = and i64 %59, 4294967295
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %65, i32 4, i32 1, i64 0)
  br label %91

; <label>:66:                                     ; preds = %28
  %67 = and i64 %14, 4095
  %68 = add nuw nsw i64 %67, 3
  %69 = icmp ugt i64 %68, 4095
  br i1 %69, label %70, label %72, !prof !3

; <label>:70:                                     ; preds = %34, %66
  %71 = tail call fastcc i32 @slow_ldl_mmu(i64 %14, i32 %1)
  br label %91

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %14
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

; <label>:81:                                     ; preds = %72
  %82 = zext i32 %77 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %82, i32 4, i32 0, i64 0)
  br label %91

; <label>:83:                                     ; preds = %26, %83
  %84 = phi %struct.CPUX86State* [ %19, %26 ], [ %85, %83 ]
  tail call void @tlb_fill(%struct.CPUX86State* %84, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %85 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %85, i64 0, i32 89, i64 %18, i64 %17
  %87 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %86, i64 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, -4088
  %90 = icmp eq i64 %23, %89
  br i1 %90, label %28, label %83, !prof !2

; <label>:91:                                     ; preds = %56, %72, %64, %81, %70
  %92 = phi i32 [ %71, %70 ], [ %60, %64 ], [ %60, %56 ], [ %77, %81 ], [ %77, %72 ]
  ret i32 %92
}

declare i32 @io_readl_mmu(i64, i64, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define internal fastcc i32 @slow_ldl_mmu(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = sext i32 %1 to i64
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %18, i64 %17
  %21 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %20, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %14, -4096
  %24 = and i64 %22, -4088
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %13
  %27 = shl i64 %16, 12
  br label %94

; <label>:28:                                     ; preds = %94, %13
  %29 = phi %struct.CPUX86State* [ %19, %13 ], [ %96, %94 ]
  %30 = phi %struct.CPUTLBEntry* [ %20, %13 ], [ %97, %94 ]
  %31 = phi i64 [ %22, %13 ], [ %99, %94 ]
  %32 = and i64 %31, 4095
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %66, label %34

; <label>:34:                                     ; preds = %28
  %35 = and i64 %14, 3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %70

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 90, i64 %18, i64 %17
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 95
  store %struct.CPUTLBEntry* %30, %struct.CPUTLBEntry** %40, align 8
  %41 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %39)
  %42 = and i64 %39, -4096
  %43 = add i64 %42, %14
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 83
  store i64 0, i64* %45, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %14, i32 0)
  %46 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %41, i32 0)
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %37
  %48 = and i64 %43, -4096
  %49 = tail call i64 @se_notdirty_mem_read(i64 %48)
  %50 = and i64 %43, 4095
  %51 = or i64 %49, %50
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  br label %56

; <label>:54:                                     ; preds = %37
  %55 = tail call i32 @io_readl_mmu(i64 %39, i64 %14, i8* null)
  br label %56

; <label>:56:                                     ; preds = %47, %54
  %57 = phi i32 [ %53, %47 ], [ %55, %54 ]
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %14, i64 %58, i32 4, i32 0)
  %60 = trunc i64 %59 to i32
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  %61 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %102, label %64

; <label>:64:                                     ; preds = %56
  %65 = and i64 %59, 4294967295
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %65, i32 4, i32 1, i64 0)
  br label %102

; <label>:66:                                     ; preds = %28
  %67 = and i64 %14, 4095
  %68 = add nuw nsw i64 %67, 3
  %69 = icmp ugt i64 %68, 4095
  br i1 %69, label %70, label %83

; <label>:70:                                     ; preds = %34, %66
  %71 = and i64 %14, -4
  %72 = add i64 %71, 4
  %73 = tail call fastcc i32 @slow_ldl_mmu(i64 %71, i32 %1)
  %74 = tail call fastcc i32 @slow_ldl_mmu(i64 %72, i32 %1)
  %75 = shl i64 %14, 3
  %76 = and i64 %75, 24
  %77 = trunc i64 %76 to i32
  %78 = lshr i32 %73, %77
  %79 = sub nsw i64 32, %76
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %74, %80
  %82 = or i32 %81, %78
  ret i32 %82

; <label>:83:                                     ; preds = %66
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 89, i64 %18, i64 %17, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %14
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

; <label>:92:                                     ; preds = %83
  %93 = zext i32 %88 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %93, i32 4, i32 0, i64 0)
  br label %102

; <label>:94:                                     ; preds = %26, %94
  %95 = phi %struct.CPUX86State* [ %19, %26 ], [ %96, %94 ]
  tail call void @tlb_fill(%struct.CPUX86State* %95, i64 %14, i64 %27, i32 0, i32 %1, i8* null)
  %96 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %97 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %96, i64 0, i32 89, i64 %18, i64 %17
  %98 = getelementptr inbounds %struct.CPUTLBEntry, %struct.CPUTLBEntry* %97, i64 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, -4088
  %101 = icmp eq i64 %23, %100
  br i1 %101, label %28, label %94

; <label>:102:                                    ; preds = %56, %83, %64, %92
  %103 = phi i32 [ %60, %64 ], [ %60, %56 ], [ %88, %92 ], [ %88, %83 ]
  ret i32 %103
}

; Function Attrs: uwtable
define void @do_interrupt(%struct.CPUX86State*) local_unnamed_addr #2 {
  %2 = load i64, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  store %struct.CPUX86State* %0, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 106
  %4 = load i32, i32* %3, align 16
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 70
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 69
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %0, i64 0, i32 71
  %10 = load i64, i64* %9, align 16
  %11 = load void (i32, i32, i32, i64, i32)*, void (i32, i32, i32, i64, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 2, i32 9), align 8
  tail call void %11(i32 %4, i32 %6, i32 %8, i64 %10, i32 0)
  %12 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %12, i64 0, i32 75
  store i32 -1, i32* %13, align 4
  store i64 %2, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  ret void
}

; Function Attrs: uwtable
define void @do_interrupt_x86_hardirq(%struct.CPUX86State*, i32, i32) local_unnamed_addr #2 {
  %4 = load i64, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  store %struct.CPUX86State* %0, %struct.CPUX86State** @env, align 8
  %5 = load void (i32, i32, i32, i64, i32)*, void (i32, i32, i32, i64, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 2, i32 9), align 8
  tail call void %5(i32 %1, i32 0, i32 0, i64 0, i32 %2)
  store i64 %4, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  ret void
}

; Function Attrs: noreturn uwtable
define void @raise_exception_err_env(%struct.CPUX86State*, i32, i32) local_unnamed_addr #3 {
  store %struct.CPUX86State* %0, %struct.CPUX86State** @env, align 8
  tail call fastcc void @raise_interrupt(i32 %1, i32 0, i32 %2, i32 0) #13
  unreachable
}

; Function Attrs: noreturn uwtable
define void @raise_exception_env(i32, %struct.CPUX86State*) local_unnamed_addr #3 {
  store %struct.CPUX86State* %1, %struct.CPUX86State** @env, align 8
  tail call fastcc void @raise_exception(i32 %0) #13
  unreachable
}

; Function Attrs: noreturn uwtable
define internal fastcc void @raise_exception(i32) unnamed_addr #3 {
  tail call fastcc void @raise_interrupt(i32 %0, i32 0, i32 0, i32 0) #13
  unreachable
}

; Function Attrs: uwtable
define void @do_smm_enter(%struct.CPUX86State*) local_unnamed_addr #2 {
  %2 = load i64, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  store %struct.CPUX86State* %0, %struct.CPUX86State** @env, align 8
  %3 = load i32, i32* @loglevel, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %7)
  %9 = load i32, i32* @loglevel, align 4
  br label %10

; <label>:10:                                     ; preds = %1, %6
  %11 = phi i32 [ %3, %1 ], [ %9, %6 ]
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %10
  %15 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  tail call void @cpu_dump_state(%struct.CPUX86State* %15, %struct._IO_FILE* %16, i32 (%struct._IO_FILE*, i8*, ...)* nonnull @fprintf, i32 2)
  br label %17

; <label>:17:                                     ; preds = %10, %14
  %18 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %19 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 524288
  store i32 %21, i32* %19, align 4
  tail call void @cpu_smm_update(%struct.CPUX86State* %18)
  %22 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 74
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 32768
  %26 = zext i32 %25 to i64
  br label %27

; <label>:27:                                     ; preds = %48, %17
  %28 = phi %struct.CPUX86State* [ %22, %17 ], [ %49, %48 ]
  %29 = phi i64 [ 0, %17 ], [ %46, %48 ]
  %30 = shl i64 %29, 4
  %31 = add nuw nsw i64 %30, 32256
  %32 = add nuw nsw i64 %31, %26
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 %29, i32 0
  %34 = load i32, i32* %33, align 4
  tail call void @stw_phys(i64 %32, i32 %34)
  %35 = add nsw i64 %32, 2
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 %29, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 61695
  tail call void @stw_phys(i64 %35, i32 %39)
  %40 = add nsw i64 %32, 4
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 %29, i32 2
  %42 = load i32, i32* %41, align 4
  tail call void @stl_phys(i64 %40, i32 %42)
  %43 = add nsw i64 %32, 8
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 %29, i32 1
  %45 = load i64, i64* %44, align 4
  tail call void @stq_phys(i64 %43, i64 %45)
  %46 = add nuw nsw i64 %29, 1
  %47 = icmp eq i64 %46, 6
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %27
  %49 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %27

; <label>:50:                                     ; preds = %27
  %51 = add nuw nsw i64 %26, 32360
  %52 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %52, i64 0, i32 14, i32 1
  %54 = load i64, i64* %53, align 4
  tail call void @stq_phys(i64 %51, i64 %54)
  %55 = add nuw nsw i64 %26, 32356
  %56 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %57 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %56, i64 0, i32 14, i32 2
  %58 = load i32, i32* %57, align 4
  tail call void @stl_phys(i64 %55, i32 %58)
  %59 = add nuw nsw i64 %26, 32368
  %60 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %61 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %60, i64 0, i32 12, i32 0
  %62 = load i32, i32* %61, align 4
  tail call void @stw_phys(i64 %59, i32 %62)
  %63 = add nuw nsw i64 %26, 32376
  %64 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %65 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %64, i64 0, i32 12, i32 1
  %66 = load i64, i64* %65, align 4
  tail call void @stq_phys(i64 %63, i64 %66)
  %67 = add nuw nsw i64 %26, 32372
  %68 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %69 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %68, i64 0, i32 12, i32 2
  %70 = load i32, i32* %69, align 4
  tail call void @stl_phys(i64 %67, i32 %70)
  %71 = add nuw nsw i64 %26, 32370
  %72 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %73 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 12, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = lshr i32 %74, 8
  %76 = and i32 %75, 61695
  tail call void @stw_phys(i64 %71, i32 %76)
  %77 = add nuw nsw i64 %26, 32392
  %78 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %79 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %78, i64 0, i32 15, i32 1
  %80 = load i64, i64* %79, align 4
  tail call void @stq_phys(i64 %77, i64 %80)
  %81 = add nuw nsw i64 %26, 32388
  %82 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %82, i64 0, i32 15, i32 2
  %84 = load i32, i32* %83, align 4
  tail call void @stl_phys(i64 %81, i32 %84)
  %85 = add nuw nsw i64 %26, 32400
  %86 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %87 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %86, i64 0, i32 13, i32 0
  %88 = load i32, i32* %87, align 16
  tail call void @stw_phys(i64 %85, i32 %88)
  %89 = add nuw nsw i64 %26, 32408
  %90 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %91 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %90, i64 0, i32 13, i32 1
  %92 = load i64, i64* %91, align 4
  tail call void @stq_phys(i64 %89, i64 %92)
  %93 = add nuw nsw i64 %26, 32404
  %94 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %95 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %94, i64 0, i32 13, i32 2
  %96 = load i32, i32* %95, align 4
  tail call void @stl_phys(i64 %93, i32 %96)
  %97 = add nuw nsw i64 %26, 32402
  %98 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %99 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %98, i64 0, i32 13, i32 3
  %100 = load i32, i32* %99, align 16
  %101 = lshr i32 %100, 8
  %102 = and i32 %101, 61695
  tail call void @stw_phys(i64 %97, i32 %102)
  %103 = add nuw nsw i64 %26, 32464
  %104 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %104, i64 0, i32 43
  %106 = load i64, i64* %105, align 8
  tail call void @stq_phys(i64 %103, i64 %106)
  %107 = add nuw nsw i64 %26, 32760
  %108 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %109 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %108, i64 0, i32 0, i64 0
  %110 = load i64, i64* %109, align 16
  tail call void @stq_phys(i64 %107, i64 %110)
  %111 = add nuw nsw i64 %26, 32752
  %112 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %113 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %112, i64 0, i32 0, i64 1
  %114 = load i64, i64* %113, align 8
  tail call void @stq_phys(i64 %111, i64 %114)
  %115 = add nuw nsw i64 %26, 32744
  %116 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %117 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %116, i64 0, i32 0, i64 2
  %118 = load i64, i64* %117, align 16
  tail call void @stq_phys(i64 %115, i64 %118)
  %119 = add nuw nsw i64 %26, 32736
  %120 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %121 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %120, i64 0, i32 0, i64 3
  %122 = load i64, i64* %121, align 8
  tail call void @stq_phys(i64 %119, i64 %122)
  %123 = add nuw nsw i64 %26, 32728
  %124 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %124, i64 0, i32 0, i64 4
  %126 = load i64, i64* %125, align 16
  tail call void @stq_phys(i64 %123, i64 %126)
  %127 = add nuw nsw i64 %26, 32720
  %128 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %129 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %128, i64 0, i32 0, i64 5
  %130 = load i64, i64* %129, align 8
  tail call void @stq_phys(i64 %127, i64 %130)
  %131 = add nuw nsw i64 %26, 32712
  %132 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %133 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %132, i64 0, i32 0, i64 6
  %134 = load i64, i64* %133, align 16
  tail call void @stq_phys(i64 %131, i64 %134)
  %135 = add nuw nsw i64 %26, 32704
  %136 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %137 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %136, i64 0, i32 0, i64 7
  %138 = load i64, i64* %137, align 8
  tail call void @stq_phys(i64 %135, i64 %138)
  %139 = add nuw nsw i64 %26, 32696
  %140 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %141 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 0, i64 8
  %142 = load i64, i64* %141, align 8
  tail call void @stq_phys(i64 %139, i64 %142)
  %143 = add nuw nsw i64 %26, 32688
  %144 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %145 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %144, i64 0, i32 0, i64 9
  %146 = load i64, i64* %145, align 8
  tail call void @stq_phys(i64 %143, i64 %146)
  %147 = add nuw nsw i64 %26, 32680
  %148 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %148, i64 0, i32 0, i64 10
  %150 = load i64, i64* %149, align 8
  tail call void @stq_phys(i64 %147, i64 %150)
  %151 = add nuw nsw i64 %26, 32672
  %152 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %153 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %152, i64 0, i32 0, i64 11
  %154 = load i64, i64* %153, align 8
  tail call void @stq_phys(i64 %151, i64 %154)
  %155 = add nuw nsw i64 %26, 32664
  %156 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %157 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %156, i64 0, i32 0, i64 12
  %158 = load i64, i64* %157, align 8
  tail call void @stq_phys(i64 %155, i64 %158)
  %159 = add nuw nsw i64 %26, 32656
  %160 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %161 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %160, i64 0, i32 0, i64 13
  %162 = load i64, i64* %161, align 8
  tail call void @stq_phys(i64 %159, i64 %162)
  %163 = add nuw nsw i64 %26, 32648
  %164 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %165 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %164, i64 0, i32 0, i64 14
  %166 = load i64, i64* %165, align 8
  tail call void @stq_phys(i64 %163, i64 %166)
  %167 = add nuw nsw i64 %26, 32640
  %168 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %169 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %168, i64 0, i32 0, i64 15
  %170 = load i64, i64* %169, align 8
  tail call void @stq_phys(i64 %167, i64 %170)
  %171 = add nuw nsw i64 %26, 32632
  %172 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %173 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %172, i64 0, i32 5
  %174 = load i64, i64* %173, align 16
  tail call void @stq_phys(i64 %171, i64 %174)
  %175 = add nuw nsw i64 %26, 32624
  %176 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %177 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %176, i64 0, i32 7
  %178 = load i64, i64* %177, align 4
  %179 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %176, i64 0, i32 1
  %180 = load i64, i64* %179, align 16
  %181 = trunc i64 %180 to i32
  %182 = tail call i32 @helper_cc_compute_all(i32 %181) #5
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %176, i64 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, 1024
  %187 = zext i32 %186 to i64
  %188 = or i64 %178, %183
  %189 = or i64 %188, %187
  %190 = or i64 %189, 2
  %191 = trunc i64 %190 to i32
  tail call void @stl_phys(i64 %175, i32 %191)
  %192 = add nuw nsw i64 %26, 32616
  %193 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %194 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %193, i64 0, i32 72, i64 6
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  tail call void @stl_phys(i64 %192, i32 %196)
  %197 = add nuw nsw i64 %26, 32608
  %198 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %199 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %198, i64 0, i32 72, i64 7
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  tail call void @stl_phys(i64 %197, i32 %201)
  %202 = add nuw nsw i64 %26, 32584
  %203 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %204 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %203, i64 0, i32 16, i64 4
  %205 = load i64, i64* %204, align 4
  %206 = trunc i64 %205 to i32
  tail call void @stl_phys(i64 %202, i32 %206)
  %207 = add nuw nsw i64 %26, 32592
  %208 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %209 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %208, i64 0, i32 16, i64 3
  %210 = load i64, i64* %209, align 4
  %211 = trunc i64 %210 to i32
  tail call void @stl_phys(i64 %207, i32 %211)
  %212 = add nuw nsw i64 %26, 32600
  %213 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %214 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 16, i64 0
  %215 = load i64, i64* %214, align 4
  %216 = trunc i64 %215 to i32
  tail call void @stl_phys(i64 %212, i32 %216)
  %217 = add nuw nsw i64 %26, 32508
  tail call void @stl_phys(i64 %217, i32 131172)
  %218 = add nuw nsw i64 %26, 32512
  %219 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %220 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 74
  %221 = load i32, i32* %220, align 8
  tail call void @stl_phys(i64 %218, i32 %221)
  %222 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %223 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 43
  store i64 0, i64* %223, align 8
  %224 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 6
  store i32 1, i32* %227, align 8
  %228 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 7
  %229 = load i64, i64* %228, align 4
  %230 = and i64 %229, 3285
  store i64 %230, i64* %228, align 4
  %231 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 5
  store i64 32768, i64* %231, align 16
  %232 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 74
  %233 = load i32, i32* %232, align 8
  %234 = lshr i32 %233, 4
  %235 = and i32 %234, 65535
  %236 = zext i32 %233 to i64
  %237 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 1, i32 0
  store i32 %235, i32* %237, align 4
  %238 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 1, i32 1
  store i64 %236, i64* %238, align 4
  %239 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %239, align 4
  %240 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 1, i32 3
  store i32 0, i32* %240, align 4
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 2, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = lshr i32 %242, 17
  %244 = and i32 %243, 32
  %245 = and i32 %225, -1097841
  %246 = or i32 %245, %244
  %247 = or i32 %246, 64
  store i32 %247, i32* %224, align 4
  %248 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 3, i32 0
  store i32 0, i32* %248, align 4
  %249 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 3, i32 1
  store i64 0, i64* %249, align 4
  %250 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 3, i32 2
  store i32 -1, i32* %250, align 4
  %251 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 3, i32 3
  store i32 0, i32* %251, align 4
  %252 = or i32 %244, 64
  %253 = or i32 %252, %245
  store i32 %253, i32* %224, align 4
  %254 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 0, i32 0
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 0, i32 1
  store i64 0, i64* %255, align 4
  %256 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 0, i32 2
  store i32 -1, i32* %256, align 4
  %257 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 0, i32 3
  store i32 0, i32* %257, align 4
  %258 = or i32 %252, %245
  store i32 %258, i32* %224, align 4
  %259 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 2, i32 0
  store i32 0, i32* %259, align 4
  %260 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %260, align 4
  %261 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %261, align 4
  store i32 0, i32* %241, align 4
  %262 = or i32 %245, 64
  store i32 %262, i32* %224, align 4
  %263 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 4, i32 0
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 4, i32 1
  store i64 0, i64* %264, align 4
  %265 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 4, i32 2
  store i32 -1, i32* %265, align 4
  %266 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 4, i32 3
  store i32 0, i32* %266, align 4
  %267 = or i32 %245, 64
  store i32 %267, i32* %224, align 4
  %268 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 5, i32 0
  store i32 0, i32* %268, align 4
  %269 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 5, i32 1
  store i64 0, i64* %269, align 4
  %270 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 5, i32 2
  store i32 -1, i32* %270, align 4
  %271 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 11, i64 5, i32 3
  store i32 0, i32* %271, align 4
  %272 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %222, i64 0, i32 16, i64 0
  %273 = load i64, i64* %272, align 4
  %274 = or i32 %245, 64
  store i32 %274, i32* %224, align 4
  %275 = trunc i64 %273 to i32
  %276 = and i32 %275, 2147483634
  tail call void @cpu_x86_update_cr0(%struct.CPUX86State* nonnull %222, i32 %276)
  %277 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @cpu_x86_update_cr4(%struct.CPUX86State* %277, i32 0)
  %278 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %279 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 72, i64 7
  store i64 1024, i64* %279, align 8
  %280 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %278, i64 0, i32 1
  store i64 1, i64* %280, align 16
  store i64 %2, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  ret void
}

declare void @cpu_dump_state(%struct.CPUX86State*, %struct._IO_FILE*, i32 (%struct._IO_FILE*, i8*, ...)*, i32) local_unnamed_addr #6

declare void @cpu_smm_update(%struct.CPUX86State*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_rsm() local_unnamed_addr #2 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 74
  %3 = load i32, i32* %2, align 8
  %4 = add i32 %3, 32768
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 32464
  %7 = tail call i64 @ldq_phys(i64 %6)
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 43
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -1064961
  %12 = trunc i64 %7 to i32
  %13 = shl i32 %12, 4
  %14 = and i32 %13, 16384
  %15 = or i32 %11, %14
  %16 = shl i32 %12, 8
  %17 = and i32 %16, 1048576
  %18 = or i32 %15, %17
  store i32 %18, i32* %9, align 4
  br label %19

; <label>:19:                                     ; preds = %93, %0
  %20 = phi i64 [ 0, %0 ], [ %97, %93 ]
  %21 = shl i64 %20, 4
  %22 = add nuw nsw i64 %21, 32256
  %23 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %24 = add nuw nsw i64 %22, %5
  %25 = tail call i32 @lduw_phys(i64 %24)
  %26 = add nsw i64 %24, 8
  %27 = tail call i64 @ldq_phys(i64 %26)
  %28 = add nsw i64 %24, 4
  %29 = tail call i32 @ldl_phys(i64 %28)
  %30 = add nsw i64 %24, 2
  %31 = tail call i32 @lduw_phys(i64 %30)
  %32 = shl i32 %31, 8
  %33 = and i32 %32, 15793920
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 %20, i32 0
  store i32 %25, i32* %34, align 4
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 %20, i32 1
  store i64 %27, i64* %35, align 4
  %36 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 %20, i32 2
  store i32 %29, i32* %36, align 4
  %37 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 %20, i32 3
  store i32 %33, i32* %37, align 4
  %38 = icmp eq i64 %20, 1
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 8
  %40 = load i32, i32* %39, align 4
  br i1 %38, label %41, label %57

; <label>:41:                                     ; preds = %19
  %42 = and i32 %40, 16384
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %32, 2097152
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %45, %43
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %41
  %48 = and i32 %40, -32881
  %49 = or i32 %48, 32816
  store i32 %49, i32* %39, align 4
  br label %57

; <label>:50:                                     ; preds = %41
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 1, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = lshr i32 %52, 18
  %54 = and i32 %53, 16
  %55 = and i32 %40, -32785
  %56 = or i32 %54, %55
  store i32 %56, i32* %39, align 4
  br label %57

; <label>:57:                                     ; preds = %50, %47, %19
  %58 = phi i32 [ %49, %47 ], [ %56, %50 ], [ %40, %19 ]
  %59 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 2, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = lshr i32 %60, 17
  %62 = and i32 %61, 32
  %63 = trunc i32 %58 to i16
  %64 = icmp slt i16 %63, 0
  br i1 %64, label %93, label %65

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 16, i64 0
  %67 = load i64, i64* %66, align 4
  %68 = and i64 %67, 1
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %78, label %70

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 7
  %72 = load i64, i64* %71, align 4
  %73 = and i64 %72, 131072
  %74 = icmp ne i64 %73, 0
  %75 = and i32 %58, 16
  %76 = icmp eq i32 %75, 0
  %77 = or i1 %76, %74
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %70, %65
  %79 = or i32 %62, 64
  br label %93

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 3, i32 1
  %82 = load i64, i64* %81, align 4
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 0, i32 1
  %84 = load i64, i64* %83, align 4
  %85 = or i64 %84, %82
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 11, i64 2, i32 1
  %87 = load i64, i64* %86, align 4
  %88 = or i64 %85, %87
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = shl nuw nsw i32 %90, 6
  %92 = or i32 %91, %62
  br label %93

; <label>:93:                                     ; preds = %57, %78, %80
  %94 = phi i32 [ %62, %57 ], [ %79, %78 ], [ %92, %80 ]
  %95 = and i32 %58, -97
  %96 = or i32 %94, %95
  store i32 %96, i32* %39, align 4
  %97 = add nuw nsw i64 %20, 1
  %98 = icmp eq i64 %97, 6
  br i1 %98, label %99, label %19

; <label>:99:                                     ; preds = %93
  %100 = add nuw nsw i64 %5, 32360
  %101 = tail call i64 @ldq_phys(i64 %100)
  %102 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %103 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %102, i64 0, i32 14, i32 1
  store i64 %101, i64* %103, align 4
  %104 = add nuw nsw i64 %5, 32356
  %105 = tail call i32 @ldl_phys(i64 %104)
  %106 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %107 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %106, i64 0, i32 14, i32 2
  store i32 %105, i32* %107, align 4
  %108 = add nuw nsw i64 %5, 32368
  %109 = tail call i32 @lduw_phys(i64 %108)
  %110 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %111 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 12, i32 0
  store i32 %109, i32* %111, align 4
  %112 = add nuw nsw i64 %5, 32376
  %113 = tail call i64 @ldq_phys(i64 %112)
  %114 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %115 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %114, i64 0, i32 12, i32 1
  store i64 %113, i64* %115, align 4
  %116 = add nuw nsw i64 %5, 32372
  %117 = tail call i32 @ldl_phys(i64 %116)
  %118 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %118, i64 0, i32 12, i32 2
  store i32 %117, i32* %119, align 4
  %120 = add nuw nsw i64 %5, 32370
  %121 = tail call i32 @lduw_phys(i64 %120)
  %122 = shl i32 %121, 8
  %123 = and i32 %122, 15793920
  %124 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %124, i64 0, i32 12, i32 3
  store i32 %123, i32* %125, align 4
  %126 = add nuw nsw i64 %5, 32392
  %127 = tail call i64 @ldq_phys(i64 %126)
  %128 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %129 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %128, i64 0, i32 15, i32 1
  store i64 %127, i64* %129, align 4
  %130 = add nuw nsw i64 %5, 32388
  %131 = tail call i32 @ldl_phys(i64 %130)
  %132 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %133 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %132, i64 0, i32 15, i32 2
  store i32 %131, i32* %133, align 4
  %134 = add nuw nsw i64 %5, 32400
  %135 = tail call i32 @lduw_phys(i64 %134)
  %136 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %137 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %136, i64 0, i32 13, i32 0
  store i32 %135, i32* %137, align 16
  %138 = add nuw nsw i64 %5, 32408
  %139 = tail call i64 @ldq_phys(i64 %138)
  %140 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %141 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 13, i32 1
  store i64 %139, i64* %141, align 4
  %142 = add nuw nsw i64 %5, 32404
  %143 = tail call i32 @ldl_phys(i64 %142)
  %144 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %145 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %144, i64 0, i32 13, i32 2
  store i32 %143, i32* %145, align 4
  %146 = add nuw nsw i64 %5, 32402
  %147 = tail call i32 @lduw_phys(i64 %146)
  %148 = shl i32 %147, 8
  %149 = and i32 %148, 15793920
  %150 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %151 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %150, i64 0, i32 13, i32 3
  store i32 %149, i32* %151, align 16
  %152 = add nuw nsw i64 %5, 32760
  %153 = tail call i64 @ldq_phys(i64 %152)
  %154 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %155 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %154, i64 0, i32 0, i64 0
  store i64 %153, i64* %155, align 16
  %156 = add nuw nsw i64 %5, 32752
  %157 = tail call i64 @ldq_phys(i64 %156)
  %158 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %158, i64 0, i32 0, i64 1
  store i64 %157, i64* %159, align 8
  %160 = add nuw nsw i64 %5, 32744
  %161 = tail call i64 @ldq_phys(i64 %160)
  %162 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %163 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 0, i64 2
  store i64 %161, i64* %163, align 16
  %164 = add nuw nsw i64 %5, 32736
  %165 = tail call i64 @ldq_phys(i64 %164)
  %166 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %167 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %166, i64 0, i32 0, i64 3
  store i64 %165, i64* %167, align 8
  %168 = add nuw nsw i64 %5, 32728
  %169 = tail call i64 @ldq_phys(i64 %168)
  %170 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %171 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %170, i64 0, i32 0, i64 4
  store i64 %169, i64* %171, align 16
  %172 = add nuw nsw i64 %5, 32720
  %173 = tail call i64 @ldq_phys(i64 %172)
  %174 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %175 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %174, i64 0, i32 0, i64 5
  store i64 %173, i64* %175, align 8
  %176 = add nuw nsw i64 %5, 32712
  %177 = tail call i64 @ldq_phys(i64 %176)
  %178 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %179 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %178, i64 0, i32 0, i64 6
  store i64 %177, i64* %179, align 16
  %180 = add nuw nsw i64 %5, 32704
  %181 = tail call i64 @ldq_phys(i64 %180)
  %182 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %183 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %182, i64 0, i32 0, i64 7
  store i64 %181, i64* %183, align 8
  %184 = add nuw nsw i64 %5, 32696
  %185 = tail call i64 @ldq_phys(i64 %184)
  %186 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %187 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %186, i64 0, i32 0, i64 8
  store i64 %185, i64* %187, align 8
  %188 = add nuw nsw i64 %5, 32688
  %189 = tail call i64 @ldq_phys(i64 %188)
  %190 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %191 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %190, i64 0, i32 0, i64 9
  store i64 %189, i64* %191, align 8
  %192 = add nuw nsw i64 %5, 32680
  %193 = tail call i64 @ldq_phys(i64 %192)
  %194 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %195 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %194, i64 0, i32 0, i64 10
  store i64 %193, i64* %195, align 8
  %196 = add nuw nsw i64 %5, 32672
  %197 = tail call i64 @ldq_phys(i64 %196)
  %198 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %199 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %198, i64 0, i32 0, i64 11
  store i64 %197, i64* %199, align 8
  %200 = add nuw nsw i64 %5, 32664
  %201 = tail call i64 @ldq_phys(i64 %200)
  %202 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %203 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %202, i64 0, i32 0, i64 12
  store i64 %201, i64* %203, align 8
  %204 = add nuw nsw i64 %5, 32656
  %205 = tail call i64 @ldq_phys(i64 %204)
  %206 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %207 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %206, i64 0, i32 0, i64 13
  store i64 %205, i64* %207, align 8
  %208 = add nuw nsw i64 %5, 32648
  %209 = tail call i64 @ldq_phys(i64 %208)
  %210 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %211 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %210, i64 0, i32 0, i64 14
  store i64 %209, i64* %211, align 8
  %212 = add nuw nsw i64 %5, 32640
  %213 = tail call i64 @ldq_phys(i64 %212)
  %214 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %215 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %214, i64 0, i32 0, i64 15
  store i64 %213, i64* %215, align 8
  %216 = add nuw nsw i64 %5, 32632
  %217 = tail call i64 @ldq_phys(i64 %216)
  %218 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %219 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %218, i64 0, i32 5
  store i64 %217, i64* %219, align 16
  %220 = add nuw nsw i64 %5, 32624
  %221 = tail call i32 @ldl_phys(i64 %220)
  %222 = and i32 %221, 2261
  %223 = zext i32 %222 to i64
  %224 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %225 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %224, i64 0, i32 2
  store i64 %223, i64* %225, align 8
  %226 = lshr i32 %221, 9
  %227 = and i32 %226, 2
  %228 = xor i32 %227, 2
  %229 = add nsw i32 %228, -1
  %230 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %224, i64 0, i32 6
  store i32 %229, i32* %230, align 8
  %231 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %224, i64 0, i32 7
  %232 = load i64, i64* %231, align 4
  %233 = and i64 %232, 3285
  %234 = and i32 %221, -3286
  %235 = sext i32 %234 to i64
  %236 = or i64 %233, %235
  store i64 %236, i64* %231, align 4
  %237 = add nuw nsw i64 %5, 32616
  %238 = tail call i32 @ldl_phys(i64 %237)
  %239 = zext i32 %238 to i64
  %240 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %240, i64 0, i32 72, i64 6
  store i64 %239, i64* %241, align 8
  %242 = add nuw nsw i64 %5, 32608
  %243 = tail call i32 @ldl_phys(i64 %242)
  %244 = zext i32 %243 to i64
  %245 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %246 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %245, i64 0, i32 72, i64 7
  store i64 %244, i64* %246, align 8
  %247 = add nuw nsw i64 %5, 32584
  %248 = tail call i32 @ldl_phys(i64 %247)
  tail call void @cpu_x86_update_cr4(%struct.CPUX86State* %245, i32 %248)
  %249 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %250 = add nuw nsw i64 %5, 32592
  %251 = tail call i32 @ldl_phys(i64 %250)
  %252 = zext i32 %251 to i64
  tail call void @cpu_x86_update_cr3(%struct.CPUX86State* %249, i64 %252)
  %253 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %254 = add nuw nsw i64 %5, 32600
  %255 = tail call i32 @ldl_phys(i64 %254)
  tail call void @cpu_x86_update_cr0(%struct.CPUX86State* %253, i32 %255)
  %256 = add nuw nsw i64 %5, 32508
  %257 = tail call i32 @ldl_phys(i64 %256)
  %258 = and i32 %257, 131072
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %262

; <label>:260:                                    ; preds = %99
  %261 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %268

; <label>:262:                                    ; preds = %99
  %263 = add nuw nsw i64 %5, 32512
  %264 = tail call i32 @ldl_phys(i64 %263)
  %265 = and i32 %264, -32768
  %266 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %267 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %266, i64 0, i32 74
  store i32 %265, i32* %267, align 8
  br label %268

; <label>:268:                                    ; preds = %260, %262
  %269 = phi %struct.CPUX86State* [ %261, %260 ], [ %266, %262 ]
  %270 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %269, i64 0, i32 1
  store i64 1, i64* %270, align 16
  %271 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %269, i64 0, i32 8
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, -524289
  store i32 %273, i32* %271, align 4
  tail call void @cpu_smm_update(%struct.CPUX86State* %269)
  %274 = load i32, i32* @loglevel, align 4
  %275 = and i32 %274, 16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

; <label>:277:                                    ; preds = %268
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %279 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %278)
  br label %280

; <label>:280:                                    ; preds = %268, %277
  ret void
}

; Function Attrs: uwtable
define void @helper_divb_AL(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = trunc i64 %0 to i32
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = udiv i32 %6, %8
  %13 = icmp ugt i32 %12, 255
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:15:                                     ; preds = %11
  %16 = and i32 %12, 255
  %17 = urem i32 %6, %8
  %18 = and i64 %4, -65536
  %19 = shl nuw nsw i32 %17, 8
  %20 = and i32 %19, 65280
  %21 = zext i32 %20 to i64
  %22 = zext i32 %16 to i64
  %23 = or i64 %22, %18
  %24 = or i64 %23, %21
  store i64 %24, i64* %3, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_idivb_AL(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = shl i32 %5, 16
  %7 = ashr exact i32 %6, 16
  %8 = trunc i64 %0 to i32
  %9 = shl i32 %8, 24
  %10 = ashr exact i32 %9, 24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = sdiv i32 %7, %10
  %15 = shl i32 %14, 24
  %16 = ashr exact i32 %15, 24
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %13
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:19:                                     ; preds = %13
  %20 = and i32 %14, 255
  %21 = srem i32 %7, %10
  %22 = and i64 %4, -65536
  %23 = shl i32 %21, 8
  %24 = and i32 %23, 65280
  %25 = zext i32 %24 to i64
  %26 = zext i32 %20 to i64
  %27 = or i64 %26, %22
  %28 = or i64 %27, %25
  store i64 %28, i64* %3, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_divw_AX(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 2
  %7 = load i64, i64* %6, align 16
  %8 = shl i64 %7, 16
  %9 = or i64 %8, %5
  %10 = trunc i64 %9 to i32
  %11 = trunc i64 %0 to i32
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:15:                                     ; preds = %1
  %16 = udiv i32 %10, %12
  %17 = icmp ugt i32 %16, 65535
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:19:                                     ; preds = %15
  %20 = and i32 %16, 65535
  %21 = urem i32 %10, %12
  %22 = and i32 %21, 65535
  %23 = and i64 %4, -65536
  %24 = zext i32 %20 to i64
  %25 = or i64 %24, %23
  store i64 %25, i64* %3, align 16
  %26 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %26, i64 0, i32 0, i64 2
  %28 = load i64, i64* %27, align 16
  %29 = and i64 %28, -65536
  %30 = zext i32 %22 to i64
  %31 = or i64 %29, %30
  store i64 %31, i64* %27, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_idivw_AX(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 2
  %7 = load i64, i64* %6, align 16
  %8 = shl i64 %7, 16
  %9 = or i64 %8, %5
  %10 = trunc i64 %9 to i32
  %11 = trunc i64 %0 to i32
  %12 = shl i32 %11, 16
  %13 = ashr exact i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:16:                                     ; preds = %1
  %17 = sdiv i32 %10, %13
  %18 = shl i32 %17, 16
  %19 = ashr exact i32 %18, 16
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %16
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:22:                                     ; preds = %16
  %23 = and i32 %17, 65535
  %24 = srem i32 %10, %13
  %25 = and i32 %24, 65535
  %26 = and i64 %4, -65536
  %27 = zext i32 %23 to i64
  %28 = or i64 %27, %26
  store i64 %28, i64* %3, align 16
  %29 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %30 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 0, i64 2
  %31 = load i64, i64* %30, align 16
  %32 = and i64 %31, -65536
  %33 = zext i32 %25 to i64
  %34 = or i64 %32, %33
  store i64 %34, i64* %30, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_divl_EAX(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 2
  %7 = load i64, i64* %6, align 16
  %8 = shl i64 %7, 32
  %9 = or i64 %8, %5
  %10 = trunc i64 %0 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = and i64 %0, 4294967295
  %15 = udiv i64 %9, %14
  %16 = icmp ugt i64 %15, 4294967295
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:18:                                     ; preds = %13
  %19 = urem i64 %9, %14
  %20 = and i64 %15, 4294967295
  store i64 %20, i64* %3, align 16
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 0, i64 2
  store i64 %19, i64* %22, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_idivl_EAX(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 2
  %7 = load i64, i64* %6, align 16
  %8 = shl i64 %7, 32
  %9 = or i64 %8, %5
  %10 = trunc i64 %0 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = shl i64 %0, 32
  %15 = ashr exact i64 %14, 32
  %16 = sdiv i64 %9, %15
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %13
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:21:                                     ; preds = %13
  %22 = srem i64 %9, %15
  %23 = and i64 %16, 4294967295
  store i64 %23, i64* %3, align 16
  %24 = and i64 %22, 4294967295
  %25 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %25, i64 0, i32 0, i64 2
  store i64 %24, i64* %26, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_aam(i32) local_unnamed_addr #1 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 255
  %7 = sdiv i32 %6, %0
  %8 = srem i32 %6, %0
  %9 = and i64 %4, -65536
  %10 = zext i32 %8 to i64
  %11 = or i64 %10, %9
  %12 = shl i32 %7, 8
  %13 = sext i32 %12 to i64
  %14 = or i64 %11, %13
  store i64 %14, i64* %3, align 16
  %15 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %15, i64 0, i32 3
  store i64 %10, i64* %16, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_aad(i32) local_unnamed_addr #1 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 255
  %9 = mul nsw i32 %8, %0
  %10 = add i32 %9, %5
  %11 = and i32 %10, 255
  %12 = and i64 %4, -65536
  %13 = zext i32 %11 to i64
  %14 = or i64 %13, %12
  store i64 %14, i64* %3, align 16
  %15 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %15, i64 0, i32 3
  store i64 %13, i64* %16, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_aaa() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %3 = load i64, i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @helper_cc_compute_all(i32 %4)
  %6 = and i32 %5, 16
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 16
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 8
  %11 = and i32 %9, 15
  %12 = icmp ugt i32 %11, 9
  %13 = icmp ne i32 %6, 0
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %0
  %16 = and i32 %9, 254
  %17 = icmp ugt i32 %16, 249
  %18 = zext i1 %17 to i64
  %19 = add i32 %9, 6
  %20 = and i32 %19, 15
  %21 = add nuw nsw i64 %10, 1
  %22 = add nuw nsw i64 %21, %18
  %23 = or i32 %5, 17
  br label %26

; <label>:24:                                     ; preds = %0
  %25 = and i32 %5, -18
  br label %26

; <label>:26:                                     ; preds = %24, %15
  %27 = phi i64 [ %22, %15 ], [ %10, %24 ]
  %28 = phi i32 [ %20, %15 ], [ %11, %24 ]
  %29 = phi i32 [ %23, %15 ], [ %25, %24 ]
  %30 = and i64 %8, -65536
  %31 = zext i32 %28 to i64
  %32 = shl i64 %27, 8
  %33 = and i64 %32, 65280
  %34 = or i64 %33, %31
  %35 = or i64 %34, %30
  store i64 %35, i64* %7, align 16
  %36 = sext i32 %29 to i64
  %37 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 2
  store i64 %36, i64* %38, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_aas() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %3 = load i64, i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @helper_cc_compute_all(i32 %4)
  %6 = and i32 %5, 16
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 16
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 8
  %11 = and i32 %9, 15
  %12 = icmp ugt i32 %11, 9
  %13 = icmp ne i32 %6, 0
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %0
  %16 = and i32 %9, 254
  %17 = icmp ult i32 %16, 6
  %18 = add i32 %9, 10
  %19 = and i32 %18, 15
  %20 = add nuw nsw i64 %10, 4294967295
  %21 = sext i1 %17 to i64
  %22 = add nsw i64 %20, %21
  %23 = or i32 %5, 17
  br label %26

; <label>:24:                                     ; preds = %0
  %25 = and i32 %5, -18
  br label %26

; <label>:26:                                     ; preds = %24, %15
  %27 = phi i64 [ %22, %15 ], [ %10, %24 ]
  %28 = phi i32 [ %19, %15 ], [ %11, %24 ]
  %29 = phi i32 [ %23, %15 ], [ %25, %24 ]
  %30 = and i64 %8, -65536
  %31 = zext i32 %28 to i64
  %32 = shl i64 %27, 8
  %33 = and i64 %32, 65280
  %34 = or i64 %33, %31
  %35 = or i64 %34, %30
  store i64 %35, i64* %7, align 16
  %36 = sext i32 %29 to i64
  %37 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 2
  store i64 %36, i64* %38, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_daa() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %3 = load i64, i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @helper_cc_compute_all(i32 %4)
  %6 = and i32 %5, 1
  %7 = and i32 %5, 16
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 0
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 255
  %12 = and i32 %10, 14
  %13 = icmp ugt i32 %12, 9
  %14 = icmp ne i32 %7, 0
  %15 = or i1 %14, %13
  %16 = add i32 %10, 6
  %17 = and i32 %16, 255
  %18 = select i1 %15, i32 %17, i32 %11
  %19 = select i1 %15, i32 16, i32 0
  %20 = icmp ugt i32 %11, 153
  %21 = icmp ne i32 %6, 0
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %0
  %24 = add nuw nsw i32 %18, 96
  %25 = and i32 %24, 255
  %26 = or i32 %19, 1
  br label %27

; <label>:27:                                     ; preds = %0, %23
  %28 = phi i32 [ %25, %23 ], [ %18, %0 ]
  %29 = phi i32 [ %26, %23 ], [ %19, %0 ]
  %30 = and i64 %9, -256
  %31 = sext i32 %28 to i64
  %32 = or i64 %30, %31
  store i64 %32, i64* %8, align 16
  %33 = icmp eq i32 %28, 0
  %34 = zext i1 %33 to i32
  %35 = shl nuw nsw i32 %34, 6
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %31
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %28, 128
  %40 = or i32 %39, %29
  %41 = or i32 %40, %35
  %42 = or i32 %41, %38
  %43 = sext i32 %42 to i64
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 2
  store i64 %43, i64* %45, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_das() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %3 = load i64, i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @helper_cc_compute_all(i32 %4)
  %6 = and i32 %5, 1
  %7 = and i32 %5, 16
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 0
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 255
  %12 = and i32 %10, 14
  %13 = icmp ugt i32 %12, 9
  %14 = icmp ne i32 %7, 0
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %0
  %17 = icmp ult i32 %11, 6
  %18 = icmp ne i32 %6, 0
  %19 = or i1 %18, %17
  %20 = select i1 %19, i32 17, i32 16
  %21 = add i32 %10, 250
  %22 = and i32 %21, 255
  br label %23

; <label>:23:                                     ; preds = %0, %16
  %24 = phi i32 [ %22, %16 ], [ %11, %0 ]
  %25 = phi i32 [ %20, %16 ], [ 0, %0 ]
  %26 = icmp ugt i32 %11, 153
  %27 = icmp ne i32 %6, 0
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %23
  %30 = add nuw nsw i32 %24, 160
  %31 = and i32 %30, 255
  %32 = or i32 %25, 1
  br label %33

; <label>:33:                                     ; preds = %23, %29
  %34 = phi i32 [ %31, %29 ], [ %24, %23 ]
  %35 = phi i32 [ %32, %29 ], [ %25, %23 ]
  %36 = and i64 %9, -256
  %37 = sext i32 %34 to i64
  %38 = or i64 %36, %37
  store i64 %38, i64* %8, align 16
  %39 = icmp eq i32 %34, 0
  %40 = zext i1 %39 to i32
  %41 = shl nuw nsw i32 %40, 6
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* @parity_table, i64 0, i64 %37
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %34, 128
  %46 = or i32 %45, %35
  %47 = or i32 %46, %41
  %48 = or i32 %47, %44
  %49 = sext i32 %48 to i64
  %50 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 2
  store i64 %49, i64* %51, align 8
  ret void
}

; Function Attrs: uwtable
define void @helper_into(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 1
  %4 = load i64, i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @helper_cc_compute_all(i32 %5)
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %1
  tail call fastcc void @raise_interrupt(i32 4, i32 1, i32 0, i32 %0) #13
  unreachable

; <label>:10:                                     ; preds = %1
  ret void
}

; Function Attrs: uwtable
define void @helper_cmpxchg8b(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 1
  %4 = load i64, i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @helper_cc_compute_all(i32 %5)
  %7 = tail call fastcc i64 @ldq_data(i64 %0)
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 0, i64 2
  %10 = load i64, i64* %9, align 16
  %11 = shl i64 %10, 32
  %12 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 0, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = and i64 %13, 4294967295
  %15 = or i64 %14, %11
  %16 = icmp eq i64 %7, %15
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 0, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = shl i64 %19, 32
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 0, i64 3
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 4294967295
  %24 = or i64 %23, %20
  tail call fastcc void @stq_data(i64 %0, i64 %24)
  %25 = or i32 %6, 64
  br label %33

; <label>:26:                                     ; preds = %1
  tail call fastcc void @stq_data(i64 %0, i64 %7)
  %27 = lshr i64 %7, 32
  %28 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 0, i64 2
  store i64 %27, i64* %29, align 16
  %30 = and i64 %7, 4294967295
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 0, i64 0
  store i64 %30, i64* %31, align 16
  %32 = and i32 %6, -65
  br label %33

; <label>:33:                                     ; preds = %26, %17
  %34 = phi i32 [ %25, %17 ], [ %32, %26 ]
  %35 = sext i32 %34 to i64
  %36 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %37 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %36, i64 0, i32 2
  store i64 %35, i64* %37, align 8
  ret void
}

; Function Attrs: uwtable
define internal fastcc i64 @ldq_data(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %13, -4089
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27, !prof !2

; <label>:27:                                     ; preds = %12
  %28 = zext i1 %21 to i32
  %29 = tail call i64 @__ldq_mmu(i64 %13, i32 %28)
  br label %40

; <label>:30:                                     ; preds = %12
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %13
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %30
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %35, i32 8, i32 0, i64 0)
  br label %40

; <label>:40:                                     ; preds = %30, %39, %27
  %41 = phi i64 [ %29, %27 ], [ %35, %39 ], [ %35, %30 ]
  ret i64 %41
}

; Function Attrs: uwtable
define internal fastcc void @stq_data(i64, i64) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %1, i32 8, i32 1)
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ %12, %11 ], [ %0, %7 ]
  %15 = lshr i64 %14, 12
  %16 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %15, i64 0, i64 4503599627370495, i64 0)
  %17 = and i64 %16, 1023
  %18 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %19 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 3
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 89, i64 %23, i64 %17, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %14, -4089
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %30, label %28, !prof !2

; <label>:28:                                     ; preds = %13
  %29 = zext i1 %22 to i32
  tail call void @__stq_mmu(i64 %14, i64 %1, i32 %29)
  br label %39

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %18, i64 0, i32 89, i64 %23, i64 %17, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %14
  %34 = inttoptr i64 %33 to i64*
  store i64 %1, i64* %34, align 8
  %35 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %30
  tail call void @tcg_llvm_after_memory_access(i64 %14, i64 %1, i32 8, i32 2, i64 0)
  br label %39

; <label>:39:                                     ; preds = %30, %38, %28
  ret void
}

; Function Attrs: uwtable
define void @helper_cmpxchg16b(i64) local_unnamed_addr #2 {
  %2 = and i64 %0, 15
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call fastcc void @raise_exception(i32 13) #13
  unreachable

; <label>:5:                                      ; preds = %1
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 1
  %8 = load i64, i64* %7, align 16
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @helper_cc_compute_all(i32 %9)
  %11 = tail call fastcc i64 @ldq_data(i64 %0)
  %12 = add i64 %0, 8
  %13 = tail call fastcc i64 @ldq_data(i64 %12)
  %14 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %14, i64 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %29

; <label>:18:                                     ; preds = %5
  %19 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %14, i64 0, i32 0, i64 2
  %20 = load i64, i64* %19, align 16
  %21 = icmp eq i64 %13, %20
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %14, i64 0, i32 0, i64 3
  %24 = load i64, i64* %23, align 8
  tail call fastcc void @stq_data(i64 %0, i64 %24)
  %25 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %25, i64 0, i32 0, i64 1
  %27 = load i64, i64* %26, align 8
  tail call fastcc void @stq_data(i64 %12, i64 %27)
  %28 = or i32 %10, 64
  br label %34

; <label>:29:                                     ; preds = %18, %5
  tail call fastcc void @stq_data(i64 %0, i64 %11)
  tail call fastcc void @stq_data(i64 %12, i64 %13)
  %30 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 0, i64 2
  store i64 %13, i64* %31, align 16
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 0, i64 0
  store i64 %11, i64* %32, align 16
  %33 = and i32 %10, -65
  br label %34

; <label>:34:                                     ; preds = %29, %22
  %35 = phi i32 [ %28, %22 ], [ %33, %29 ]
  %36 = sext i32 %35 to i64
  %37 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 2
  store i64 %36, i64* %38, align 8
  ret void
}

; Function Attrs: noreturn uwtable
define void @helper_single_step() local_unnamed_addr #3 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = tail call i32 @check_hw_breakpoints(%struct.CPUX86State* %1, i32 1)
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 72, i64 6
  %5 = load i64, i64* %4, align 8
  %6 = or i64 %5, 16384
  store i64 %6, i64* %4, align 8
  tail call fastcc void @raise_exception(i32 1) #13
  unreachable
}

declare i32 @check_hw_breakpoints(%struct.CPUX86State*, i32) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_cpuid() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %1 to i8*
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %3 to i8*
  %8 = bitcast i32* %4 to i8*
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14, !prof !2

; <label>:14:                                     ; preds = %0
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 48
  %16 = load i64, i64* %15, align 16
  %17 = and i64 %16, 262144
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %14
  tail call void @helper_vmexit(i32 114, i64 0)
  unreachable

; <label>:20:                                     ; preds = %0, %14
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 0, i64 0
  %22 = load i64, i64* %21, align 16
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 0, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  call void @cpu_x86_cpuid(%struct.CPUX86State* nonnull %9, i32 4, i32 %28, i32* nonnull %1, i32* nonnull %2, i32* nonnull %3, i32* nonnull %4)
  br label %30

; <label>:29:                                     ; preds = %20
  call void @cpu_x86_cpuid(%struct.CPUX86State* nonnull %9, i32 %23, i32 0, i32* nonnull %1, i32* nonnull %2, i32* nonnull %3, i32* nonnull %4)
  br label %30

; <label>:30:                                     ; preds = %29, %25
  %31 = load i32, i32* %1, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 0, i64 0
  store i64 %32, i64* %34, align 16
  %35 = load i32, i32* %2, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 0, i64 3
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 0, i64 1
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 0, i64 2
  store i64 %43, i64* %44, align 16
  ret void
}

declare void @cpu_x86_cpuid(%struct.CPUX86State*, i32, i32, i32*, i32*, i32*, i32*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_enter_level(i32, i32, i64) local_unnamed_addr #2 {
  %4 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 2, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = lshr i32 %6, 6
  %8 = and i32 %7, 65536
  %9 = xor i32 %8, 65536
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 2, i32 1
  %12 = load i64, i64* %11, align 4
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 0, i64 5
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 0, i64 4
  %17 = load i64, i64* %16, align 16
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %1, 0
  %20 = add nsw i32 %0, -1
  %21 = icmp eq i32 %20, 0
  br i1 %19, label %50, label %22

; <label>:22:                                     ; preds = %3
  %23 = add i32 %18, -8
  br i1 %21, label %44, label %24

; <label>:24:                                     ; preds = %22
  %25 = shl i32 %0, 2
  br label %26

; <label>:26:                                     ; preds = %24, %26
  %27 = phi i32 [ %40, %26 ], [ %23, %24 ]
  %28 = phi i32 [ %38, %26 ], [ %20, %24 ]
  %29 = phi i32 [ %30, %26 ], [ %15, %24 ]
  %30 = add i32 %29, -4
  %31 = and i32 %27, %10
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, %12
  %34 = and i32 %30, %10
  %35 = zext i32 %34 to i64
  %36 = add i64 %35, %12
  %37 = tail call fastcc i32 @ldl_data(i64 %36)
  tail call fastcc void @stl_data(i64 %33, i32 %37)
  %38 = add nsw i32 %28, -1
  %39 = icmp eq i32 %38, 0
  %40 = add i32 %27, -4
  br i1 %39, label %41, label %26

; <label>:41:                                     ; preds = %26
  %42 = add i32 %18, -4
  %43 = sub i32 %42, %25
  br label %44

; <label>:44:                                     ; preds = %41, %22
  %45 = phi i32 [ %23, %22 ], [ %43, %41 ]
  %46 = and i32 %45, %10
  %47 = zext i32 %46 to i64
  %48 = add i64 %47, %12
  %49 = trunc i64 %2 to i32
  tail call fastcc void @stl_data(i64 %48, i32 %49)
  br label %78

; <label>:50:                                     ; preds = %3
  %51 = add i32 %18, -4
  br i1 %21, label %72, label %52

; <label>:52:                                     ; preds = %50
  %53 = shl i32 %0, 1
  br label %54

; <label>:54:                                     ; preds = %52, %54
  %55 = phi i32 [ %68, %54 ], [ %51, %52 ]
  %56 = phi i32 [ %66, %54 ], [ %20, %52 ]
  %57 = phi i32 [ %58, %54 ], [ %15, %52 ]
  %58 = add i32 %57, -2
  %59 = and i32 %55, %10
  %60 = zext i32 %59 to i64
  %61 = add i64 %60, %12
  %62 = and i32 %58, %10
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, %12
  %65 = tail call fastcc i32 @lduw_data(i64 %64)
  tail call fastcc void @stw_data(i64 %61, i32 %65)
  %66 = add nsw i32 %56, -1
  %67 = icmp eq i32 %66, 0
  %68 = add i32 %55, -2
  br i1 %67, label %69, label %54

; <label>:69:                                     ; preds = %54
  %70 = add i32 %18, -2
  %71 = sub i32 %70, %53
  br label %72

; <label>:72:                                     ; preds = %69, %50
  %73 = phi i32 [ %51, %50 ], [ %71, %69 ]
  %74 = and i32 %73, %10
  %75 = zext i32 %74 to i64
  %76 = add i64 %75, %12
  %77 = trunc i64 %2 to i32
  tail call fastcc void @stw_data(i64 %76, i32 %77)
  br label %78

; <label>:78:                                     ; preds = %72, %44
  ret void
}

; Function Attrs: uwtable
define internal fastcc i32 @ldl_data(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %13, -4093
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27, !prof !2

; <label>:27:                                     ; preds = %12
  %28 = zext i1 %21 to i32
  %29 = tail call i32 @__ldl_mmu(i64 %13, i32 %28)
  br label %41

; <label>:30:                                     ; preds = %12
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %13
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %30
  %40 = zext i32 %35 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %40, i32 4, i32 0, i64 0)
  br label %41

; <label>:41:                                     ; preds = %30, %39, %27
  %42 = phi i32 [ %29, %27 ], [ %35, %39 ], [ %35, %30 ]
  ret i32 %42
}

; Function Attrs: uwtable
define internal fastcc void @stl_data(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %7, i32 4, i32 1)
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %14

; <label>:14:                                     ; preds = %8, %12
  %15 = phi i64 [ %13, %12 ], [ %0, %8 ]
  %16 = lshr i64 %15, 12
  %17 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 4503599627370495, i64 0)
  %18 = and i64 %17, 1023
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 3
  %24 = zext i1 %23 to i64
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %24, i64 %18, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %15, -4093
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %31, label %29, !prof !2

; <label>:29:                                     ; preds = %14
  %30 = zext i1 %23 to i32
  tail call void @__stl_mmu(i64 %15, i32 %1, i32 %30)
  br label %41

; <label>:31:                                     ; preds = %14
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %24, i64 %18, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %15
  %35 = inttoptr i64 %34 to i32*
  store i32 %1, i32* %35, align 4
  %36 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %31
  %40 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %40, i32 4, i32 2, i64 0)
  br label %41

; <label>:41:                                     ; preds = %31, %39, %29
  ret void
}

; Function Attrs: uwtable
define internal fastcc i32 @lduw_data(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %13, -4095
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27, !prof !2

; <label>:27:                                     ; preds = %12
  %28 = zext i1 %21 to i32
  %29 = tail call zeroext i16 @__ldw_mmu(i64 %13, i32 %28)
  %30 = zext i16 %29 to i32
  br label %43

; <label>:31:                                     ; preds = %12
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %13
  %35 = inttoptr i64 %34 to i16*
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %31
  %42 = zext i16 %36 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %42, i32 4, i32 0, i64 0)
  br label %43

; <label>:43:                                     ; preds = %31, %41, %27
  %44 = phi i32 [ %30, %27 ], [ %37, %41 ], [ %37, %31 ]
  ret i32 %44
}

; Function Attrs: uwtable
define internal fastcc void @stw_data(i64, i32) unnamed_addr #2 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = zext i32 %1 to i64
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 %7, i32 4, i32 1)
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %8
  %13 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %14

; <label>:14:                                     ; preds = %8, %12
  %15 = phi i64 [ %13, %12 ], [ %0, %8 ]
  %16 = lshr i64 %15, 12
  %17 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %16, i64 0, i64 4503599627370495, i64 0)
  %18 = and i64 %17, 1023
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %20 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 3
  %24 = zext i1 %23 to i64
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %24, i64 %18, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %15, -4095
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %32, label %29, !prof !2

; <label>:29:                                     ; preds = %14
  %30 = zext i1 %23 to i32
  %31 = trunc i32 %1 to i16
  tail call void @__stw_mmu(i64 %15, i16 zeroext %31, i32 %30)
  br label %43

; <label>:32:                                     ; preds = %14
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %19, i64 0, i32 89, i64 %24, i64 %18, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %15
  %36 = trunc i32 %1 to i16
  %37 = inttoptr i64 %35 to i16*
  store i16 %36, i16* %37, align 2
  %38 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %32
  %42 = zext i32 %1 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %15, i64 %42, i32 4, i32 2, i64 0)
  br label %43

; <label>:43:                                     ; preds = %32, %41, %29
  ret void
}

; Function Attrs: uwtable
define void @helper_enter64_level(i32, i32, i64) local_unnamed_addr #2 {
  %4 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 0, i64 5
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 0, i64 4
  %8 = load i64, i64* %7, align 16
  %9 = icmp eq i32 %1, 0
  %10 = add nsw i32 %0, -1
  %11 = icmp eq i32 %10, 0
  br i1 %9, label %32, label %12

; <label>:12:                                     ; preds = %3
  %13 = add i64 %8, -16
  br i1 %11, label %30, label %14

; <label>:14:                                     ; preds = %12
  %15 = add i32 %0, -2
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 3
  br label %18

; <label>:18:                                     ; preds = %14, %18
  %19 = phi i64 [ %26, %18 ], [ %13, %14 ]
  %20 = phi i32 [ %24, %18 ], [ %10, %14 ]
  %21 = phi i64 [ %22, %18 ], [ %6, %14 ]
  %22 = add i64 %21, -8
  %23 = tail call fastcc i64 @ldq_data(i64 %22)
  tail call fastcc void @stq_data(i64 %19, i64 %23)
  %24 = add nsw i32 %20, -1
  %25 = icmp eq i32 %24, 0
  %26 = add i64 %19, -8
  br i1 %25, label %27, label %18

; <label>:27:                                     ; preds = %18
  %28 = add i64 %8, -24
  %29 = sub i64 %28, %17
  br label %30

; <label>:30:                                     ; preds = %27, %12
  %31 = phi i64 [ %13, %12 ], [ %29, %27 ]
  tail call fastcc void @stq_data(i64 %31, i64 %2)
  br label %53

; <label>:32:                                     ; preds = %3
  %33 = add i64 %8, -4
  br i1 %11, label %50, label %34

; <label>:34:                                     ; preds = %32
  %35 = add i32 %0, -2
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  br label %38

; <label>:38:                                     ; preds = %34, %38
  %39 = phi i64 [ %46, %38 ], [ %33, %34 ]
  %40 = phi i32 [ %44, %38 ], [ %10, %34 ]
  %41 = phi i64 [ %42, %38 ], [ %6, %34 ]
  %42 = add i64 %41, -2
  %43 = tail call fastcc i32 @lduw_data(i64 %42)
  tail call fastcc void @stw_data(i64 %39, i32 %43)
  %44 = add nsw i32 %40, -1
  %45 = icmp eq i32 %44, 0
  %46 = add i64 %39, -2
  br i1 %45, label %47, label %38

; <label>:47:                                     ; preds = %38
  %48 = add i64 %8, -6
  %49 = sub i64 %48, %37
  br label %50

; <label>:50:                                     ; preds = %47, %32
  %51 = phi i64 [ %33, %32 ], [ %49, %47 ]
  %52 = trunc i64 %2 to i32
  tail call fastcc void @stw_data(i64 %51, i32 %52)
  br label %53

; <label>:53:                                     ; preds = %50, %30
  ret void
}

; Function Attrs: uwtable
define void @helper_lldt(i32) local_unnamed_addr #2 {
  %2 = and i32 %0, 65535
  %3 = and i32 %0, 65532
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 12, i32 1
  store i64 0, i64* %7, align 4
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 12, i32 2
  store i32 0, i32* %8, align 4
  br label %91

; <label>:9:                                      ; preds = %1
  %10 = and i32 %0, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %9
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:13:                                     ; preds = %9
  %14 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %15 = and i32 %0, 65528
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %14, i64 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = lshr i32 %17, 11
  %19 = and i32 %18, 8
  %20 = or i32 %19, 7
  %21 = add nuw nsw i32 %20, %15
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %14, i64 0, i32 14, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %13
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:26:                                     ; preds = %13
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %14, i64 0, i32 14, i32 1
  %28 = load i64, i64* %27, align 4
  %29 = zext i32 %15 to i64
  %30 = add i64 %28, %29
  %31 = tail call fastcc i32 @ldl_kernel(i64 %30)
  %32 = add i64 %30, 4
  %33 = tail call fastcc i32 @ldl_kernel(i64 %32)
  %34 = and i32 %33, 7936
  %35 = icmp eq i32 %34, 512
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %26
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:37:                                     ; preds = %26
  %38 = trunc i32 %33 to i16
  %39 = icmp slt i16 %38, 0
  br i1 %39, label %41, label %40

; <label>:40:                                     ; preds = %37
  tail call fastcc void @raise_exception_err(i32 11, i32 %3) #13
  unreachable

; <label>:41:                                     ; preds = %37
  %42 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %43 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %72, label %47

; <label>:47:                                     ; preds = %41
  %48 = add i64 %30, 8
  %49 = tail call fastcc i32 @ldl_kernel(i64 %48)
  %50 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %51 = lshr i32 %31, 16
  %52 = shl i32 %33, 16
  %53 = and i32 %52, 16711680
  %54 = and i32 %33, -16777216
  %55 = or i32 %54, %51
  %56 = or i32 %55, %53
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 12, i32 1
  %59 = and i32 %31, 65535
  %60 = and i32 %33, 983040
  %61 = or i32 %60, %59
  %62 = and i32 %33, 8388608
  %63 = icmp eq i32 %62, 0
  %64 = shl nuw i32 %61, 12
  %65 = or i32 %64, 4095
  %66 = select i1 %63, i32 %61, i32 %65
  %67 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 12, i32 2
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 12, i32 3
  store i32 %33, i32* %68, align 4
  %69 = zext i32 %49 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %57, %70
  store i64 %71, i64* %58, align 4
  br label %91

; <label>:72:                                     ; preds = %41
  %73 = lshr i32 %31, 16
  %74 = shl i32 %33, 16
  %75 = and i32 %74, 16711680
  %76 = and i32 %33, -16777216
  %77 = or i32 %76, %73
  %78 = or i32 %77, %75
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 12, i32 1
  store i64 %79, i64* %80, align 4
  %81 = and i32 %31, 65535
  %82 = and i32 %33, 983040
  %83 = or i32 %82, %81
  %84 = and i32 %33, 8388608
  %85 = icmp eq i32 %84, 0
  %86 = shl nuw i32 %83, 12
  %87 = or i32 %86, 4095
  %88 = select i1 %85, i32 %83, i32 %87
  %89 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 12, i32 2
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 12, i32 3
  store i32 %33, i32* %90, align 4
  br label %91

; <label>:91:                                     ; preds = %47, %72, %5
  %92 = phi %struct.CPUX86State* [ %50, %47 ], [ %42, %72 ], [ %6, %5 ]
  %93 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 12, i32 0
  store i32 %2, i32* %93, align 4
  ret void
}

; Function Attrs: uwtable
define void @helper_ltr(i32) local_unnamed_addr #2 {
  %2 = and i32 %0, 65535
  %3 = and i32 %0, 65532
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

; <label>:5:                                      ; preds = %1
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 13, i32 1
  %8 = bitcast i64* %7 to i8*
  br label %9

; <label>:9:                                      ; preds = %12, %5
  %10 = phi i64 [ 0, %5 ], [ %14, %12 ]
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %9
  %13 = getelementptr i8, i8* %8, i64 %10
  store i8 0, i8* %13
  %14 = add i64 %10, 1
  br label %9

; <label>:15:                                     ; preds = %9
  br label %110

; <label>:16:                                     ; preds = %1
  %17 = and i32 %0, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %16
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:20:                                     ; preds = %16
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = and i32 %0, 65528
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 11
  %26 = and i32 %25, 8
  %27 = or i32 %26, 7
  %28 = add nuw nsw i32 %27, %22
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 14, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %20
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:33:                                     ; preds = %20
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 14, i32 1
  %35 = load i64, i64* %34, align 4
  %36 = zext i32 %22 to i64
  %37 = add i64 %35, %36
  %38 = tail call fastcc i32 @ldl_kernel(i64 %37)
  %39 = add i64 %37, 4
  %40 = tail call fastcc i32 @ldl_kernel(i64 %39)
  %41 = and i32 %40, 4096
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %33
  %44 = lshr i32 %40, 8
  %45 = trunc i32 %44 to i4
  switch i4 %45, label %46 [
    i4 -7, label %47
    i4 1, label %47
  ]

; <label>:46:                                     ; preds = %43, %33
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:47:                                     ; preds = %43, %43
  %48 = trunc i32 %40 to i16
  %49 = icmp slt i16 %48, 0
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %47
  tail call fastcc void @raise_exception_err(i32 11, i32 %3) #13
  unreachable

; <label>:51:                                     ; preds = %47
  %52 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %52, i64 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 16384
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %88, label %57

; <label>:57:                                     ; preds = %51
  %58 = add i64 %37, 8
  %59 = tail call fastcc i32 @ldl_kernel(i64 %58)
  %60 = add i64 %37, 12
  %61 = tail call fastcc i32 @ldl_kernel(i64 %60)
  %62 = and i32 %61, 3840
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

; <label>:64:                                     ; preds = %57
  tail call fastcc void @raise_exception_err(i32 13, i32 %3) #13
  unreachable

; <label>:65:                                     ; preds = %57
  %66 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %67 = lshr i32 %38, 16
  %68 = shl i32 %40, 16
  %69 = and i32 %68, 16711680
  %70 = and i32 %40, -16777216
  %71 = or i32 %70, %67
  %72 = or i32 %71, %69
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %66, i64 0, i32 13, i32 1
  %75 = and i32 %38, 65535
  %76 = and i32 %40, 983040
  %77 = or i32 %76, %75
  %78 = and i32 %40, 8388608
  %79 = icmp eq i32 %78, 0
  %80 = shl nuw i32 %77, 12
  %81 = or i32 %80, 4095
  %82 = select i1 %79, i32 %77, i32 %81
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %66, i64 0, i32 13, i32 2
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %66, i64 0, i32 13, i32 3
  store i32 %40, i32* %84, align 4
  %85 = zext i32 %59 to i64
  %86 = shl nuw i64 %85, 32
  %87 = or i64 %73, %86
  store i64 %87, i64* %74, align 4
  br label %107

; <label>:88:                                     ; preds = %51
  %89 = lshr i32 %38, 16
  %90 = shl i32 %40, 16
  %91 = and i32 %90, 16711680
  %92 = and i32 %40, -16777216
  %93 = or i32 %92, %89
  %94 = or i32 %93, %91
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %52, i64 0, i32 13, i32 1
  store i64 %95, i64* %96, align 4
  %97 = and i32 %38, 65535
  %98 = and i32 %40, 983040
  %99 = or i32 %98, %97
  %100 = and i32 %40, 8388608
  %101 = icmp eq i32 %100, 0
  %102 = shl nuw i32 %99, 12
  %103 = or i32 %102, 4095
  %104 = select i1 %101, i32 %99, i32 %103
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %52, i64 0, i32 13, i32 2
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %52, i64 0, i32 13, i32 3
  store i32 %40, i32* %106, align 4
  br label %107

; <label>:107:                                    ; preds = %88, %65
  %108 = or i32 %40, 512
  tail call fastcc void @stl_kernel(i64 %39, i32 %108)
  %109 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %110

; <label>:110:                                    ; preds = %107, %15
  %111 = phi %struct.CPUX86State* [ %109, %107 ], [ %6, %15 ]
  %112 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %111, i64 0, i32 13, i32 0
  store i32 %2, i32* %112, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_load_seg(i32, i32) local_unnamed_addr #2 {
  %3 = and i32 %1, 65535
  %4 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 8
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 3
  %8 = and i32 %1, 65532
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %79

; <label>:10:                                     ; preds = %2
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %10
  %13 = trunc i32 %6 to i16
  %14 = icmp sgt i16 %13, -1
  %15 = icmp eq i32 %7, 3
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %12
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:18:                                     ; preds = %12, %10
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 %19, i32 0
  store i32 %3, i32* %20, align 4
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 %19, i32 1
  %22 = icmp eq i32 %0, 1
  %23 = bitcast i64* %21 to i8*
  br label %24

; <label>:24:                                     ; preds = %27, %18
  %25 = phi i64 [ 0, %18 ], [ %29, %27 ]
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = getelementptr i8, i8* %23, i64 %25
  store i8 0, i8* %28
  %29 = add i64 %25, 1
  br label %24

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %5, align 4
  br i1 %22, label %32, label %39

; <label>:32:                                     ; preds = %30
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 1, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = lshr i32 %34, 18
  %36 = and i32 %35, 16
  %37 = and i32 %31, -32785
  %38 = or i32 %36, %37
  store i32 %38, i32* %5, align 4
  br label %39

; <label>:39:                                     ; preds = %32, %30
  %40 = phi i32 [ %38, %32 ], [ %31, %30 ]
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 2, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = lshr i32 %42, 17
  %44 = and i32 %43, 32
  %45 = trunc i32 %40 to i16
  %46 = icmp slt i16 %45, 0
  br i1 %46, label %75, label %47

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 16, i64 0
  %49 = load i64, i64* %48, align 4
  %50 = and i64 %49, 1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %60, label %52

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 7
  %54 = load i64, i64* %53, align 4
  %55 = and i64 %54, 131072
  %56 = icmp ne i64 %55, 0
  %57 = and i32 %40, 16
  %58 = icmp eq i32 %57, 0
  %59 = or i1 %58, %56
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %52, %47
  %61 = or i32 %44, 64
  br label %75

; <label>:62:                                     ; preds = %52
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 3, i32 1
  %64 = load i64, i64* %63, align 4
  %65 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 0, i32 1
  %66 = load i64, i64* %65, align 4
  %67 = or i64 %66, %64
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 11, i64 2, i32 1
  %69 = load i64, i64* %68, align 4
  %70 = or i64 %67, %69
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = shl nuw nsw i32 %72, 6
  %74 = or i32 %73, %44
  br label %75

; <label>:75:                                     ; preds = %39, %60, %62
  %76 = phi i32 [ %44, %39 ], [ %61, %60 ], [ %74, %62 ]
  %77 = and i32 %40, -97
  %78 = or i32 %76, %77
  store i32 %78, i32* %5, align 4
  br label %220

; <label>:79:                                     ; preds = %2
  %80 = and i32 %1, 4
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 12
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 14
  %84 = select i1 %81, %struct.SegmentCache* %83, %struct.SegmentCache* %82
  %85 = and i32 %1, 65528
  %86 = or i32 %85, 7
  %87 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %84, i64 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ugt i32 %86, %88
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %79
  tail call fastcc void @raise_exception_err(i32 13, i32 %8) #13
  unreachable

; <label>:91:                                     ; preds = %79
  %92 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %84, i64 0, i32 1
  %93 = load i64, i64* %92, align 4
  %94 = zext i32 %85 to i64
  %95 = add i64 %93, %94
  %96 = tail call fastcc i32 @ldl_kernel(i64 %95)
  %97 = add i64 %95, 4
  %98 = tail call fastcc i32 @ldl_kernel(i64 %97)
  %99 = and i32 %98, 4096
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %91
  tail call fastcc void @raise_exception_err(i32 13, i32 %8) #13
  unreachable

; <label>:102:                                    ; preds = %91
  %103 = and i32 %1, 3
  %104 = lshr i32 %98, 13
  %105 = and i32 %104, 3
  %106 = icmp eq i32 %0, 2
  %107 = and i32 %98, 2560
  br i1 %106, label %108, label %116

; <label>:108:                                    ; preds = %102
  %109 = icmp eq i32 %107, 512
  br i1 %109, label %111, label %110

; <label>:110:                                    ; preds = %108
  tail call fastcc void @raise_exception_err(i32 13, i32 %8) #13
  unreachable

; <label>:111:                                    ; preds = %108
  %112 = icmp eq i32 %103, %7
  %113 = icmp eq i32 %105, %7
  %114 = and i1 %112, %113
  br i1 %114, label %127, label %115

; <label>:115:                                    ; preds = %111
  tail call fastcc void @raise_exception_err(i32 13, i32 %8) #13
  unreachable

; <label>:116:                                    ; preds = %102
  %117 = icmp eq i32 %107, 2048
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %116
  tail call fastcc void @raise_exception_err(i32 13, i32 %8) #13
  unreachable

; <label>:119:                                    ; preds = %116
  %120 = and i32 %98, 3072
  %121 = icmp eq i32 %120, 3072
  br i1 %121, label %127, label %122

; <label>:122:                                    ; preds = %119
  %123 = icmp ult i32 %105, %7
  %124 = icmp ult i32 %105, %103
  %125 = or i1 %123, %124
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %122
  tail call fastcc void @raise_exception_err(i32 13, i32 %8) #13
  unreachable

; <label>:127:                                    ; preds = %119, %122, %111
  %128 = trunc i32 %98 to i16
  %129 = icmp slt i16 %128, 0
  br i1 %129, label %133, label %130

; <label>:130:                                    ; preds = %127
  br i1 %106, label %131, label %132

; <label>:131:                                    ; preds = %130
  tail call fastcc void @raise_exception_err(i32 12, i32 %8) #13
  unreachable

; <label>:132:                                    ; preds = %130
  tail call fastcc void @raise_exception_err(i32 11, i32 %8) #13
  unreachable

; <label>:133:                                    ; preds = %127
  %134 = and i32 %98, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

; <label>:136:                                    ; preds = %133
  %137 = or i32 %98, 256
  tail call fastcc void @stl_kernel(i64 %97, i32 %137)
  br label %138

; <label>:138:                                    ; preds = %133, %136
  %139 = phi i32 [ %98, %133 ], [ %137, %136 ]
  %140 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %141 = lshr i32 %96, 16
  %142 = shl i32 %139, 16
  %143 = and i32 %142, 16711680
  %144 = and i32 %139, -16777216
  %145 = or i32 %144, %141
  %146 = or i32 %145, %143
  %147 = zext i32 %146 to i64
  %148 = and i32 %96, 65535
  %149 = and i32 %139, 983040
  %150 = or i32 %149, %148
  %151 = and i32 %139, 8388608
  %152 = icmp eq i32 %151, 0
  %153 = shl nuw i32 %150, 12
  %154 = or i32 %153, 4095
  %155 = select i1 %152, i32 %150, i32 %154
  %156 = sext i32 %0 to i64
  %157 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 %156, i32 0
  store i32 %3, i32* %157, align 4
  %158 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 %156, i32 1
  store i64 %147, i64* %158, align 4
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 %156, i32 2
  store i32 %155, i32* %159, align 4
  %160 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 %156, i32 3
  store i32 %139, i32* %160, align 4
  %161 = icmp eq i32 %0, 1
  %162 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 8
  %163 = load i32, i32* %162, align 4
  br i1 %161, label %164, label %180

; <label>:164:                                    ; preds = %138
  %165 = and i32 %163, 16384
  %166 = icmp eq i32 %165, 0
  %167 = and i32 %139, 2097152
  %168 = icmp eq i32 %167, 0
  %169 = or i1 %168, %166
  br i1 %169, label %173, label %170

; <label>:170:                                    ; preds = %164
  %171 = and i32 %163, -32881
  %172 = or i32 %171, 32816
  store i32 %172, i32* %162, align 4
  br label %180

; <label>:173:                                    ; preds = %164
  %174 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 1, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = lshr i32 %175, 18
  %177 = and i32 %176, 16
  %178 = and i32 %163, -32785
  %179 = or i32 %177, %178
  store i32 %179, i32* %162, align 4
  br label %180

; <label>:180:                                    ; preds = %173, %170, %138
  %181 = phi i32 [ %172, %170 ], [ %179, %173 ], [ %163, %138 ]
  %182 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 2, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = lshr i32 %183, 17
  %185 = and i32 %184, 32
  %186 = trunc i32 %181 to i16
  %187 = icmp slt i16 %186, 0
  br i1 %187, label %216, label %188

; <label>:188:                                    ; preds = %180
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 16, i64 0
  %190 = load i64, i64* %189, align 4
  %191 = and i64 %190, 1
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %201, label %193

; <label>:193:                                    ; preds = %188
  %194 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 7
  %195 = load i64, i64* %194, align 4
  %196 = and i64 %195, 131072
  %197 = icmp ne i64 %196, 0
  %198 = and i32 %181, 16
  %199 = icmp eq i32 %198, 0
  %200 = or i1 %199, %197
  br i1 %200, label %201, label %203

; <label>:201:                                    ; preds = %193, %188
  %202 = or i32 %185, 64
  br label %216

; <label>:203:                                    ; preds = %193
  %204 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 3, i32 1
  %205 = load i64, i64* %204, align 4
  %206 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 0, i32 1
  %207 = load i64, i64* %206, align 4
  %208 = or i64 %207, %205
  %209 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %140, i64 0, i32 11, i64 2, i32 1
  %210 = load i64, i64* %209, align 4
  %211 = or i64 %208, %210
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = shl nuw nsw i32 %213, 6
  %215 = or i32 %214, %185
  br label %216

; <label>:216:                                    ; preds = %180, %201, %203
  %217 = phi i32 [ %185, %180 ], [ %202, %201 ], [ %215, %203 ]
  %218 = and i32 %181, -97
  %219 = or i32 %217, %218
  store i32 %219, i32* %162, align 4
  br label %220

; <label>:220:                                    ; preds = %216, %75
  ret void
}

; Function Attrs: uwtable
define void @helper_ljmp_protected(i32, i64, i32) local_unnamed_addr #2 {
  %4 = and i32 %0, 65532
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = and i32 %0, 4
  %9 = icmp eq i32 %8, 0
  %10 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 12
  %12 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 14
  %13 = select i1 %9, %struct.SegmentCache* %12, %struct.SegmentCache* %11
  %14 = or i32 %0, 7
  %15 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %13, i64 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %7
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:19:                                     ; preds = %7
  %20 = and i32 %0, -8
  %21 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %13, i64 0, i32 1
  %22 = load i64, i64* %21, align 4
  %23 = sext i32 %20 to i64
  %24 = add i64 %22, %23
  %25 = tail call fastcc i32 @ldl_kernel(i64 %24)
  %26 = add i64 %24, 4
  %27 = tail call fastcc i32 @ldl_kernel(i64 %26)
  %28 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = and i32 %27, 4096
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %139, label %34

; <label>:34:                                     ; preds = %19
  %35 = and i32 %27, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:38:                                     ; preds = %34
  %39 = lshr i32 %27, 13
  %40 = and i32 %39, 3
  %41 = and i32 %27, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %38
  %44 = icmp ugt i32 %40, %31
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %43
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:46:                                     ; preds = %38
  %47 = and i32 %0, 3
  %48 = icmp ugt i32 %47, %31
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:50:                                     ; preds = %46
  %51 = icmp eq i32 %40, %31
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %50
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:53:                                     ; preds = %50, %43
  %54 = trunc i32 %27 to i16
  %55 = icmp slt i16 %54, 0
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call fastcc void @raise_exception_err(i32 11, i32 %4) #13
  unreachable

; <label>:57:                                     ; preds = %53
  %58 = and i32 %25, 65535
  %59 = and i32 %27, 983040
  %60 = or i32 %59, %58
  %61 = and i32 %27, 8388608
  %62 = icmp eq i32 %61, 0
  %63 = shl nuw i32 %60, 12
  %64 = or i32 %63, 4095
  %65 = select i1 %62, i32 %60, i32 %64
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %66, %1
  %68 = and i32 %30, 16384
  %69 = and i32 %27, 2097152
  %70 = or i32 %68, %69
  %71 = icmp eq i32 %70, 0
  %72 = and i1 %67, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %57
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:74:                                     ; preds = %57
  %75 = or i32 %31, %4
  %76 = lshr i32 %25, 16
  %77 = shl i32 %27, 16
  %78 = and i32 %77, 16711680
  %79 = and i32 %27, -16777216
  %80 = or i32 %79, %76
  %81 = or i32 %80, %78
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 1, i32 0
  store i32 %75, i32* %83, align 4
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 1, i32 1
  store i64 %82, i64* %84, align 4
  %85 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 1, i32 2
  store i32 %65, i32* %85, align 4
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 1, i32 3
  store i32 %27, i32* %86, align 4
  %87 = icmp eq i32 %68, 0
  %88 = icmp eq i32 %69, 0
  %89 = or i1 %88, %87
  br i1 %89, label %93, label %90

; <label>:90:                                     ; preds = %74
  %91 = and i32 %30, -32881
  %92 = or i32 %91, 32816
  br label %98

; <label>:93:                                     ; preds = %74
  %94 = lshr i32 %27, 18
  %95 = and i32 %94, 16
  %96 = and i32 %30, -32785
  %97 = or i32 %96, %95
  br label %98

; <label>:98:                                     ; preds = %93, %90
  %99 = phi i32 [ %92, %90 ], [ %97, %93 ]
  store i32 %99, i32* %29, align 4
  %100 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 2, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = lshr i32 %101, 17
  %103 = and i32 %102, 32
  %104 = trunc i32 %99 to i16
  %105 = icmp slt i16 %104, 0
  br i1 %105, label %134, label %106

; <label>:106:                                    ; preds = %98
  %107 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 16, i64 0
  %108 = load i64, i64* %107, align 4
  %109 = and i64 %108, 1
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %119, label %111

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 7
  %113 = load i64, i64* %112, align 4
  %114 = and i64 %113, 131072
  %115 = icmp ne i64 %114, 0
  %116 = and i32 %99, 16
  %117 = icmp eq i32 %116, 0
  %118 = or i1 %117, %115
  br i1 %118, label %119, label %121

; <label>:119:                                    ; preds = %111, %106
  %120 = or i32 %103, 64
  br label %134

; <label>:121:                                    ; preds = %111
  %122 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 3, i32 1
  %123 = load i64, i64* %122, align 4
  %124 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 0, i32 1
  %125 = load i64, i64* %124, align 4
  %126 = or i64 %125, %123
  %127 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 2, i32 1
  %128 = load i64, i64* %127, align 4
  %129 = or i64 %126, %128
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = shl nuw nsw i32 %131, 6
  %133 = or i32 %132, %103
  br label %134

; <label>:134:                                    ; preds = %98, %119, %121
  %135 = phi i32 [ %103, %98 ], [ %120, %119 ], [ %133, %121 ]
  %136 = and i32 %99, -97
  %137 = or i32 %135, %136
  store i32 %137, i32* %29, align 4
  %138 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 5
  store i64 %1, i64* %138, align 16
  br label %300

; <label>:139:                                    ; preds = %19
  %140 = lshr i32 %27, 13
  %141 = and i32 %140, 3
  %142 = and i32 %0, 3
  %143 = lshr i32 %27, 8
  %144 = and i32 %143, 15
  %145 = trunc i32 %143 to i4
  switch i4 %145, label %299 [
    i4 1, label %146
    i4 -7, label %146
    i4 5, label %146
    i4 4, label %159
    i4 -4, label %159
  ]

; <label>:146:                                    ; preds = %139, %139, %139
  %147 = icmp ult i32 %141, %31
  %148 = icmp ult i32 %141, %142
  %149 = or i1 %148, %147
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %146
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:151:                                    ; preds = %146
  %152 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 5
  %153 = load i64, i64* %152, align 16
  %154 = zext i32 %2 to i64
  %155 = add i64 %153, %154
  %156 = trunc i64 %155 to i32
  tail call fastcc void @switch_tss(i32 %0, i32 %25, i32 %27, i32 0, i32 %156)
  %157 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %158 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %157, i64 0, i32 1
  store i64 1, i64* %158, align 16
  br label %300

; <label>:159:                                    ; preds = %139, %139
  %160 = icmp ult i32 %141, %31
  %161 = icmp ult i32 %141, %142
  %162 = or i1 %161, %160
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %159
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:164:                                    ; preds = %159
  %165 = trunc i32 %27 to i16
  %166 = icmp slt i16 %165, 0
  br i1 %166, label %168, label %167

; <label>:167:                                    ; preds = %164
  tail call fastcc void @raise_exception_err(i32 11, i32 %4) #13
  unreachable

; <label>:168:                                    ; preds = %164
  %169 = lshr i32 %25, 16
  %170 = and i32 %25, 65535
  %171 = icmp eq i32 %144, 12
  %172 = and i32 %27, -65536
  %173 = select i1 %171, i32 %172, i32 0
  %174 = or i32 %173, %170
  %175 = zext i32 %174 to i64
  %176 = and i32 %169, 4
  %177 = icmp eq i32 %176, 0
  %178 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 12
  %179 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 14
  %180 = select i1 %177, %struct.SegmentCache* %179, %struct.SegmentCache* %178
  %181 = or i32 %169, 7
  %182 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %180, i64 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp ugt i32 %181, %183
  br i1 %184, label %185, label %187

; <label>:185:                                    ; preds = %168
  %186 = and i32 %169, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %186) #13
  unreachable

; <label>:187:                                    ; preds = %168
  %188 = and i32 %169, 65528
  %189 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %180, i64 0, i32 1
  %190 = load i64, i64* %189, align 4
  %191 = zext i32 %188 to i64
  %192 = add i64 %190, %191
  %193 = tail call fastcc i32 @ldl_kernel(i64 %192)
  %194 = add i64 %192, 4
  %195 = tail call fastcc i32 @ldl_kernel(i64 %194)
  %196 = lshr i32 %195, 13
  %197 = and i32 %196, 3
  %198 = and i32 %195, 6144
  %199 = icmp eq i32 %198, 6144
  br i1 %199, label %202, label %200

; <label>:200:                                    ; preds = %187
  %201 = and i32 %169, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %201) #13
  unreachable

; <label>:202:                                    ; preds = %187
  %203 = and i32 %195, 1024
  %204 = icmp ne i32 %203, 0
  %205 = icmp ugt i32 %197, %31
  %206 = and i1 %204, %205
  %207 = icmp eq i32 %197, %31
  %208 = or i1 %204, %207
  %209 = xor i1 %206, %208
  br i1 %209, label %212, label %210

; <label>:210:                                    ; preds = %202
  %211 = and i32 %169, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %211) #13
  unreachable

; <label>:212:                                    ; preds = %202
  %213 = trunc i32 %195 to i16
  %214 = icmp slt i16 %213, 0
  br i1 %214, label %217, label %215

; <label>:215:                                    ; preds = %212
  %216 = and i32 %169, 65532
  tail call fastcc void @raise_exception_err(i32 13, i32 %216) #13
  unreachable

; <label>:217:                                    ; preds = %212
  %218 = and i32 %193, 65535
  %219 = and i32 %195, 983040
  %220 = or i32 %219, %218
  %221 = and i32 %195, 8388608
  %222 = icmp eq i32 %221, 0
  %223 = shl nuw i32 %220, 12
  %224 = or i32 %223, 4095
  %225 = select i1 %222, i32 %220, i32 %224
  %226 = icmp ugt i32 %174, %225
  br i1 %226, label %227, label %228

; <label>:227:                                    ; preds = %217
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:228:                                    ; preds = %217
  %229 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %230 = and i32 %169, 65532
  %231 = or i32 %31, %230
  %232 = lshr i32 %193, 16
  %233 = shl i32 %195, 16
  %234 = and i32 %233, 16711680
  %235 = and i32 %195, -16777216
  %236 = or i32 %235, %232
  %237 = or i32 %236, %234
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 1, i32 0
  store i32 %231, i32* %239, align 4
  %240 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 1, i32 1
  store i64 %238, i64* %240, align 4
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 1, i32 2
  store i32 %225, i32* %241, align 4
  %242 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 1, i32 3
  store i32 %195, i32* %242, align 4
  %243 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 8
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 16384
  %246 = icmp eq i32 %245, 0
  %247 = and i32 %195, 2097152
  %248 = icmp eq i32 %247, 0
  %249 = or i1 %248, %246
  br i1 %249, label %253, label %250

; <label>:250:                                    ; preds = %228
  %251 = and i32 %244, -32881
  %252 = or i32 %251, 32816
  br label %258

; <label>:253:                                    ; preds = %228
  %254 = lshr i32 %195, 18
  %255 = and i32 %254, 16
  %256 = and i32 %244, -32785
  %257 = or i32 %256, %255
  br label %258

; <label>:258:                                    ; preds = %253, %250
  %259 = phi i32 [ %252, %250 ], [ %257, %253 ]
  store i32 %259, i32* %243, align 4
  %260 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 2, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = lshr i32 %261, 17
  %263 = and i32 %262, 32
  %264 = trunc i32 %259 to i16
  %265 = icmp slt i16 %264, 0
  br i1 %265, label %294, label %266

; <label>:266:                                    ; preds = %258
  %267 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 16, i64 0
  %268 = load i64, i64* %267, align 4
  %269 = and i64 %268, 1
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %279, label %271

; <label>:271:                                    ; preds = %266
  %272 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 7
  %273 = load i64, i64* %272, align 4
  %274 = and i64 %273, 131072
  %275 = icmp ne i64 %274, 0
  %276 = and i32 %259, 16
  %277 = icmp eq i32 %276, 0
  %278 = or i1 %277, %275
  br i1 %278, label %279, label %281

; <label>:279:                                    ; preds = %271, %266
  %280 = or i32 %263, 64
  br label %294

; <label>:281:                                    ; preds = %271
  %282 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 3, i32 1
  %283 = load i64, i64* %282, align 4
  %284 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 0, i32 1
  %285 = load i64, i64* %284, align 4
  %286 = or i64 %285, %283
  %287 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 11, i64 2, i32 1
  %288 = load i64, i64* %287, align 4
  %289 = or i64 %286, %288
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i32
  %292 = shl nuw nsw i32 %291, 6
  %293 = or i32 %292, %263
  br label %294

; <label>:294:                                    ; preds = %258, %279, %281
  %295 = phi i32 [ %263, %258 ], [ %280, %279 ], [ %293, %281 ]
  %296 = and i32 %259, -97
  %297 = or i32 %295, %296
  store i32 %297, i32* %243, align 4
  %298 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 5
  store i64 %175, i64* %298, align 16
  br label %300

; <label>:299:                                    ; preds = %139
  tail call fastcc void @raise_exception_err(i32 13, i32 %4) #13
  unreachable

; <label>:300:                                    ; preds = %151, %294, %134
  ret void
}

; Function Attrs: uwtable
define void @helper_lcall_real(i32, i64, i32, i32) local_unnamed_addr #2 {
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 0, i64 4
  %7 = load i64, i64* %6, align 16
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 11, i64 2, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = lshr i32 %10, 6
  %12 = and i32 %11, 65536
  %13 = xor i32 %12, 65536
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 11, i64 2, i32 1
  %16 = load i64, i64* %15, align 4
  %17 = icmp eq i32 %2, 0
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 11, i64 1, i32 0
  %19 = load i32, i32* %18, align 4
  br i1 %17, label %31, label %20

; <label>:20:                                     ; preds = %4
  %21 = add i32 %8, -4
  %22 = and i32 %14, %21
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, %16
  %25 = and i64 %24, 4294967295
  tail call fastcc void @stl_kernel(i64 %25, i32 %19)
  %26 = add i32 %8, -8
  %27 = and i32 %14, %26
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, %16
  %30 = and i64 %29, 4294967295
  tail call fastcc void @stl_kernel(i64 %30, i32 %3)
  br label %40

; <label>:31:                                     ; preds = %4
  %32 = add i32 %8, -2
  %33 = and i32 %14, %32
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, %16
  tail call fastcc void @stw_kernel(i64 %35, i32 %19)
  %36 = add i32 %8, -4
  %37 = and i32 %14, %36
  %38 = zext i32 %37 to i64
  %39 = add i64 %38, %16
  tail call fastcc void @stw_kernel(i64 %39, i32 %3)
  br label %40

; <label>:40:                                     ; preds = %20, %31
  %41 = phi i32 [ %26, %20 ], [ %36, %31 ]
  %42 = icmp eq i32 %14, 65535
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %40
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 0, i64 4
  %46 = load i64, i64* %45, align 16
  %47 = and i64 %46, -65536
  %48 = and i32 %41, 65535
  %49 = zext i32 %48 to i64
  %50 = or i64 %47, %49
  store i64 %50, i64* %45, align 16
  br label %55

; <label>:51:                                     ; preds = %40
  %52 = zext i32 %41 to i64
  %53 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %54 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 0, i64 4
  store i64 %52, i64* %54, align 16
  br label %55

; <label>:55:                                     ; preds = %51, %43
  %56 = phi %struct.CPUX86State* [ %53, %51 ], [ %44, %43 ]
  %57 = shl i64 %1, 32
  %58 = ashr exact i64 %57, 32
  %59 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %56, i64 0, i32 5
  store i64 %58, i64* %59, align 16
  %60 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %56, i64 0, i32 11, i64 1, i32 0
  store i32 %0, i32* %60, align 4
  %61 = shl i32 %0, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %56, i64 0, i32 11, i64 1, i32 1
  store i64 %62, i64* %63, align 4
  ret void
}

; Function Attrs: uwtable
define void @helper_lcall_protected(i32, i64, i32, i32) local_unnamed_addr #2 {
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 5
  %7 = load i64, i64* %6, align 16
  %8 = sext i32 %3 to i64
  %9 = add i64 %7, %8
  %10 = and i32 %0, 65532
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %4
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:13:                                     ; preds = %4
  %14 = and i32 %0, 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 12
  %17 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 14
  %18 = select i1 %15, %struct.SegmentCache* %17, %struct.SegmentCache* %16
  %19 = or i32 %0, 7
  %20 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %18, i64 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %13
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:24:                                     ; preds = %13
  %25 = and i32 %0, -8
  %26 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %18, i64 0, i32 1
  %27 = load i64, i64* %26, align 4
  %28 = sext i32 %25 to i64
  %29 = add i64 %27, %28
  %30 = tail call fastcc i32 @ldl_kernel(i64 %29)
  %31 = add i64 %29, 4
  %32 = tail call fastcc i32 @ldl_kernel(i64 %31)
  %33 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = and i32 %32, 4096
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %282, label %39

; <label>:39:                                     ; preds = %24
  %40 = and i32 %32, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:43:                                     ; preds = %39
  %44 = lshr i32 %32, 13
  %45 = and i32 %44, 3
  %46 = and i32 %32, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %43
  %49 = icmp ugt i32 %45, %36
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %48
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:51:                                     ; preds = %43
  %52 = and i32 %0, 3
  %53 = icmp ugt i32 %52, %36
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %51
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:55:                                     ; preds = %51
  %56 = icmp eq i32 %45, %36
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %55
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:58:                                     ; preds = %55, %48
  %59 = trunc i32 %32 to i16
  %60 = icmp slt i16 %59, 0
  br i1 %60, label %62, label %61

; <label>:61:                                     ; preds = %58
  tail call fastcc void @raise_exception_err(i32 11, i32 %10) #13
  unreachable

; <label>:62:                                     ; preds = %58
  %63 = icmp eq i32 %2, 2
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 0, i64 4
  %65 = load i64, i64* %64, align 16
  br i1 %63, label %66, label %150

; <label>:66:                                     ; preds = %62
  %67 = add i64 %65, -8
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 1, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  tail call fastcc void @stq_kernel(i64 %67, i64 %70)
  %71 = add i64 %65, -16
  tail call fastcc void @stq_kernel(i64 %71, i64 %9)
  %72 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %73 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 0, i64 4
  store i64 %71, i64* %73, align 16
  %74 = or i32 %36, %10
  %75 = lshr i32 %30, 16
  %76 = shl i32 %32, 16
  %77 = and i32 %76, 16711680
  %78 = and i32 %32, -16777216
  %79 = or i32 %78, %75
  %80 = or i32 %79, %77
  %81 = zext i32 %80 to i64
  %82 = and i32 %30, 65535
  %83 = and i32 %32, 983040
  %84 = or i32 %83, %82
  %85 = and i32 %32, 8388608
  %86 = icmp eq i32 %85, 0
  %87 = shl nuw i32 %84, 12
  %88 = or i32 %87, 4095
  %89 = select i1 %86, i32 %84, i32 %88
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 1, i32 0
  store i32 %74, i32* %90, align 4
  %91 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 1, i32 1
  store i64 %81, i64* %91, align 4
  %92 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 1, i32 2
  store i32 %89, i32* %92, align 4
  %93 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 1, i32 3
  store i32 %32, i32* %93, align 4
  %94 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 16384
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %32, 2097152
  %99 = icmp eq i32 %98, 0
  %100 = or i1 %99, %97
  br i1 %100, label %104, label %101

; <label>:101:                                    ; preds = %66
  %102 = and i32 %95, -32881
  %103 = or i32 %102, 32816
  br label %109

; <label>:104:                                    ; preds = %66
  %105 = lshr i32 %32, 18
  %106 = and i32 %105, 16
  %107 = and i32 %95, -32785
  %108 = or i32 %107, %106
  br label %109

; <label>:109:                                    ; preds = %104, %101
  %110 = phi i32 [ %103, %101 ], [ %108, %104 ]
  store i32 %110, i32* %94, align 4
  %111 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 2, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = lshr i32 %112, 17
  %114 = and i32 %113, 32
  %115 = trunc i32 %110 to i16
  %116 = icmp slt i16 %115, 0
  br i1 %116, label %145, label %117

; <label>:117:                                    ; preds = %109
  %118 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 16, i64 0
  %119 = load i64, i64* %118, align 4
  %120 = and i64 %119, 1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %130, label %122

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 7
  %124 = load i64, i64* %123, align 4
  %125 = and i64 %124, 131072
  %126 = icmp ne i64 %125, 0
  %127 = and i32 %110, 16
  %128 = icmp eq i32 %127, 0
  %129 = or i1 %128, %126
  br i1 %129, label %130, label %132

; <label>:130:                                    ; preds = %122, %117
  %131 = or i32 %114, 64
  br label %145

; <label>:132:                                    ; preds = %122
  %133 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 3, i32 1
  %134 = load i64, i64* %133, align 4
  %135 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 0, i32 1
  %136 = load i64, i64* %135, align 4
  %137 = or i64 %136, %134
  %138 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 11, i64 2, i32 1
  %139 = load i64, i64* %138, align 4
  %140 = or i64 %137, %139
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = shl nuw nsw i32 %142, 6
  %144 = or i32 %143, %114
  br label %145

; <label>:145:                                    ; preds = %109, %130, %132
  %146 = phi i32 [ %114, %109 ], [ %131, %130 ], [ %144, %132 ]
  %147 = and i32 %110, -97
  %148 = or i32 %146, %147
  store i32 %148, i32* %94, align 4
  %149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 5
  store i64 %1, i64* %149, align 16
  br label %781

; <label>:150:                                    ; preds = %62
  %151 = trunc i64 %65 to i32
  %152 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 2, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = lshr i32 %153, 6
  %155 = and i32 %154, 65536
  %156 = xor i32 %155, 65536
  %157 = add nsw i32 %156, -1
  %158 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 2, i32 1
  %159 = load i64, i64* %158, align 4
  %160 = icmp eq i32 %2, 0
  %161 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 11, i64 1, i32 0
  %162 = load i32, i32* %161, align 4
  br i1 %160, label %175, label %163

; <label>:163:                                    ; preds = %150
  %164 = add i32 %151, -4
  %165 = and i32 %157, %164
  %166 = zext i32 %165 to i64
  %167 = add i64 %166, %159
  %168 = and i64 %167, 4294967295
  tail call fastcc void @stl_kernel(i64 %168, i32 %162)
  %169 = add i32 %151, -8
  %170 = and i32 %157, %169
  %171 = zext i32 %170 to i64
  %172 = add i64 %171, %159
  %173 = and i64 %172, 4294967295
  %174 = trunc i64 %9 to i32
  tail call fastcc void @stl_kernel(i64 %173, i32 %174)
  br label %185

; <label>:175:                                    ; preds = %150
  %176 = add i32 %151, -2
  %177 = and i32 %157, %176
  %178 = zext i32 %177 to i64
  %179 = add i64 %178, %159
  tail call fastcc void @stw_kernel(i64 %179, i32 %162)
  %180 = add i32 %151, -4
  %181 = and i32 %157, %180
  %182 = zext i32 %181 to i64
  %183 = add i64 %182, %159
  %184 = trunc i64 %9 to i32
  tail call fastcc void @stw_kernel(i64 %183, i32 %184)
  br label %185

; <label>:185:                                    ; preds = %175, %163
  %186 = phi i32 [ %180, %175 ], [ %169, %163 ]
  %187 = and i32 %30, 65535
  %188 = and i32 %32, 983040
  %189 = or i32 %188, %187
  %190 = and i32 %32, 8388608
  %191 = icmp eq i32 %190, 0
  %192 = shl nuw i32 %189, 12
  %193 = or i32 %192, 4095
  %194 = select i1 %191, i32 %189, i32 %193
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %195, %1
  br i1 %196, label %197, label %198

; <label>:197:                                    ; preds = %185
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:198:                                    ; preds = %185
  %199 = icmp eq i32 %157, 65535
  br i1 %199, label %200, label %208

; <label>:200:                                    ; preds = %198
  %201 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %202 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %201, i64 0, i32 0, i64 4
  %203 = load i64, i64* %202, align 16
  %204 = and i64 %203, -65536
  %205 = and i32 %186, 65535
  %206 = zext i32 %205 to i64
  %207 = or i64 %204, %206
  store i64 %207, i64* %202, align 16
  br label %212

; <label>:208:                                    ; preds = %198
  %209 = zext i32 %186 to i64
  %210 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %211 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %210, i64 0, i32 0, i64 4
  store i64 %209, i64* %211, align 16
  br label %212

; <label>:212:                                    ; preds = %208, %200
  %213 = phi %struct.CPUX86State* [ %210, %208 ], [ %201, %200 ]
  %214 = or i32 %36, %10
  %215 = lshr i32 %30, 16
  %216 = shl i32 %32, 16
  %217 = and i32 %216, 16711680
  %218 = and i32 %32, -16777216
  %219 = or i32 %218, %215
  %220 = or i32 %219, %217
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 1, i32 0
  store i32 %214, i32* %222, align 4
  %223 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 1, i32 1
  store i64 %221, i64* %223, align 4
  %224 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 1, i32 2
  store i32 %194, i32* %224, align 4
  %225 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 1, i32 3
  store i32 %32, i32* %225, align 4
  %226 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 16384
  %229 = icmp eq i32 %228, 0
  %230 = and i32 %32, 2097152
  %231 = icmp eq i32 %230, 0
  %232 = or i1 %231, %229
  br i1 %232, label %236, label %233

; <label>:233:                                    ; preds = %212
  %234 = and i32 %227, -32881
  %235 = or i32 %234, 32816
  br label %241

; <label>:236:                                    ; preds = %212
  %237 = lshr i32 %32, 18
  %238 = and i32 %237, 16
  %239 = and i32 %227, -32785
  %240 = or i32 %239, %238
  br label %241

; <label>:241:                                    ; preds = %236, %233
  %242 = phi i32 [ %235, %233 ], [ %240, %236 ]
  store i32 %242, i32* %226, align 4
  %243 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 2, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = lshr i32 %244, 17
  %246 = and i32 %245, 32
  %247 = trunc i32 %242 to i16
  %248 = icmp slt i16 %247, 0
  br i1 %248, label %277, label %249

; <label>:249:                                    ; preds = %241
  %250 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 16, i64 0
  %251 = load i64, i64* %250, align 4
  %252 = and i64 %251, 1
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %262, label %254

; <label>:254:                                    ; preds = %249
  %255 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 7
  %256 = load i64, i64* %255, align 4
  %257 = and i64 %256, 131072
  %258 = icmp ne i64 %257, 0
  %259 = and i32 %242, 16
  %260 = icmp eq i32 %259, 0
  %261 = or i1 %260, %258
  br i1 %261, label %262, label %264

; <label>:262:                                    ; preds = %254, %249
  %263 = or i32 %246, 64
  br label %277

; <label>:264:                                    ; preds = %254
  %265 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 3, i32 1
  %266 = load i64, i64* %265, align 4
  %267 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 0, i32 1
  %268 = load i64, i64* %267, align 4
  %269 = or i64 %268, %266
  %270 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 11, i64 2, i32 1
  %271 = load i64, i64* %270, align 4
  %272 = or i64 %269, %271
  %273 = icmp ne i64 %272, 0
  %274 = zext i1 %273 to i32
  %275 = shl nuw nsw i32 %274, 6
  %276 = or i32 %275, %246
  br label %277

; <label>:277:                                    ; preds = %241, %262, %264
  %278 = phi i32 [ %246, %241 ], [ %263, %262 ], [ %276, %264 ]
  %279 = and i32 %242, -97
  %280 = or i32 %278, %279
  store i32 %280, i32* %226, align 4
  %281 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 5
  store i64 %1, i64* %281, align 16
  br label %781

; <label>:282:                                    ; preds = %24
  %283 = lshr i32 %32, 8
  %284 = lshr i32 %32, 13
  %285 = and i32 %284, 3
  %286 = and i32 %0, 3
  %287 = trunc i32 %283 to i5
  switch i5 %287, label %297 [
    i5 1, label %288
    i5 9, label %288
    i5 5, label %288
    i5 4, label %298
    i5 12, label %298
  ]

; <label>:288:                                    ; preds = %282, %282, %282
  %289 = icmp ult i32 %285, %36
  %290 = icmp ult i32 %285, %286
  %291 = or i1 %290, %289
  br i1 %291, label %292, label %293

; <label>:292:                                    ; preds = %288
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:293:                                    ; preds = %288
  %294 = trunc i64 %9 to i32
  tail call fastcc void @switch_tss(i32 %0, i32 %30, i32 %32, i32 2, i32 %294)
  %295 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %296 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %295, i64 0, i32 1
  store i64 1, i64* %296, align 16
  br label %781

; <label>:297:                                    ; preds = %282
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:298:                                    ; preds = %282, %282
  %299 = lshr i32 %32, 11
  %300 = and i32 %299, 3
  %301 = icmp ult i32 %285, %36
  %302 = icmp ult i32 %285, %286
  %303 = or i1 %302, %301
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %298
  tail call fastcc void @raise_exception_err(i32 13, i32 %10) #13
  unreachable

; <label>:305:                                    ; preds = %298
  %306 = trunc i32 %32 to i16
  %307 = icmp slt i16 %306, 0
  br i1 %307, label %309, label %308

; <label>:308:                                    ; preds = %305
  tail call fastcc void @raise_exception_err(i32 11, i32 %10) #13
  unreachable

; <label>:309:                                    ; preds = %305
  %310 = lshr i32 %30, 16
  %311 = and i32 %32, -65536
  %312 = and i32 %30, 65535
  %313 = or i32 %311, %312
  %314 = and i32 %32, 31
  %315 = and i32 %310, 65532
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

; <label>:317:                                    ; preds = %309
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:318:                                    ; preds = %309
  %319 = and i32 %310, 4
  %320 = icmp eq i32 %319, 0
  %321 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 12
  %322 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %33, i64 0, i32 14
  %323 = select i1 %320, %struct.SegmentCache* %322, %struct.SegmentCache* %321
  %324 = or i32 %310, 7
  %325 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %323, i64 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp ugt i32 %324, %326
  br i1 %327, label %328, label %329

; <label>:328:                                    ; preds = %318
  tail call fastcc void @raise_exception_err(i32 13, i32 %315) #13
  unreachable

; <label>:329:                                    ; preds = %318
  %330 = and i32 %310, 65528
  %331 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %323, i64 0, i32 1
  %332 = load i64, i64* %331, align 4
  %333 = zext i32 %330 to i64
  %334 = add i64 %332, %333
  %335 = tail call fastcc i32 @ldl_kernel(i64 %334)
  %336 = add i64 %334, 4
  %337 = tail call fastcc i32 @ldl_kernel(i64 %336)
  %338 = and i32 %337, 6144
  %339 = icmp eq i32 %338, 6144
  br i1 %339, label %341, label %340

; <label>:340:                                    ; preds = %329
  tail call fastcc void @raise_exception_err(i32 13, i32 %315) #13
  unreachable

; <label>:341:                                    ; preds = %329
  %342 = lshr i32 %337, 13
  %343 = and i32 %342, 3
  %344 = icmp ugt i32 %343, %36
  br i1 %344, label %345, label %346

; <label>:345:                                    ; preds = %341
  tail call fastcc void @raise_exception_err(i32 13, i32 %315) #13
  unreachable

; <label>:346:                                    ; preds = %341
  %347 = trunc i32 %337 to i16
  %348 = icmp slt i16 %347, 0
  br i1 %348, label %350, label %349

; <label>:349:                                    ; preds = %346
  tail call fastcc void @raise_exception_err(i32 11, i32 %315) #13
  unreachable

; <label>:350:                                    ; preds = %346
  %351 = and i32 %337, 1024
  %352 = icmp eq i32 %351, 0
  %353 = icmp ult i32 %343, %36
  %354 = and i1 %352, %353
  %355 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %354, label %356, label %543

; <label>:356:                                    ; preds = %350
  %357 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 13, i32 3
  %358 = load i32, i32* %357, align 16
  %359 = trunc i32 %358 to i16
  %360 = icmp slt i16 %359, 0
  br i1 %360, label %362, label %361

; <label>:361:                                    ; preds = %356
  tail call void (%struct.CPUX86State*, i8*, ...) @cpu_abort(%struct.CPUX86State* nonnull %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)) #13
  unreachable

; <label>:362:                                    ; preds = %356
  %363 = lshr i32 %358, 11
  %364 = and i32 %363, 1
  %365 = shl nuw nsw i32 %343, 2
  %366 = or i32 %365, 2
  %367 = shl i32 %366, %364
  %368 = shl i32 4, %364
  %369 = add nsw i32 %368, -1
  %370 = add nsw i32 %369, %367
  %371 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 13, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = icmp ugt i32 %370, %372
  br i1 %373, label %374, label %378

; <label>:374:                                    ; preds = %362
  %375 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 13, i32 0
  %376 = load i32, i32* %375, align 16
  %377 = and i32 %376, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %377) #13
  unreachable

; <label>:378:                                    ; preds = %362
  %379 = icmp eq i32 %364, 0
  %380 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 13, i32 1
  %381 = load i64, i64* %380, align 4
  %382 = zext i32 %367 to i64
  %383 = add i64 %381, %382
  br i1 %379, label %384, label %392

; <label>:384:                                    ; preds = %378
  %385 = tail call fastcc i32 @lduw_kernel(i64 %383)
  %386 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %387 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %386, i64 0, i32 13, i32 1
  %388 = load i64, i64* %387, align 4
  %389 = add nuw nsw i64 %382, 2
  %390 = add i64 %389, %388
  %391 = tail call fastcc i32 @lduw_kernel(i64 %390)
  br label %400

; <label>:392:                                    ; preds = %378
  %393 = tail call fastcc i32 @ldl_kernel(i64 %383)
  %394 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %395 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %394, i64 0, i32 13, i32 1
  %396 = load i64, i64* %395, align 4
  %397 = add nuw nsw i64 %382, 4
  %398 = add i64 %397, %396
  %399 = tail call fastcc i32 @lduw_kernel(i64 %398)
  br label %400

; <label>:400:                                    ; preds = %384, %392
  %401 = phi i32 [ %385, %384 ], [ %393, %392 ]
  %402 = phi i32 [ %391, %384 ], [ %399, %392 ]
  %403 = and i32 %402, 65532
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

; <label>:405:                                    ; preds = %400
  tail call fastcc void @raise_exception_err(i32 10, i32 0) #13
  unreachable

; <label>:406:                                    ; preds = %400
  %407 = and i32 %402, 3
  %408 = icmp eq i32 %407, %343
  br i1 %408, label %410, label %409

; <label>:409:                                    ; preds = %406
  tail call fastcc void @raise_exception_err(i32 10, i32 %403) #13
  unreachable

; <label>:410:                                    ; preds = %406
  %411 = and i32 %402, 4
  %412 = icmp eq i32 %411, 0
  %413 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %414 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %413, i64 0, i32 12
  %415 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %413, i64 0, i32 14
  %416 = select i1 %412, %struct.SegmentCache* %415, %struct.SegmentCache* %414
  %417 = or i32 %402, 7
  %418 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %416, i64 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = icmp ugt i32 %417, %419
  br i1 %420, label %421, label %422

; <label>:421:                                    ; preds = %410
  tail call fastcc void @raise_exception_err(i32 10, i32 %403) #13
  unreachable

; <label>:422:                                    ; preds = %410
  %423 = and i32 %402, -8
  %424 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %416, i64 0, i32 1
  %425 = load i64, i64* %424, align 4
  %426 = sext i32 %423 to i64
  %427 = add i64 %425, %426
  %428 = tail call fastcc i32 @ldl_kernel(i64 %427)
  %429 = add i64 %427, 4
  %430 = tail call fastcc i32 @ldl_kernel(i64 %429)
  %431 = lshr i32 %430, 13
  %432 = and i32 %431, 3
  %433 = icmp eq i32 %432, %343
  br i1 %433, label %435, label %434

; <label>:434:                                    ; preds = %422
  tail call fastcc void @raise_exception_err(i32 10, i32 %403) #13
  unreachable

; <label>:435:                                    ; preds = %422
  %436 = and i32 %430, 6656
  %437 = icmp eq i32 %436, 4608
  br i1 %437, label %439, label %438

; <label>:438:                                    ; preds = %435
  tail call fastcc void @raise_exception_err(i32 10, i32 %403) #13
  unreachable

; <label>:439:                                    ; preds = %435
  %440 = trunc i32 %430 to i16
  %441 = icmp slt i16 %440, 0
  br i1 %441, label %443, label %442

; <label>:442:                                    ; preds = %439
  tail call fastcc void @raise_exception_err(i32 10, i32 %403) #13
  unreachable

; <label>:443:                                    ; preds = %439
  %444 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %445 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %444, i64 0, i32 11, i64 2, i32 3
  %446 = load i32, i32* %445, align 4
  %447 = lshr i32 %446, 6
  %448 = and i32 %447, 65536
  %449 = xor i32 %448, 65536
  %450 = add nsw i32 %449, -1
  %451 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %444, i64 0, i32 11, i64 2, i32 1
  %452 = load i64, i64* %451, align 4
  %453 = lshr i32 %430, 6
  %454 = and i32 %453, 65536
  %455 = xor i32 %454, 65536
  %456 = add nsw i32 %455, -1
  %457 = lshr i32 %428, 16
  %458 = shl i32 %430, 16
  %459 = and i32 %458, 16711680
  %460 = and i32 %430, -16777216
  %461 = or i32 %460, %457
  %462 = or i32 %461, %459
  %463 = zext i32 %462 to i64
  %464 = icmp eq i32 %300, 0
  br i1 %464, label %504, label %465

; <label>:465:                                    ; preds = %443
  %466 = add i32 %401, -4
  %467 = and i32 %456, %466
  %468 = add i32 %467, %462
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %444, i64 0, i32 11, i64 2, i32 0
  %471 = load i32, i32* %470, align 4
  tail call fastcc void @stl_kernel(i64 %469, i32 %471)
  %472 = add i32 %401, -8
  %473 = and i32 %456, %472
  %474 = add i32 %473, %462
  %475 = zext i32 %474 to i64
  %476 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %477 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %476, i64 0, i32 0, i64 4
  %478 = load i64, i64* %477, align 16
  %479 = trunc i64 %478 to i32
  tail call fastcc void @stl_kernel(i64 %475, i32 %479)
  %480 = icmp eq i32 %314, 0
  br i1 %480, label %564, label %481

; <label>:481:                                    ; preds = %465
  %482 = zext i32 %450 to i64
  %483 = zext i32 %32 to i64
  %484 = and i64 %483, 31
  br label %485

; <label>:485:                                    ; preds = %481, %485
  %486 = phi i64 [ %484, %481 ], [ %503, %485 ]
  %487 = phi i32 [ %472, %481 ], [ %498, %485 ]
  %488 = trunc i64 %486 to i32
  %489 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %490 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %489, i64 0, i32 0, i64 4
  %491 = load i64, i64* %490, align 16
  %492 = shl i64 %486, 2
  %493 = add i64 %492, 4294967292
  %494 = add i64 %491, %493
  %495 = and i64 %494, %482
  %496 = add i64 %495, %452
  %497 = tail call fastcc i32 @ldl_kernel(i64 %496)
  %498 = add i32 %487, -4
  %499 = and i32 %498, %456
  %500 = add i32 %499, %462
  %501 = zext i32 %500 to i64
  tail call fastcc void @stl_kernel(i64 %501, i32 %497)
  %502 = icmp sgt i32 %488, 1
  %503 = add nsw i64 %486, -1
  br i1 %502, label %485, label %555

; <label>:504:                                    ; preds = %443
  %505 = add i32 %401, -2
  %506 = and i32 %456, %505
  %507 = zext i32 %506 to i64
  %508 = add nuw nsw i64 %507, %463
  %509 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %444, i64 0, i32 11, i64 2, i32 0
  %510 = load i32, i32* %509, align 4
  tail call fastcc void @stw_kernel(i64 %508, i32 %510)
  %511 = add i32 %401, -4
  %512 = and i32 %456, %511
  %513 = zext i32 %512 to i64
  %514 = add nuw nsw i64 %513, %463
  %515 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %516 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %515, i64 0, i32 0, i64 4
  %517 = load i64, i64* %516, align 16
  %518 = trunc i64 %517 to i32
  tail call fastcc void @stw_kernel(i64 %514, i32 %518)
  %519 = icmp eq i32 %314, 0
  br i1 %519, label %586, label %520

; <label>:520:                                    ; preds = %504
  %521 = zext i32 %450 to i64
  %522 = zext i32 %32 to i64
  %523 = and i64 %522, 31
  br label %524

; <label>:524:                                    ; preds = %520, %524
  %525 = phi i64 [ %523, %520 ], [ %542, %524 ]
  %526 = phi i32 [ %511, %520 ], [ %537, %524 ]
  %527 = trunc i64 %525 to i32
  %528 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %529 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %528, i64 0, i32 0, i64 4
  %530 = load i64, i64* %529, align 16
  %531 = shl i64 %525, 1
  %532 = add i64 %531, 4294967294
  %533 = add i64 %530, %532
  %534 = and i64 %533, %521
  %535 = add i64 %534, %452
  %536 = tail call fastcc i32 @lduw_kernel(i64 %535)
  %537 = add i32 %526, -2
  %538 = and i32 %537, %456
  %539 = zext i32 %538 to i64
  %540 = add nuw nsw i64 %539, %463
  tail call fastcc void @stw_kernel(i64 %540, i32 %536)
  %541 = icmp sgt i32 %527, 1
  %542 = add nsw i64 %525, -1
  br i1 %541, label %524, label %555

; <label>:543:                                    ; preds = %350
  %544 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 0, i64 4
  %545 = load i64, i64* %544, align 16
  %546 = trunc i64 %545 to i32
  %547 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 11, i64 2, i32 3
  %548 = load i32, i32* %547, align 4
  %549 = lshr i32 %548, 6
  %550 = and i32 %549, 65536
  %551 = xor i32 %550, 65536
  %552 = add nsw i32 %551, -1
  %553 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %355, i64 0, i32 11, i64 2, i32 1
  %554 = load i64, i64* %553, align 4
  br label %555

; <label>:555:                                    ; preds = %485, %524, %543
  %556 = phi i32 [ 0, %543 ], [ %402, %524 ], [ %402, %485 ]
  %557 = phi i32 [ 0, %543 ], [ %428, %524 ], [ %428, %485 ]
  %558 = phi i32 [ 0, %543 ], [ %430, %524 ], [ %430, %485 ]
  %559 = phi i32 [ %546, %543 ], [ %537, %524 ], [ %498, %485 ]
  %560 = phi i32 [ %552, %543 ], [ %456, %524 ], [ %456, %485 ]
  %561 = phi i64 [ %554, %543 ], [ %463, %524 ], [ %463, %485 ]
  %562 = phi i32 [ 0, %543 ], [ 1, %524 ], [ 1, %485 ]
  %563 = icmp eq i32 %300, 0
  br i1 %563, label %586, label %564

; <label>:564:                                    ; preds = %465, %555
  %565 = phi i32 [ %562, %555 ], [ 1, %465 ]
  %566 = phi i64 [ %561, %555 ], [ %463, %465 ]
  %567 = phi i32 [ %560, %555 ], [ %456, %465 ]
  %568 = phi i32 [ %559, %555 ], [ %472, %465 ]
  %569 = phi i32 [ %558, %555 ], [ %430, %465 ]
  %570 = phi i32 [ %557, %555 ], [ %428, %465 ]
  %571 = phi i32 [ %556, %555 ], [ %402, %465 ]
  %572 = add i32 %568, -4
  %573 = and i32 %572, %567
  %574 = zext i32 %573 to i64
  %575 = add i64 %574, %566
  %576 = and i64 %575, 4294967295
  %577 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %578 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %577, i64 0, i32 11, i64 1, i32 0
  %579 = load i32, i32* %578, align 4
  tail call fastcc void @stl_kernel(i64 %576, i32 %579)
  %580 = add i32 %568, -8
  %581 = and i32 %580, %567
  %582 = zext i32 %581 to i64
  %583 = add i64 %582, %566
  %584 = and i64 %583, 4294967295
  %585 = trunc i64 %9 to i32
  tail call fastcc void @stl_kernel(i64 %584, i32 %585)
  br label %606

; <label>:586:                                    ; preds = %504, %555
  %587 = phi i32 [ %562, %555 ], [ 1, %504 ]
  %588 = phi i64 [ %561, %555 ], [ %463, %504 ]
  %589 = phi i32 [ %560, %555 ], [ %456, %504 ]
  %590 = phi i32 [ %559, %555 ], [ %511, %504 ]
  %591 = phi i32 [ %558, %555 ], [ %430, %504 ]
  %592 = phi i32 [ %557, %555 ], [ %428, %504 ]
  %593 = phi i32 [ %556, %555 ], [ %402, %504 ]
  %594 = add i32 %590, -2
  %595 = and i32 %594, %589
  %596 = zext i32 %595 to i64
  %597 = add i64 %596, %588
  %598 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %599 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %598, i64 0, i32 11, i64 1, i32 0
  %600 = load i32, i32* %599, align 4
  tail call fastcc void @stw_kernel(i64 %597, i32 %600)
  %601 = add i32 %590, -4
  %602 = and i32 %601, %589
  %603 = zext i32 %602 to i64
  %604 = add i64 %603, %588
  %605 = trunc i64 %9 to i32
  tail call fastcc void @stw_kernel(i64 %604, i32 %605)
  br label %606

; <label>:606:                                    ; preds = %586, %564
  %607 = phi i32 [ %587, %586 ], [ %565, %564 ]
  %608 = phi i64 [ %588, %586 ], [ %566, %564 ]
  %609 = phi i32 [ %589, %586 ], [ %567, %564 ]
  %610 = phi i32 [ %591, %586 ], [ %569, %564 ]
  %611 = phi i32 [ %592, %586 ], [ %570, %564 ]
  %612 = phi i32 [ %593, %586 ], [ %571, %564 ]
  %613 = phi i32 [ %601, %586 ], [ %580, %564 ]
  %614 = icmp eq i32 %607, 0
  br i1 %614, label %615, label %619

; <label>:615:                                    ; preds = %606
  %616 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %617 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %616, i64 0, i32 8
  %618 = load i32, i32* %617, align 4
  br label %671

; <label>:619:                                    ; preds = %606
  %620 = and i32 %612, -4
  %621 = or i32 %620, %343
  %622 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %623 = and i32 %611, 65535
  %624 = and i32 %610, 983040
  %625 = or i32 %624, %623
  %626 = and i32 %610, 8388608
  %627 = icmp eq i32 %626, 0
  %628 = shl nuw i32 %625, 12
  %629 = or i32 %628, 4095
  %630 = select i1 %627, i32 %625, i32 %629
  %631 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 11, i64 2, i32 0
  store i32 %621, i32* %631, align 4
  %632 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 11, i64 2, i32 1
  store i64 %608, i64* %632, align 4
  %633 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 11, i64 2, i32 2
  store i32 %630, i32* %633, align 4
  %634 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 11, i64 2, i32 3
  store i32 %610, i32* %634, align 4
  %635 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 8
  %636 = load i32, i32* %635, align 4
  %637 = lshr i32 %610, 17
  %638 = and i32 %637, 32
  %639 = trunc i32 %636 to i16
  %640 = icmp slt i16 %639, 0
  br i1 %640, label %667, label %641

; <label>:641:                                    ; preds = %619
  %642 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 16, i64 0
  %643 = load i64, i64* %642, align 4
  %644 = and i64 %643, 1
  %645 = icmp eq i64 %644, 0
  br i1 %645, label %654, label %646

; <label>:646:                                    ; preds = %641
  %647 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 7
  %648 = load i64, i64* %647, align 4
  %649 = and i64 %648, 131072
  %650 = icmp ne i64 %649, 0
  %651 = and i32 %636, 16
  %652 = icmp eq i32 %651, 0
  %653 = or i1 %652, %650
  br i1 %653, label %654, label %656

; <label>:654:                                    ; preds = %646, %641
  %655 = or i32 %638, 64
  br label %667

; <label>:656:                                    ; preds = %646
  %657 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 11, i64 3, i32 1
  %658 = load i64, i64* %657, align 4
  %659 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %622, i64 0, i32 11, i64 0, i32 1
  %660 = load i64, i64* %659, align 4
  %661 = or i64 %660, %658
  %662 = or i64 %661, %608
  %663 = icmp ne i64 %662, 0
  %664 = zext i1 %663 to i32
  %665 = shl nuw nsw i32 %664, 6
  %666 = or i32 %665, %638
  br label %667

; <label>:667:                                    ; preds = %619, %654, %656
  %668 = phi i32 [ %638, %619 ], [ %655, %654 ], [ %666, %656 ]
  %669 = and i32 %636, -97
  %670 = or i32 %668, %669
  store i32 %670, i32* %635, align 4
  br label %671

; <label>:671:                                    ; preds = %615, %667
  %672 = phi i32 [ %618, %615 ], [ %670, %667 ]
  %673 = phi %struct.CPUX86State* [ %616, %615 ], [ %622, %667 ]
  %674 = or i32 %343, %315
  %675 = lshr i32 %335, 16
  %676 = shl i32 %337, 16
  %677 = and i32 %676, 16711680
  %678 = and i32 %337, -16777216
  %679 = or i32 %678, %675
  %680 = or i32 %679, %677
  %681 = zext i32 %680 to i64
  %682 = and i32 %335, 65535
  %683 = and i32 %337, 983040
  %684 = or i32 %683, %682
  %685 = and i32 %337, 8388608
  %686 = icmp eq i32 %685, 0
  %687 = shl nuw i32 %684, 12
  %688 = or i32 %687, 4095
  %689 = select i1 %686, i32 %684, i32 %688
  %690 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 1, i32 0
  store i32 %674, i32* %690, align 4
  %691 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 1, i32 1
  store i64 %681, i64* %691, align 4
  %692 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 1, i32 2
  store i32 %689, i32* %692, align 4
  %693 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 1, i32 3
  store i32 %337, i32* %693, align 4
  %694 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 8
  %695 = and i32 %672, 16384
  %696 = icmp eq i32 %695, 0
  %697 = and i32 %337, 2097152
  %698 = icmp eq i32 %697, 0
  %699 = or i1 %698, %696
  br i1 %699, label %703, label %700

; <label>:700:                                    ; preds = %671
  %701 = and i32 %672, -32881
  %702 = or i32 %701, 32816
  br label %708

; <label>:703:                                    ; preds = %671
  %704 = lshr i32 %337, 18
  %705 = and i32 %704, 16
  %706 = and i32 %672, -32785
  %707 = or i32 %706, %705
  br label %708

; <label>:708:                                    ; preds = %703, %700
  %709 = phi i32 [ %702, %700 ], [ %707, %703 ]
  store i32 %709, i32* %694, align 4
  %710 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 2, i32 3
  %711 = load i32, i32* %710, align 4
  %712 = lshr i32 %711, 17
  %713 = and i32 %712, 32
  %714 = trunc i32 %709 to i16
  %715 = icmp slt i16 %714, 0
  br i1 %715, label %744, label %716

; <label>:716:                                    ; preds = %708
  %717 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 16, i64 0
  %718 = load i64, i64* %717, align 4
  %719 = and i64 %718, 1
  %720 = icmp eq i64 %719, 0
  br i1 %720, label %729, label %721

; <label>:721:                                    ; preds = %716
  %722 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 7
  %723 = load i64, i64* %722, align 4
  %724 = and i64 %723, 131072
  %725 = icmp ne i64 %724, 0
  %726 = and i32 %709, 16
  %727 = icmp eq i32 %726, 0
  %728 = or i1 %727, %725
  br i1 %728, label %729, label %731

; <label>:729:                                    ; preds = %721, %716
  %730 = or i32 %713, 64
  br label %744

; <label>:731:                                    ; preds = %721
  %732 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 3, i32 1
  %733 = load i64, i64* %732, align 4
  %734 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 0, i32 1
  %735 = load i64, i64* %734, align 4
  %736 = or i64 %735, %733
  %737 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %673, i64 0, i32 11, i64 2, i32 1
  %738 = load i64, i64* %737, align 4
  %739 = or i64 %736, %738
  %740 = icmp ne i64 %739, 0
  %741 = zext i1 %740 to i32
  %742 = shl nuw nsw i32 %741, 6
  %743 = or i32 %742, %713
  br label %744

; <label>:744:                                    ; preds = %708, %729, %731
  %745 = phi i32 [ %713, %708 ], [ %730, %729 ], [ %743, %731 ]
  %746 = and i32 %709, -97
  %747 = or i32 %745, %746
  store i32 %747, i32* %694, align 4
  %748 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %749 = load i32, i32* %748, align 4
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %755, label %751, !prof !2

; <label>:751:                                    ; preds = %744
  %752 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %753 = and i32 %747, 3
  tail call void %752(i32 %753, i32 %343)
  %754 = load i32, i32* %694, align 4
  br label %755

; <label>:755:                                    ; preds = %744, %751
  %756 = phi i32 [ %754, %751 ], [ %747, %744 ]
  %757 = and i32 %756, -4
  %758 = or i32 %757, %343
  store i32 %758, i32* %694, align 4
  %759 = icmp eq i32 %609, 65535
  br i1 %759, label %760, label %768

; <label>:760:                                    ; preds = %755
  %761 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %762 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %761, i64 0, i32 0, i64 4
  %763 = load i64, i64* %762, align 16
  %764 = and i64 %763, -65536
  %765 = and i32 %613, 65535
  %766 = zext i32 %765 to i64
  %767 = or i64 %764, %766
  store i64 %767, i64* %762, align 16
  br label %772

; <label>:768:                                    ; preds = %755
  %769 = zext i32 %613 to i64
  %770 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %771 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %770, i64 0, i32 0, i64 4
  store i64 %769, i64* %771, align 16
  br label %772

; <label>:772:                                    ; preds = %768, %760
  %773 = phi %struct.CPUX86State* [ %770, %768 ], [ %761, %760 ]
  %774 = zext i32 %313 to i64
  %775 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %773, i64 0, i32 5
  store i64 %774, i64* %775, align 16
  %776 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %777 = load i32, i32* %776, align 4
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %781, label %779, !prof !2

; <label>:779:                                    ; preds = %772
  %780 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %780(i32 %36, i32 %343)
  br label %781

; <label>:781:                                    ; preds = %277, %145, %779, %772, %293
  ret void
}

; Function Attrs: uwtable
define void @helper_iret_real(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 4
  %4 = load i64, i64* %3, align 16
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 11, i64 2, i32 1
  %6 = load i64, i64* %5, align 4
  %7 = icmp eq i32 %0, 1
  %8 = and i64 %4, 65535
  %9 = add i64 %6, %8
  br i1 %7, label %10, label %25

; <label>:10:                                     ; preds = %1
  %11 = and i64 %9, 4294967295
  %12 = tail call fastcc i32 @ldl_kernel(i64 %11)
  %13 = add i64 %4, 4
  %14 = and i64 %13, 65535
  %15 = add i64 %14, %6
  %16 = and i64 %15, 4294967295
  %17 = tail call fastcc i32 @ldl_kernel(i64 %16)
  %18 = add i64 %4, 8
  %19 = and i32 %17, 65535
  %20 = and i64 %18, 65535
  %21 = add i64 %20, %6
  %22 = and i64 %21, 4294967295
  %23 = tail call fastcc i32 @ldl_kernel(i64 %22)
  %24 = add i64 %4, 12
  br label %36

; <label>:25:                                     ; preds = %1
  %26 = tail call fastcc i32 @lduw_kernel(i64 %9)
  %27 = add i64 %4, 2
  %28 = and i64 %27, 65535
  %29 = add i64 %28, %6
  %30 = tail call fastcc i32 @lduw_kernel(i64 %29)
  %31 = add i64 %4, 4
  %32 = and i64 %31, 65535
  %33 = add i64 %32, %6
  %34 = tail call fastcc i32 @lduw_kernel(i64 %33)
  %35 = add i64 %4, 6
  br label %36

; <label>:36:                                     ; preds = %25, %10
  %37 = phi i32 [ %12, %10 ], [ %26, %25 ]
  %38 = phi i32 [ %23, %10 ], [ %34, %25 ]
  %39 = phi i32 [ %19, %10 ], [ %30, %25 ]
  %40 = phi i64 [ %24, %10 ], [ %35, %25 ]
  %41 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 0, i64 4
  %43 = load i64, i64* %42, align 16
  %44 = and i64 %43, 4294901760
  %45 = and i64 %40, 65535
  %46 = or i64 %44, %45
  store i64 %46, i64* %42, align 16
  %47 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 11, i64 1, i32 0
  store i32 %39, i32* %47, align 4
  %48 = shl i32 %39, 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 11, i64 1, i32 1
  store i64 %49, i64* %50, align 4
  %51 = zext i32 %37 to i64
  %52 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 5
  store i64 %51, i64* %52, align 16
  %53 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 7
  %54 = load i64, i64* %53, align 4
  %55 = and i64 %54, 131072
  %56 = icmp eq i64 %55, 0
  %57 = select i1 %56, i32 2454272, i32 2441984
  %58 = icmp eq i32 %0, 0
  %59 = and i32 %57, 29440
  %60 = select i1 %58, i32 %59, i32 %57
  %61 = and i32 %38, 2261
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 2
  store i64 %62, i64* %63, align 8
  %64 = lshr i32 %38, 9
  %65 = and i32 %64, 2
  %66 = xor i32 %65, 2
  %67 = add nsw i32 %66, -1
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 6
  store i32 %67, i32* %68, align 8
  %69 = xor i32 %60, -1
  %70 = sext i32 %69 to i64
  %71 = and i64 %70, %54
  %72 = and i32 %60, %38
  %73 = zext i32 %72 to i64
  %74 = or i64 %71, %73
  store i64 %74, i64* %53, align 4
  %75 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %41, i64 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, -5
  store i32 %77, i32* %75, align 8
  ret void
}

; Function Attrs: uwtable
define void @helper_iret_protected(i32, i32) local_unnamed_addr #2 {
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 7
  %5 = load i64, i64* %4, align 4
  %6 = and i64 %5, 16384
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 8
  %9 = load i32, i32* %8, align 4
  br i1 %7, label %44, label %10

; <label>:10:                                     ; preds = %2
  %11 = and i32 %9, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %10
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 13, i32 1
  %16 = load i64, i64* %15, align 4
  %17 = tail call fastcc i32 @lduw_kernel(i64 %16)
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %14
  %21 = and i32 %17, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %21) #13
  unreachable

; <label>:22:                                     ; preds = %14
  %23 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %24 = or i32 %17, 7
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 14, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %22
  %29 = and i32 %17, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %29) #13
  unreachable

; <label>:30:                                     ; preds = %22
  %31 = and i32 %17, -8
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 14, i32 1
  %33 = load i64, i64* %32, align 4
  %34 = sext i32 %31 to i64
  %35 = add i64 %33, %34
  %36 = tail call fastcc i32 @ldl_kernel(i64 %35)
  %37 = add i64 %35, 4
  %38 = tail call fastcc i32 @ldl_kernel(i64 %37)
  %39 = and i32 %38, 5888
  %40 = icmp eq i32 %39, 768
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %30
  %42 = and i32 %17, 65532
  tail call fastcc void @raise_exception_err(i32 10, i32 %42) #13
  unreachable

; <label>:43:                                     ; preds = %30
  tail call fastcc void @switch_tss(i32 %17, i32 %36, i32 %38, i32 1, i32 %1)
  br label %1042

; <label>:44:                                     ; preds = %2
  %45 = and i32 %9, 3
  %46 = icmp eq i32 %0, 2
  br i1 %46, label %47, label %61

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 0, i64 4
  %49 = load i64, i64* %48, align 16
  %50 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 11, i64 2, i32 1
  %51 = load i64, i64* %50, align 4
  %52 = tail call fastcc i64 @ldq_kernel(i64 %49)
  %53 = add i64 %49, 8
  %54 = tail call fastcc i64 @ldq_kernel(i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = add i64 %49, 16
  %57 = and i32 %55, 65535
  %58 = tail call fastcc i64 @ldq_kernel(i64 %56)
  %59 = trunc i64 %58 to i32
  %60 = add i64 %49, 24
  br label %106

; <label>:61:                                     ; preds = %44
  %62 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 11, i64 2, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = lshr i32 %63, 6
  %65 = and i32 %64, 65536
  %66 = xor i32 %65, 65536
  %67 = add nsw i32 %66, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 0, i64 4
  %70 = load i64, i64* %69, align 16
  %71 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 11, i64 2, i32 1
  %72 = load i64, i64* %71, align 4
  %73 = icmp eq i32 %0, 1
  %74 = and i64 %68, %70
  %75 = add i64 %74, %72
  br i1 %73, label %76, label %94

; <label>:76:                                     ; preds = %61
  %77 = and i64 %75, 4294967295
  %78 = tail call fastcc i32 @ldl_kernel(i64 %77)
  %79 = zext i32 %78 to i64
  %80 = add i64 %70, 4
  %81 = and i64 %68, %80
  %82 = add i64 %81, %72
  %83 = and i64 %82, 4294967295
  %84 = tail call fastcc i32 @ldl_kernel(i64 %83)
  %85 = add i64 %70, 8
  %86 = and i32 %84, 65535
  %87 = and i64 %68, %85
  %88 = add i64 %87, %72
  %89 = and i64 %88, 4294967295
  %90 = tail call fastcc i32 @ldl_kernel(i64 %89)
  %91 = add i64 %70, 12
  %92 = and i32 %90, 131072
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %792

; <label>:94:                                     ; preds = %61
  %95 = tail call fastcc i32 @lduw_kernel(i64 %75)
  %96 = zext i32 %95 to i64
  %97 = add i64 %70, 2
  %98 = and i64 %68, %97
  %99 = add i64 %98, %72
  %100 = tail call fastcc i32 @lduw_kernel(i64 %99)
  %101 = add i64 %70, 4
  %102 = and i64 %68, %101
  %103 = add i64 %102, %72
  %104 = tail call fastcc i32 @lduw_kernel(i64 %103)
  %105 = add i64 %70, 6
  br label %106

; <label>:106:                                    ; preds = %94, %76, %47
  %107 = phi i64 [ %51, %47 ], [ %72, %76 ], [ %72, %94 ]
  %108 = phi i64 [ -1, %47 ], [ %68, %76 ], [ %68, %94 ]
  %109 = phi i32 [ %59, %47 ], [ %90, %76 ], [ %104, %94 ]
  %110 = phi i32 [ %57, %47 ], [ %86, %76 ], [ %100, %94 ]
  %111 = phi i64 [ %60, %47 ], [ %91, %76 ], [ %105, %94 ]
  %112 = phi i64 [ %52, %47 ], [ %79, %76 ], [ %96, %94 ]
  %113 = and i32 %110, 65532
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %106
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:116:                                    ; preds = %106
  %117 = and i32 %110, 4
  %118 = icmp eq i32 %117, 0
  %119 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %120 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %119, i64 0, i32 12
  %121 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %119, i64 0, i32 14
  %122 = select i1 %118, %struct.SegmentCache* %121, %struct.SegmentCache* %120
  %123 = or i32 %110, 7
  %124 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %122, i64 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ugt i32 %123, %125
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %116
  tail call fastcc void @raise_exception_err(i32 13, i32 %113) #13
  unreachable

; <label>:128:                                    ; preds = %116
  %129 = and i32 %110, -8
  %130 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %122, i64 0, i32 1
  %131 = load i64, i64* %130, align 4
  %132 = sext i32 %129 to i64
  %133 = add i64 %131, %132
  %134 = tail call fastcc i32 @ldl_kernel(i64 %133)
  %135 = add i64 %133, 4
  %136 = tail call fastcc i32 @ldl_kernel(i64 %135)
  %137 = and i32 %136, 6144
  %138 = icmp eq i32 %137, 6144
  br i1 %138, label %140, label %139

; <label>:139:                                    ; preds = %128
  tail call fastcc void @raise_exception_err(i32 13, i32 %113) #13
  unreachable

; <label>:140:                                    ; preds = %128
  %141 = and i32 %110, 3
  %142 = icmp ult i32 %141, %45
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %140
  tail call fastcc void @raise_exception_err(i32 13, i32 %113) #13
  unreachable

; <label>:144:                                    ; preds = %140
  %145 = lshr i32 %136, 13
  %146 = and i32 %145, 3
  %147 = and i32 %136, 1024
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

; <label>:149:                                    ; preds = %144
  %150 = icmp ugt i32 %146, %141
  br i1 %150, label %151, label %155

; <label>:151:                                    ; preds = %149
  tail call fastcc void @raise_exception_err(i32 13, i32 %113) #13
  unreachable

; <label>:152:                                    ; preds = %144
  %153 = icmp eq i32 %146, %141
  br i1 %153, label %155, label %154

; <label>:154:                                    ; preds = %152
  tail call fastcc void @raise_exception_err(i32 13, i32 %113) #13
  unreachable

; <label>:155:                                    ; preds = %152, %149
  %156 = trunc i32 %136 to i16
  %157 = icmp slt i16 %156, 0
  br i1 %157, label %159, label %158

; <label>:158:                                    ; preds = %155
  tail call fastcc void @raise_exception_err(i32 11, i32 %113) #13
  unreachable

; <label>:159:                                    ; preds = %155
  %160 = icmp eq i32 %141, %45
  br i1 %160, label %161, label %240

; <label>:161:                                    ; preds = %159
  %162 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %163 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = trunc i32 %164 to i16
  %166 = icmp sgt i16 %165, -1
  br i1 %166, label %167, label %240

; <label>:167:                                    ; preds = %161
  %168 = lshr i32 %134, 16
  %169 = shl i32 %136, 16
  %170 = and i32 %169, 16711680
  %171 = and i32 %136, -16777216
  %172 = or i32 %171, %168
  %173 = or i32 %172, %170
  %174 = zext i32 %173 to i64
  %175 = and i32 %134, 65535
  %176 = and i32 %136, 983040
  %177 = or i32 %176, %175
  %178 = and i32 %136, 8388608
  %179 = icmp eq i32 %178, 0
  %180 = shl nuw i32 %177, 12
  %181 = or i32 %180, 4095
  %182 = select i1 %179, i32 %177, i32 %181
  %183 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 1, i32 0
  store i32 %110, i32* %183, align 4
  %184 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 1, i32 1
  store i64 %174, i64* %184, align 4
  %185 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 1, i32 2
  store i32 %182, i32* %185, align 4
  %186 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 1, i32 3
  store i32 %136, i32* %186, align 4
  %187 = and i32 %164, 16384
  %188 = icmp eq i32 %187, 0
  %189 = and i32 %136, 2097152
  %190 = icmp eq i32 %189, 0
  %191 = or i1 %190, %188
  br i1 %191, label %195, label %192

; <label>:192:                                    ; preds = %167
  %193 = and i32 %164, -32881
  %194 = or i32 %193, 32816
  br label %200

; <label>:195:                                    ; preds = %167
  %196 = lshr i32 %136, 18
  %197 = and i32 %196, 16
  %198 = and i32 %164, -32785
  %199 = or i32 %198, %197
  br label %200

; <label>:200:                                    ; preds = %195, %192
  %201 = phi i32 [ %194, %192 ], [ %199, %195 ]
  store i32 %201, i32* %163, align 4
  %202 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 2, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = lshr i32 %203, 17
  %205 = and i32 %204, 32
  %206 = trunc i32 %201 to i16
  %207 = icmp slt i16 %206, 0
  br i1 %207, label %236, label %208

; <label>:208:                                    ; preds = %200
  %209 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 16, i64 0
  %210 = load i64, i64* %209, align 4
  %211 = and i64 %210, 1
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %221, label %213

; <label>:213:                                    ; preds = %208
  %214 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 7
  %215 = load i64, i64* %214, align 4
  %216 = and i64 %215, 131072
  %217 = icmp ne i64 %216, 0
  %218 = and i32 %201, 16
  %219 = icmp eq i32 %218, 0
  %220 = or i1 %219, %217
  br i1 %220, label %221, label %223

; <label>:221:                                    ; preds = %213, %208
  %222 = or i32 %205, 64
  br label %236

; <label>:223:                                    ; preds = %213
  %224 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 3, i32 1
  %225 = load i64, i64* %224, align 4
  %226 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 0, i32 1
  %227 = load i64, i64* %226, align 4
  %228 = or i64 %227, %225
  %229 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %162, i64 0, i32 11, i64 2, i32 1
  %230 = load i64, i64* %229, align 4
  %231 = or i64 %228, %230
  %232 = icmp ne i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = shl nuw nsw i32 %233, 6
  %235 = or i32 %234, %205
  br label %236

; <label>:236:                                    ; preds = %223, %221, %200
  %237 = phi i32 [ %205, %200 ], [ %222, %221 ], [ %235, %223 ]
  %238 = and i32 %201, -97
  %239 = or i32 %237, %238
  store i32 %239, i32* %163, align 4
  br label %742

; <label>:240:                                    ; preds = %161, %159
  br i1 %46, label %241, label %247

; <label>:241:                                    ; preds = %240
  %242 = tail call fastcc i64 @ldq_kernel(i64 %111)
  %243 = add i64 %111, 8
  %244 = tail call fastcc i64 @ldq_kernel(i64 %243)
  %245 = trunc i64 %244 to i32
  %246 = and i32 %245, 65535
  br label %268

; <label>:247:                                    ; preds = %240
  %248 = icmp eq i32 %0, 1
  %249 = and i64 %111, %108
  %250 = add i64 %249, %107
  br i1 %248, label %251, label %261

; <label>:251:                                    ; preds = %247
  %252 = and i64 %250, 4294967295
  %253 = tail call fastcc i32 @ldl_kernel(i64 %252)
  %254 = zext i32 %253 to i64
  %255 = add i64 %111, 4
  %256 = and i64 %255, %108
  %257 = add i64 %256, %107
  %258 = and i64 %257, 4294967295
  %259 = tail call fastcc i32 @ldl_kernel(i64 %258)
  %260 = and i32 %259, 65535
  br label %268

; <label>:261:                                    ; preds = %247
  %262 = tail call fastcc i32 @lduw_kernel(i64 %250)
  %263 = zext i32 %262 to i64
  %264 = add i64 %111, 2
  %265 = and i64 %264, %108
  %266 = add i64 %265, %107
  %267 = tail call fastcc i32 @lduw_kernel(i64 %266)
  br label %268

; <label>:268:                                    ; preds = %261, %251, %241
  %269 = phi i32 [ %246, %241 ], [ %260, %251 ], [ %267, %261 ]
  %270 = phi i64 [ %242, %241 ], [ %254, %251 ], [ %263, %261 ]
  %271 = and i32 %269, 65532
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %318

; <label>:273:                                    ; preds = %268
  %274 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %275 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 8
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 16384
  %278 = icmp ne i32 %277, 0
  %279 = icmp ne i32 %141, 3
  %280 = and i1 %279, %278
  br i1 %280, label %281, label %317

; <label>:281:                                    ; preds = %273
  %282 = shl nuw nsw i32 %141, 13
  %283 = or i32 %282, 12620544
  %284 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 11, i64 2, i32 0
  store i32 %269, i32* %284, align 4
  %285 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %285, align 4
  %286 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %286, align 4
  %287 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 11, i64 2, i32 3
  store i32 %283, i32* %287, align 4
  %288 = trunc i32 %276 to i16
  %289 = icmp slt i16 %288, 0
  br i1 %289, label %313, label %290

; <label>:290:                                    ; preds = %281
  %291 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 16, i64 0
  %292 = load i64, i64* %291, align 4
  %293 = and i64 %292, 1
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %313, label %295

; <label>:295:                                    ; preds = %290
  %296 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 7
  %297 = load i64, i64* %296, align 4
  %298 = and i64 %297, 131072
  %299 = icmp ne i64 %298, 0
  %300 = and i32 %276, 16
  %301 = icmp eq i32 %300, 0
  %302 = or i1 %301, %299
  br i1 %302, label %313, label %303

; <label>:303:                                    ; preds = %295
  %304 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 11, i64 3, i32 1
  %305 = load i64, i64* %304, align 4
  %306 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 11, i64 0, i32 1
  %307 = load i64, i64* %306, align 4
  %308 = or i64 %307, %305
  %309 = icmp ne i64 %308, 0
  %310 = zext i1 %309 to i32
  %311 = shl nuw nsw i32 %310, 6
  %312 = or i32 %311, 32
  br label %313

; <label>:313:                                    ; preds = %303, %295, %290, %281
  %314 = phi i32 [ 32, %281 ], [ %312, %303 ], [ 96, %295 ], [ 96, %290 ]
  %315 = and i32 %276, -97
  %316 = or i32 %314, %315
  store i32 %316, i32* %275, align 4
  br label %412

; <label>:317:                                    ; preds = %273
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:318:                                    ; preds = %268
  %319 = and i32 %269, 3
  %320 = icmp eq i32 %319, %141
  br i1 %320, label %322, label %321

; <label>:321:                                    ; preds = %318
  tail call fastcc void @raise_exception_err(i32 13, i32 %271) #13
  unreachable

; <label>:322:                                    ; preds = %318
  %323 = and i32 %269, 4
  %324 = icmp eq i32 %323, 0
  %325 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %326 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %325, i64 0, i32 12
  %327 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %325, i64 0, i32 14
  %328 = select i1 %324, %struct.SegmentCache* %327, %struct.SegmentCache* %326
  %329 = or i32 %269, 7
  %330 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %328, i64 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp ugt i32 %329, %331
  br i1 %332, label %333, label %334

; <label>:333:                                    ; preds = %322
  tail call fastcc void @raise_exception_err(i32 13, i32 %271) #13
  unreachable

; <label>:334:                                    ; preds = %322
  %335 = and i32 %269, -8
  %336 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %328, i64 0, i32 1
  %337 = load i64, i64* %336, align 4
  %338 = sext i32 %335 to i64
  %339 = add i64 %337, %338
  %340 = tail call fastcc i32 @ldl_kernel(i64 %339)
  %341 = add i64 %339, 4
  %342 = tail call fastcc i32 @ldl_kernel(i64 %341)
  %343 = and i32 %342, 6656
  %344 = icmp eq i32 %343, 4608
  br i1 %344, label %346, label %345

; <label>:345:                                    ; preds = %334
  tail call fastcc void @raise_exception_err(i32 13, i32 %271) #13
  unreachable

; <label>:346:                                    ; preds = %334
  %347 = lshr i32 %342, 13
  %348 = and i32 %347, 3
  %349 = icmp eq i32 %348, %141
  br i1 %349, label %351, label %350

; <label>:350:                                    ; preds = %346
  tail call fastcc void @raise_exception_err(i32 13, i32 %271) #13
  unreachable

; <label>:351:                                    ; preds = %346
  %352 = trunc i32 %342 to i16
  %353 = icmp slt i16 %352, 0
  br i1 %353, label %355, label %354

; <label>:354:                                    ; preds = %351
  tail call fastcc void @raise_exception_err(i32 11, i32 %271) #13
  unreachable

; <label>:355:                                    ; preds = %351
  %356 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %357 = lshr i32 %340, 16
  %358 = shl i32 %342, 16
  %359 = and i32 %358, 16711680
  %360 = and i32 %342, -16777216
  %361 = or i32 %360, %357
  %362 = or i32 %361, %359
  %363 = zext i32 %362 to i64
  %364 = and i32 %340, 65535
  %365 = and i32 %342, 983040
  %366 = or i32 %365, %364
  %367 = and i32 %342, 8388608
  %368 = icmp eq i32 %367, 0
  %369 = shl nuw i32 %366, 12
  %370 = or i32 %369, 4095
  %371 = select i1 %368, i32 %366, i32 %370
  %372 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 11, i64 2, i32 0
  store i32 %269, i32* %372, align 4
  %373 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 11, i64 2, i32 1
  store i64 %363, i64* %373, align 4
  %374 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 11, i64 2, i32 2
  store i32 %371, i32* %374, align 4
  %375 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 11, i64 2, i32 3
  store i32 %342, i32* %375, align 4
  %376 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 8
  %377 = load i32, i32* %376, align 4
  %378 = lshr i32 %342, 17
  %379 = and i32 %378, 32
  %380 = trunc i32 %377 to i16
  %381 = icmp slt i16 %380, 0
  br i1 %381, label %408, label %382

; <label>:382:                                    ; preds = %355
  %383 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 16, i64 0
  %384 = load i64, i64* %383, align 4
  %385 = and i64 %384, 1
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %395, label %387

; <label>:387:                                    ; preds = %382
  %388 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 7
  %389 = load i64, i64* %388, align 4
  %390 = and i64 %389, 131072
  %391 = icmp ne i64 %390, 0
  %392 = and i32 %377, 16
  %393 = icmp eq i32 %392, 0
  %394 = or i1 %393, %391
  br i1 %394, label %395, label %397

; <label>:395:                                    ; preds = %387, %382
  %396 = or i32 %379, 64
  br label %408

; <label>:397:                                    ; preds = %387
  %398 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 11, i64 3, i32 1
  %399 = load i64, i64* %398, align 4
  %400 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %356, i64 0, i32 11, i64 0, i32 1
  %401 = load i64, i64* %400, align 4
  %402 = or i64 %399, %363
  %403 = or i64 %402, %401
  %404 = icmp ne i64 %403, 0
  %405 = zext i1 %404 to i32
  %406 = shl nuw nsw i32 %405, 6
  %407 = or i32 %406, %379
  br label %408

; <label>:408:                                    ; preds = %397, %395, %355
  %409 = phi i32 [ %379, %355 ], [ %396, %395 ], [ %407, %397 ]
  %410 = and i32 %377, -97
  %411 = or i32 %409, %410
  store i32 %411, i32* %376, align 4
  br label %412

; <label>:412:                                    ; preds = %408, %313
  %413 = phi i64 [ 0, %313 ], [ %363, %408 ]
  %414 = phi i32 [ %283, %313 ], [ %342, %408 ]
  %415 = phi i32 [ %316, %313 ], [ %411, %408 ]
  %416 = phi %struct.CPUX86State* [ %274, %313 ], [ %356, %408 ]
  %417 = phi i32 [ 4194304, %313 ], [ %342, %408 ]
  %418 = lshr i32 %134, 16
  %419 = shl i32 %136, 16
  %420 = and i32 %419, 16711680
  %421 = and i32 %136, -16777216
  %422 = or i32 %421, %418
  %423 = or i32 %422, %420
  %424 = zext i32 %423 to i64
  %425 = and i32 %134, 65535
  %426 = and i32 %136, 983040
  %427 = or i32 %426, %425
  %428 = and i32 %136, 8388608
  %429 = icmp eq i32 %428, 0
  %430 = shl nuw i32 %427, 12
  %431 = or i32 %430, 4095
  %432 = select i1 %429, i32 %427, i32 %431
  %433 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 11, i64 1, i32 0
  store i32 %110, i32* %433, align 4
  %434 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 11, i64 1, i32 1
  store i64 %424, i64* %434, align 4
  %435 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 11, i64 1, i32 2
  store i32 %432, i32* %435, align 4
  %436 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 11, i64 1, i32 3
  store i32 %136, i32* %436, align 4
  %437 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 8
  %438 = and i32 %415, 16384
  %439 = icmp eq i32 %438, 0
  %440 = and i32 %136, 2097152
  %441 = icmp eq i32 %440, 0
  %442 = or i1 %441, %439
  br i1 %442, label %446, label %443

; <label>:443:                                    ; preds = %412
  %444 = and i32 %415, -32881
  %445 = or i32 %444, 32816
  br label %451

; <label>:446:                                    ; preds = %412
  %447 = lshr i32 %136, 18
  %448 = and i32 %447, 16
  %449 = and i32 %415, -32785
  %450 = or i32 %449, %448
  br label %451

; <label>:451:                                    ; preds = %446, %443
  %452 = phi i32 [ %445, %443 ], [ %450, %446 ]
  store i32 %452, i32* %437, align 4
  %453 = lshr i32 %414, 17
  %454 = and i32 %453, 32
  %455 = trunc i32 %452 to i16
  %456 = icmp slt i16 %455, 0
  br i1 %456, label %483, label %457

; <label>:457:                                    ; preds = %451
  %458 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 16, i64 0
  %459 = load i64, i64* %458, align 4
  %460 = and i64 %459, 1
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %470, label %462

; <label>:462:                                    ; preds = %457
  %463 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 7
  %464 = load i64, i64* %463, align 4
  %465 = and i64 %464, 131072
  %466 = icmp ne i64 %465, 0
  %467 = and i32 %452, 16
  %468 = icmp eq i32 %467, 0
  %469 = or i1 %468, %466
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %462, %457
  %471 = or i32 %454, 64
  br label %483

; <label>:472:                                    ; preds = %462
  %473 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 11, i64 3, i32 1
  %474 = load i64, i64* %473, align 4
  %475 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %416, i64 0, i32 11, i64 0, i32 1
  %476 = load i64, i64* %475, align 4
  %477 = or i64 %474, %413
  %478 = or i64 %477, %476
  %479 = icmp ne i64 %478, 0
  %480 = zext i1 %479 to i32
  %481 = shl nuw nsw i32 %480, 6
  %482 = or i32 %481, %454
  br label %483

; <label>:483:                                    ; preds = %472, %470, %451
  %484 = phi i32 [ %454, %451 ], [ %471, %470 ], [ %482, %472 ]
  %485 = and i32 %452, -97
  %486 = or i32 %484, %485
  store i32 %486, i32* %437, align 4
  %487 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %488 = load i32, i32* %487, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %495, label %490, !prof !2

; <label>:490:                                    ; preds = %483
  %491 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %492 = and i32 %486, 3
  tail call void %491(i32 %492, i32 %141)
  %493 = load i32, i32* %437, align 4
  %494 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %495

; <label>:495:                                    ; preds = %490, %483
  %496 = phi %struct.CPUX86State* [ %494, %490 ], [ %416, %483 ]
  %497 = phi i32 [ %493, %490 ], [ %486, %483 ]
  %498 = and i32 %497, -4
  %499 = or i32 %498, %141
  store i32 %499, i32* %437, align 4
  %500 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 8
  %501 = load i32, i32* %500, align 4
  %502 = trunc i32 %501 to i16
  %503 = icmp slt i16 %502, 0
  br i1 %503, label %510, label %504

; <label>:504:                                    ; preds = %495
  %505 = lshr i32 %417, 6
  %506 = and i32 %505, 65536
  %507 = xor i32 %506, 65536
  %508 = add nsw i32 %507, -1
  %509 = zext i32 %508 to i64
  br label %510

; <label>:510:                                    ; preds = %504, %495
  %511 = phi i64 [ %509, %504 ], [ -1, %495 ]
  %512 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 0, i32 3
  %513 = load i32, i32* %512, align 4
  %514 = lshr i32 %513, 13
  %515 = and i32 %514, 3
  %516 = and i32 %513, 3072
  %517 = icmp ne i32 %516, 3072
  %518 = icmp ult i32 %515, %141
  %519 = and i1 %517, %518
  br i1 %519, label %520, label %563

; <label>:520:                                    ; preds = %510
  %521 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 0, i32 0
  %522 = bitcast i32* %521 to i8*
  br label %523

; <label>:523:                                    ; preds = %526, %520
  %524 = phi i64 [ 0, %520 ], [ %528, %526 ]
  %525 = icmp ult i64 %524, 20
  br i1 %525, label %526, label %529

; <label>:526:                                    ; preds = %523
  %527 = getelementptr i8, i8* %522, i64 %524
  store i8 0, i8* %527
  %528 = add i64 %524, 1
  br label %523

; <label>:529:                                    ; preds = %523
  %530 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 3
  %531 = load i32, i32* %530, align 4
  %532 = lshr i32 %531, 17
  %533 = and i32 %532, 32
  br i1 %503, label %559, label %534

; <label>:534:                                    ; preds = %529
  %535 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 16, i64 0
  %536 = load i64, i64* %535, align 4
  %537 = and i64 %536, 1
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %547, label %539

; <label>:539:                                    ; preds = %534
  %540 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 7
  %541 = load i64, i64* %540, align 4
  %542 = and i64 %541, 131072
  %543 = icmp ne i64 %542, 0
  %544 = and i32 %501, 16
  %545 = icmp eq i32 %544, 0
  %546 = or i1 %545, %543
  br i1 %546, label %547, label %549

; <label>:547:                                    ; preds = %539, %534
  %548 = or i32 %533, 64
  br label %559

; <label>:549:                                    ; preds = %539
  %550 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 3, i32 1
  %551 = load i64, i64* %550, align 4
  %552 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 1
  %553 = load i64, i64* %552, align 4
  %554 = or i64 %553, %551
  %555 = icmp ne i64 %554, 0
  %556 = zext i1 %555 to i32
  %557 = shl nuw nsw i32 %556, 6
  %558 = or i32 %557, %533
  br label %559

; <label>:559:                                    ; preds = %549, %547, %529
  %560 = phi i32 [ %533, %529 ], [ %548, %547 ], [ %558, %549 ]
  %561 = and i32 %501, -97
  %562 = or i32 %560, %561
  store i32 %562, i32* %500, align 4
  br label %563

; <label>:563:                                    ; preds = %559, %510
  %564 = phi i32 [ %501, %510 ], [ %562, %559 ]
  %565 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 3, i32 3
  %566 = load i32, i32* %565, align 4
  %567 = lshr i32 %566, 13
  %568 = and i32 %567, 3
  %569 = and i32 %566, 3072
  %570 = icmp ne i32 %569, 3072
  %571 = icmp ult i32 %568, %141
  %572 = and i1 %570, %571
  br i1 %572, label %573, label %618

; <label>:573:                                    ; preds = %563
  %574 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 3, i32 0
  %575 = bitcast i32* %574 to i8*
  br label %576

; <label>:576:                                    ; preds = %579, %573
  %577 = phi i64 [ 0, %573 ], [ %581, %579 ]
  %578 = icmp ult i64 %577, 20
  br i1 %578, label %579, label %582

; <label>:579:                                    ; preds = %576
  %580 = getelementptr i8, i8* %575, i64 %577
  store i8 0, i8* %580
  %581 = add i64 %577, 1
  br label %576

; <label>:582:                                    ; preds = %576
  %583 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 3
  %584 = load i32, i32* %583, align 4
  %585 = lshr i32 %584, 17
  %586 = and i32 %585, 32
  %587 = trunc i32 %564 to i16
  %588 = icmp slt i16 %587, 0
  br i1 %588, label %614, label %589

; <label>:589:                                    ; preds = %582
  %590 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 16, i64 0
  %591 = load i64, i64* %590, align 4
  %592 = and i64 %591, 1
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %602, label %594

; <label>:594:                                    ; preds = %589
  %595 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 7
  %596 = load i64, i64* %595, align 4
  %597 = and i64 %596, 131072
  %598 = icmp ne i64 %597, 0
  %599 = and i32 %564, 16
  %600 = icmp eq i32 %599, 0
  %601 = or i1 %600, %598
  br i1 %601, label %602, label %604

; <label>:602:                                    ; preds = %594, %589
  %603 = or i32 %586, 64
  br label %614

; <label>:604:                                    ; preds = %594
  %605 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 0, i32 1
  %606 = load i64, i64* %605, align 4
  %607 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 1
  %608 = load i64, i64* %607, align 4
  %609 = or i64 %608, %606
  %610 = icmp ne i64 %609, 0
  %611 = zext i1 %610 to i32
  %612 = shl nuw nsw i32 %611, 6
  %613 = or i32 %612, %586
  br label %614

; <label>:614:                                    ; preds = %604, %602, %582
  %615 = phi i32 [ %586, %582 ], [ %603, %602 ], [ %613, %604 ]
  %616 = and i32 %564, -97
  %617 = or i32 %615, %616
  store i32 %617, i32* %500, align 4
  br label %618

; <label>:618:                                    ; preds = %614, %563
  %619 = phi i32 [ %564, %563 ], [ %617, %614 ]
  %620 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 4, i32 0
  %621 = load i32, i32* %620, align 4
  %622 = and i32 %621, 65532
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %680, label %624

; <label>:624:                                    ; preds = %618
  %625 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 4, i32 3
  %626 = load i32, i32* %625, align 4
  %627 = lshr i32 %626, 13
  %628 = and i32 %627, 3
  %629 = and i32 %626, 3072
  %630 = icmp ne i32 %629, 3072
  %631 = icmp ult i32 %628, %141
  %632 = and i1 %630, %631
  br i1 %632, label %633, label %680

; <label>:633:                                    ; preds = %624
  %634 = bitcast i32* %620 to i8*
  br label %635

; <label>:635:                                    ; preds = %638, %633
  %636 = phi i64 [ 0, %633 ], [ %640, %638 ]
  %637 = icmp ult i64 %636, 20
  br i1 %637, label %638, label %641

; <label>:638:                                    ; preds = %635
  %639 = getelementptr i8, i8* %634, i64 %636
  store i8 0, i8* %639
  %640 = add i64 %636, 1
  br label %635

; <label>:641:                                    ; preds = %635
  %642 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 3
  %643 = load i32, i32* %642, align 4
  %644 = lshr i32 %643, 17
  %645 = and i32 %644, 32
  %646 = trunc i32 %619 to i16
  %647 = icmp slt i16 %646, 0
  br i1 %647, label %676, label %648

; <label>:648:                                    ; preds = %641
  %649 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 16, i64 0
  %650 = load i64, i64* %649, align 4
  %651 = and i64 %650, 1
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %661, label %653

; <label>:653:                                    ; preds = %648
  %654 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 7
  %655 = load i64, i64* %654, align 4
  %656 = and i64 %655, 131072
  %657 = icmp ne i64 %656, 0
  %658 = and i32 %619, 16
  %659 = icmp eq i32 %658, 0
  %660 = or i1 %659, %657
  br i1 %660, label %661, label %663

; <label>:661:                                    ; preds = %653, %648
  %662 = or i32 %645, 64
  br label %676

; <label>:663:                                    ; preds = %653
  %664 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 3, i32 1
  %665 = load i64, i64* %664, align 4
  %666 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 0, i32 1
  %667 = load i64, i64* %666, align 4
  %668 = or i64 %667, %665
  %669 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 1
  %670 = load i64, i64* %669, align 4
  %671 = or i64 %668, %670
  %672 = icmp ne i64 %671, 0
  %673 = zext i1 %672 to i32
  %674 = shl nuw nsw i32 %673, 6
  %675 = or i32 %674, %645
  br label %676

; <label>:676:                                    ; preds = %663, %661, %641
  %677 = phi i32 [ %645, %641 ], [ %662, %661 ], [ %675, %663 ]
  %678 = and i32 %619, -97
  %679 = or i32 %677, %678
  store i32 %679, i32* %500, align 4
  br label %680

; <label>:680:                                    ; preds = %676, %624, %618
  %681 = phi i32 [ %619, %618 ], [ %619, %624 ], [ %679, %676 ]
  %682 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 5, i32 0
  %683 = load i32, i32* %682, align 4
  %684 = and i32 %683, 65532
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %742, label %686

; <label>:686:                                    ; preds = %680
  %687 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 5, i32 3
  %688 = load i32, i32* %687, align 4
  %689 = lshr i32 %688, 13
  %690 = and i32 %689, 3
  %691 = and i32 %688, 3072
  %692 = icmp ne i32 %691, 3072
  %693 = icmp ult i32 %690, %141
  %694 = and i1 %692, %693
  br i1 %694, label %695, label %742

; <label>:695:                                    ; preds = %686
  %696 = bitcast i32* %682 to i8*
  br label %697

; <label>:697:                                    ; preds = %700, %695
  %698 = phi i64 [ 0, %695 ], [ %702, %700 ]
  %699 = icmp ult i64 %698, 20
  br i1 %699, label %700, label %703

; <label>:700:                                    ; preds = %697
  %701 = getelementptr i8, i8* %696, i64 %698
  store i8 0, i8* %701
  %702 = add i64 %698, 1
  br label %697

; <label>:703:                                    ; preds = %697
  %704 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 3
  %705 = load i32, i32* %704, align 4
  %706 = lshr i32 %705, 17
  %707 = and i32 %706, 32
  %708 = trunc i32 %681 to i16
  %709 = icmp slt i16 %708, 0
  br i1 %709, label %738, label %710

; <label>:710:                                    ; preds = %703
  %711 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 16, i64 0
  %712 = load i64, i64* %711, align 4
  %713 = and i64 %712, 1
  %714 = icmp eq i64 %713, 0
  br i1 %714, label %723, label %715

; <label>:715:                                    ; preds = %710
  %716 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 7
  %717 = load i64, i64* %716, align 4
  %718 = and i64 %717, 131072
  %719 = icmp ne i64 %718, 0
  %720 = and i32 %681, 16
  %721 = icmp eq i32 %720, 0
  %722 = or i1 %721, %719
  br i1 %722, label %723, label %725

; <label>:723:                                    ; preds = %715, %710
  %724 = or i32 %707, 64
  br label %738

; <label>:725:                                    ; preds = %715
  %726 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 3, i32 1
  %727 = load i64, i64* %726, align 4
  %728 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 0, i32 1
  %729 = load i64, i64* %728, align 4
  %730 = or i64 %729, %727
  %731 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %496, i64 0, i32 11, i64 2, i32 1
  %732 = load i64, i64* %731, align 4
  %733 = or i64 %730, %732
  %734 = icmp ne i64 %733, 0
  %735 = zext i1 %734 to i32
  %736 = shl nuw nsw i32 %735, 6
  %737 = or i32 %736, %707
  br label %738

; <label>:738:                                    ; preds = %725, %723, %703
  %739 = phi i32 [ %707, %703 ], [ %724, %723 ], [ %737, %725 ]
  %740 = and i32 %681, -97
  %741 = or i32 %739, %740
  store i32 %741, i32* %500, align 4
  br label %742

; <label>:742:                                    ; preds = %680, %686, %738, %236
  %743 = phi %struct.CPUX86State* [ %162, %236 ], [ %496, %738 ], [ %496, %686 ], [ %496, %680 ]
  %744 = phi i64 [ %111, %236 ], [ %270, %738 ], [ %270, %686 ], [ %270, %680 ]
  %745 = phi i64 [ %108, %236 ], [ %511, %738 ], [ %511, %686 ], [ %511, %680 ]
  switch i64 %745, label %755 [
    i64 65535, label %746
    i64 4294967295, label %752
  ]

; <label>:746:                                    ; preds = %742
  %747 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 0, i64 4
  %748 = load i64, i64* %747, align 16
  %749 = and i64 %748, -65536
  %750 = and i64 %744, 65535
  %751 = or i64 %749, %750
  store i64 %751, i64* %747, align 16
  br label %757

; <label>:752:                                    ; preds = %742
  %753 = and i64 %744, 4294967295
  %754 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 0, i64 4
  store i64 %753, i64* %754, align 16
  br label %757

; <label>:755:                                    ; preds = %742
  %756 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 0, i64 4
  store i64 %744, i64* %756, align 16
  br label %757

; <label>:757:                                    ; preds = %755, %752, %746
  %758 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 5
  store i64 %112, i64* %758, align 16
  %759 = icmp eq i32 %45, 0
  %760 = select i1 %759, i32 2453760, i32 2441472
  %761 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 7
  %762 = load i64, i64* %761, align 4
  %763 = lshr i64 %762, 12
  %764 = trunc i64 %763 to i32
  %765 = and i32 %764, 3
  %766 = icmp ugt i32 %45, %765
  %767 = or i32 %760, 512
  %768 = select i1 %766, i32 %760, i32 %767
  %769 = icmp eq i32 %0, 0
  %770 = and i32 %768, 29440
  %771 = select i1 %769, i32 %770, i32 %768
  %772 = and i32 %109, 2261
  %773 = zext i32 %772 to i64
  %774 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 2
  store i64 %773, i64* %774, align 8
  %775 = lshr i32 %109, 9
  %776 = and i32 %775, 2
  %777 = xor i32 %776, 2
  %778 = add nsw i32 %777, -1
  %779 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %743, i64 0, i32 6
  store i32 %778, i32* %779, align 8
  %780 = xor i32 %771, -1
  %781 = sext i32 %780 to i64
  %782 = and i64 %781, %762
  %783 = and i32 %771, %109
  %784 = zext i32 %783 to i64
  %785 = or i64 %782, %784
  store i64 %785, i64* %761, align 4
  br i1 %160, label %1042, label %786

; <label>:786:                                    ; preds = %757
  %787 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %788 = load i32, i32* %787, align 4
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %1042, label %790, !prof !2

; <label>:790:                                    ; preds = %786
  %791 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %791(i32 %45, i32 %141)
  br label %1042

; <label>:792:                                    ; preds = %76
  %793 = and i64 %68, %91
  %794 = add i64 %793, %72
  %795 = and i64 %794, 4294967295
  %796 = tail call fastcc i32 @ldl_kernel(i64 %795)
  %797 = zext i32 %796 to i64
  %798 = add i64 %70, 16
  %799 = and i64 %68, %798
  %800 = add i64 %799, %72
  %801 = and i64 %800, 4294967295
  %802 = tail call fastcc i32 @ldl_kernel(i64 %801)
  %803 = add i64 %70, 20
  %804 = and i64 %68, %803
  %805 = add i64 %804, %72
  %806 = and i64 %805, 4294967295
  %807 = tail call fastcc i32 @ldl_kernel(i64 %806)
  %808 = add i64 %70, 24
  %809 = and i64 %68, %808
  %810 = add i64 %809, %72
  %811 = and i64 %810, 4294967295
  %812 = tail call fastcc i32 @ldl_kernel(i64 %811)
  %813 = add i64 %70, 28
  %814 = and i64 %68, %813
  %815 = add i64 %814, %72
  %816 = and i64 %815, 4294967295
  %817 = tail call fastcc i32 @ldl_kernel(i64 %816)
  %818 = add i64 %70, 32
  %819 = and i64 %68, %818
  %820 = add i64 %819, %72
  %821 = and i64 %820, 4294967295
  %822 = tail call fastcc i32 @ldl_kernel(i64 %821)
  %823 = and i32 %90, 2261
  %824 = zext i32 %823 to i64
  %825 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %826 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 2
  store i64 %824, i64* %826, align 8
  %827 = lshr i32 %90, 9
  %828 = and i32 %827, 2
  %829 = xor i32 %828, 2
  %830 = add nsw i32 %829, -1
  %831 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 6
  store i32 %830, i32* %831, align 8
  %832 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 7
  %833 = load i64, i64* %832, align 4
  %834 = and i64 %833, -4092673
  %835 = and i32 %90, 4092672
  %836 = zext i32 %835 to i64
  %837 = or i64 %834, %836
  store i64 %837, i64* %832, align 4
  %838 = shl nuw nsw i32 %86, 4
  %839 = zext i32 %838 to i64
  %840 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 11, i64 1, i32 0
  store i32 %86, i32* %840, align 4
  %841 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 11, i64 1, i32 1
  store i64 %839, i64* %841, align 4
  %842 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 11, i64 1, i32 2
  store i32 65535, i32* %842, align 4
  %843 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 11, i64 1, i32 3
  store i32 0, i32* %843, align 4
  %844 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 8
  %845 = load i32, i32* %844, align 4
  %846 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %825, i64 0, i32 11, i64 2, i32 3
  %847 = load i32, i32* %846, align 4
  %848 = lshr i32 %847, 17
  %849 = and i32 %848, 32
  %850 = and i32 %845, -32881
  %851 = or i32 %850, %849
  %852 = or i32 %851, 64
  store i32 %852, i32* %844, align 4
  %853 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %854 = load i32, i32* %853, align 4
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %861, label %856, !prof !2

; <label>:856:                                    ; preds = %792
  %857 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %858 = and i32 %845, 3
  tail call void %857(i32 %858, i32 3)
  %859 = load i32, i32* %844, align 4
  %860 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %861

; <label>:861:                                    ; preds = %856, %792
  %862 = phi %struct.CPUX86State* [ %860, %856 ], [ %825, %792 ]
  %863 = phi i32 [ %859, %856 ], [ %852, %792 ]
  %864 = or i32 %863, 3
  store i32 %864, i32* %844, align 4
  %865 = and i32 %802, 65535
  %866 = shl nuw nsw i32 %865, 4
  %867 = zext i32 %866 to i64
  %868 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 2, i32 0
  store i32 %865, i32* %868, align 4
  %869 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 2, i32 1
  store i64 %867, i64* %869, align 4
  %870 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 2, i32 2
  store i32 65535, i32* %870, align 4
  %871 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 2, i32 3
  store i32 0, i32* %871, align 4
  %872 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 8
  %873 = load i32, i32* %872, align 4
  %874 = trunc i32 %873 to i16
  %875 = icmp slt i16 %874, 0
  br i1 %875, label %899, label %876

; <label>:876:                                    ; preds = %861
  %877 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 16, i64 0
  %878 = load i64, i64* %877, align 4
  %879 = and i64 %878, 1
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %899, label %881

; <label>:881:                                    ; preds = %876
  %882 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 7
  %883 = load i64, i64* %882, align 4
  %884 = and i64 %883, 131072
  %885 = icmp ne i64 %884, 0
  %886 = and i32 %873, 16
  %887 = icmp eq i32 %886, 0
  %888 = or i1 %887, %885
  br i1 %888, label %899, label %889

; <label>:889:                                    ; preds = %881
  %890 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 3, i32 1
  %891 = load i64, i64* %890, align 4
  %892 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 0, i32 1
  %893 = load i64, i64* %892, align 4
  %894 = or i64 %891, %867
  %895 = or i64 %894, %893
  %896 = icmp ne i64 %895, 0
  %897 = zext i1 %896 to i32
  %898 = shl nuw nsw i32 %897, 6
  br label %899

; <label>:899:                                    ; preds = %889, %881, %876, %861
  %900 = phi i32 [ 0, %861 ], [ %898, %889 ], [ 64, %881 ], [ 64, %876 ]
  %901 = and i32 %873, -97
  %902 = or i32 %900, %901
  store i32 %902, i32* %872, align 4
  %903 = and i32 %807, 65535
  %904 = shl nuw nsw i32 %903, 4
  %905 = zext i32 %904 to i64
  %906 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 0, i32 0
  store i32 %903, i32* %906, align 4
  %907 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 0, i32 1
  store i64 %905, i64* %907, align 4
  %908 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 0, i32 2
  store i32 65535, i32* %908, align 4
  %909 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 0, i32 3
  store i32 0, i32* %909, align 4
  %910 = trunc i32 %902 to i16
  %911 = icmp slt i16 %910, 0
  br i1 %911, label %934, label %912

; <label>:912:                                    ; preds = %899
  %913 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 16, i64 0
  %914 = load i64, i64* %913, align 4
  %915 = and i64 %914, 1
  %916 = icmp eq i64 %915, 0
  br i1 %916, label %934, label %917

; <label>:917:                                    ; preds = %912
  %918 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 7
  %919 = load i64, i64* %918, align 4
  %920 = and i64 %919, 131072
  %921 = icmp ne i64 %920, 0
  %922 = and i32 %873, 16
  %923 = icmp eq i32 %922, 0
  %924 = or i1 %923, %921
  br i1 %924, label %934, label %925

; <label>:925:                                    ; preds = %917
  %926 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 3, i32 1
  %927 = load i64, i64* %926, align 4
  %928 = or i32 %904, %866
  %929 = zext i32 %928 to i64
  %930 = or i64 %929, %927
  %931 = icmp ne i64 %930, 0
  %932 = zext i1 %931 to i32
  %933 = shl nuw nsw i32 %932, 6
  br label %934

; <label>:934:                                    ; preds = %925, %917, %912, %899
  %935 = phi i32 [ 0, %899 ], [ %933, %925 ], [ 64, %917 ], [ 64, %912 ]
  %936 = and i32 %902, -97
  %937 = or i32 %935, %936
  store i32 %937, i32* %872, align 4
  %938 = and i32 %812, 65535
  %939 = shl nuw nsw i32 %938, 4
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 3, i32 0
  store i32 %938, i32* %941, align 4
  %942 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 3, i32 1
  store i64 %940, i64* %942, align 4
  %943 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 3, i32 2
  store i32 65535, i32* %943, align 4
  %944 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 3, i32 3
  store i32 0, i32* %944, align 4
  %945 = trunc i32 %937 to i16
  %946 = icmp slt i16 %945, 0
  br i1 %946, label %966, label %947

; <label>:947:                                    ; preds = %934
  %948 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 16, i64 0
  %949 = load i64, i64* %948, align 4
  %950 = and i64 %949, 1
  %951 = icmp eq i64 %950, 0
  br i1 %951, label %966, label %952

; <label>:952:                                    ; preds = %947
  %953 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 7
  %954 = load i64, i64* %953, align 4
  %955 = and i64 %954, 131072
  %956 = icmp ne i64 %955, 0
  %957 = and i32 %873, 16
  %958 = icmp eq i32 %957, 0
  %959 = or i1 %958, %956
  br i1 %959, label %966, label %960

; <label>:960:                                    ; preds = %952
  %961 = or i32 %904, %866
  %962 = or i32 %961, %939
  %963 = icmp ne i32 %962, 0
  %964 = zext i1 %963 to i32
  %965 = shl nuw nsw i32 %964, 6
  br label %966

; <label>:966:                                    ; preds = %960, %952, %947, %934
  %967 = phi i32 [ 0, %934 ], [ %965, %960 ], [ 64, %952 ], [ 64, %947 ]
  %968 = and i32 %937, -97
  %969 = or i32 %967, %968
  store i32 %969, i32* %872, align 4
  %970 = and i32 %817, 65535
  %971 = shl nuw nsw i32 %970, 4
  %972 = zext i32 %971 to i64
  %973 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 4, i32 0
  store i32 %970, i32* %973, align 4
  %974 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 4, i32 1
  store i64 %972, i64* %974, align 4
  %975 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 4, i32 2
  store i32 65535, i32* %975, align 4
  %976 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 4, i32 3
  store i32 0, i32* %976, align 4
  %977 = trunc i32 %969 to i16
  %978 = icmp slt i16 %977, 0
  br i1 %978, label %998, label %979

; <label>:979:                                    ; preds = %966
  %980 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 16, i64 0
  %981 = load i64, i64* %980, align 4
  %982 = and i64 %981, 1
  %983 = icmp eq i64 %982, 0
  br i1 %983, label %998, label %984

; <label>:984:                                    ; preds = %979
  %985 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 7
  %986 = load i64, i64* %985, align 4
  %987 = and i64 %986, 131072
  %988 = icmp ne i64 %987, 0
  %989 = and i32 %873, 16
  %990 = icmp eq i32 %989, 0
  %991 = or i1 %990, %988
  br i1 %991, label %998, label %992

; <label>:992:                                    ; preds = %984
  %993 = or i32 %904, %866
  %994 = or i32 %993, %939
  %995 = icmp ne i32 %994, 0
  %996 = zext i1 %995 to i32
  %997 = shl nuw nsw i32 %996, 6
  br label %998

; <label>:998:                                    ; preds = %992, %984, %979, %966
  %999 = phi i32 [ 0, %966 ], [ %997, %992 ], [ 64, %984 ], [ 64, %979 ]
  %1000 = and i32 %969, -97
  %1001 = or i32 %999, %1000
  store i32 %1001, i32* %872, align 4
  %1002 = and i32 %822, 65535
  %1003 = shl nuw nsw i32 %1002, 4
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 5, i32 0
  store i32 %1002, i32* %1005, align 4
  %1006 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 5, i32 1
  store i64 %1004, i64* %1006, align 4
  %1007 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 5, i32 2
  store i32 65535, i32* %1007, align 4
  %1008 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 11, i64 5, i32 3
  store i32 0, i32* %1008, align 4
  %1009 = trunc i32 %1001 to i16
  %1010 = icmp slt i16 %1009, 0
  br i1 %1010, label %1030, label %1011

; <label>:1011:                                   ; preds = %998
  %1012 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 16, i64 0
  %1013 = load i64, i64* %1012, align 4
  %1014 = and i64 %1013, 1
  %1015 = icmp eq i64 %1014, 0
  br i1 %1015, label %1030, label %1016

; <label>:1016:                                   ; preds = %1011
  %1017 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 7
  %1018 = load i64, i64* %1017, align 4
  %1019 = and i64 %1018, 131072
  %1020 = icmp ne i64 %1019, 0
  %1021 = and i32 %873, 16
  %1022 = icmp eq i32 %1021, 0
  %1023 = or i1 %1022, %1020
  br i1 %1023, label %1030, label %1024

; <label>:1024:                                   ; preds = %1016
  %1025 = or i32 %904, %866
  %1026 = or i32 %1025, %939
  %1027 = icmp ne i32 %1026, 0
  %1028 = zext i1 %1027 to i32
  %1029 = shl nuw nsw i32 %1028, 6
  br label %1030

; <label>:1030:                                   ; preds = %1024, %1016, %1011, %998
  %1031 = phi i32 [ 0, %998 ], [ %1029, %1024 ], [ 64, %1016 ], [ 64, %1011 ]
  %1032 = and i32 %1001, -97
  %1033 = or i32 %1031, %1032
  store i32 %1033, i32* %872, align 4
  %1034 = and i64 %79, 65535
  %1035 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 5
  store i64 %1034, i64* %1035, align 16
  %1036 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %862, i64 0, i32 0, i64 4
  store i64 %797, i64* %1036, align 16
  %1037 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %1038 = load i32, i32* %1037, align 4
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1042, label %1040, !prof !2

; <label>:1040:                                   ; preds = %1030
  %1041 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %1041(i32 %45, i32 3)
  br label %1042

; <label>:1042:                                   ; preds = %1040, %1030, %790, %786, %757, %43
  %1043 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %1044 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1043, i64 0, i32 9
  %1045 = load i32, i32* %1044, align 8
  %1046 = and i32 %1045, -5
  store i32 %1046, i32* %1044, align 8
  ret void
}

; Function Attrs: uwtable
define void @helper_lret_protected(i32, i32) local_unnamed_addr #2 {
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %8, label %19

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 0, i64 4
  %10 = load i64, i64* %9, align 16
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 11, i64 2, i32 1
  %12 = load i64, i64* %11, align 4
  %13 = tail call fastcc i64 @ldq_kernel(i64 %10)
  %14 = add i64 %10, 8
  %15 = tail call fastcc i64 @ldq_kernel(i64 %14)
  %16 = trunc i64 %15 to i32
  %17 = add i64 %10, 16
  %18 = and i32 %16, 65535
  br label %53

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 11, i64 2, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %21, 6
  %23 = and i32 %22, 65536
  %24 = xor i32 %23, 65536
  %25 = add nsw i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 0, i64 4
  %28 = load i64, i64* %27, align 16
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 11, i64 2, i32 1
  %30 = load i64, i64* %29, align 4
  %31 = icmp eq i32 %0, 1
  %32 = and i64 %26, %28
  %33 = add i64 %32, %30
  br i1 %31, label %34, label %45

; <label>:34:                                     ; preds = %19
  %35 = and i64 %33, 4294967295
  %36 = tail call fastcc i32 @ldl_kernel(i64 %35)
  %37 = zext i32 %36 to i64
  %38 = add i64 %28, 4
  %39 = and i64 %26, %38
  %40 = add i64 %39, %30
  %41 = and i64 %40, 4294967295
  %42 = tail call fastcc i32 @ldl_kernel(i64 %41)
  %43 = add i64 %28, 8
  %44 = and i32 %42, 65535
  br label %53

; <label>:45:                                     ; preds = %19
  %46 = tail call fastcc i32 @lduw_kernel(i64 %33)
  %47 = zext i32 %46 to i64
  %48 = add i64 %28, 2
  %49 = and i64 %26, %48
  %50 = add i64 %49, %30
  %51 = tail call fastcc i32 @lduw_kernel(i64 %50)
  %52 = add i64 %28, 4
  br label %53

; <label>:53:                                     ; preds = %45, %34, %8
  %54 = phi i64 [ %12, %8 ], [ %30, %34 ], [ %30, %45 ]
  %55 = phi i64 [ -1, %8 ], [ %26, %34 ], [ %26, %45 ]
  %56 = phi i32 [ %18, %8 ], [ %44, %34 ], [ %51, %45 ]
  %57 = phi i64 [ %17, %8 ], [ %43, %34 ], [ %52, %45 ]
  %58 = phi i64 [ %13, %8 ], [ %37, %34 ], [ %47, %45 ]
  %59 = and i32 %56, 65532
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %53
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:62:                                     ; preds = %53
  %63 = and i32 %56, 4
  %64 = icmp eq i32 %63, 0
  %65 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %66 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %65, i64 0, i32 12
  %67 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %65, i64 0, i32 14
  %68 = select i1 %64, %struct.SegmentCache* %67, %struct.SegmentCache* %66
  %69 = or i32 %56, 7
  %70 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %68, i64 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ugt i32 %69, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %62
  tail call fastcc void @raise_exception_err(i32 13, i32 %59) #13
  unreachable

; <label>:74:                                     ; preds = %62
  %75 = and i32 %56, -8
  %76 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %68, i64 0, i32 1
  %77 = load i64, i64* %76, align 4
  %78 = sext i32 %75 to i64
  %79 = add i64 %77, %78
  %80 = tail call fastcc i32 @ldl_kernel(i64 %79)
  %81 = add i64 %79, 4
  %82 = tail call fastcc i32 @ldl_kernel(i64 %81)
  %83 = and i32 %82, 6144
  %84 = icmp eq i32 %83, 6144
  br i1 %84, label %86, label %85

; <label>:85:                                     ; preds = %74
  tail call fastcc void @raise_exception_err(i32 13, i32 %59) #13
  unreachable

; <label>:86:                                     ; preds = %74
  %87 = and i32 %56, 3
  %88 = icmp ult i32 %87, %6
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %86
  tail call fastcc void @raise_exception_err(i32 13, i32 %59) #13
  unreachable

; <label>:90:                                     ; preds = %86
  %91 = lshr i32 %82, 13
  %92 = and i32 %91, 3
  %93 = and i32 %82, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

; <label>:95:                                     ; preds = %90
  %96 = icmp ugt i32 %92, %87
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %95
  tail call fastcc void @raise_exception_err(i32 13, i32 %59) #13
  unreachable

; <label>:98:                                     ; preds = %90
  %99 = icmp eq i32 %92, %87
  br i1 %99, label %101, label %100

; <label>:100:                                    ; preds = %98
  tail call fastcc void @raise_exception_err(i32 13, i32 %59) #13
  unreachable

; <label>:101:                                    ; preds = %98, %95
  %102 = trunc i32 %82 to i16
  %103 = icmp slt i16 %102, 0
  br i1 %103, label %105, label %104

; <label>:104:                                    ; preds = %101
  tail call fastcc void @raise_exception_err(i32 11, i32 %59) #13
  unreachable

; <label>:105:                                    ; preds = %101
  %106 = sext i32 %1 to i64
  %107 = add i64 %57, %106
  %108 = icmp eq i32 %87, %6
  br i1 %108, label %109, label %185

; <label>:109:                                    ; preds = %105
  %110 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %111 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = lshr i32 %80, 16
  %114 = shl i32 %82, 16
  %115 = and i32 %114, 16711680
  %116 = and i32 %82, -16777216
  %117 = or i32 %116, %113
  %118 = or i32 %117, %115
  %119 = zext i32 %118 to i64
  %120 = and i32 %80, 65535
  %121 = and i32 %82, 983040
  %122 = or i32 %121, %120
  %123 = and i32 %82, 8388608
  %124 = icmp eq i32 %123, 0
  %125 = shl nuw i32 %122, 12
  %126 = or i32 %125, 4095
  %127 = select i1 %124, i32 %122, i32 %126
  %128 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 1, i32 0
  store i32 %56, i32* %128, align 4
  %129 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 1, i32 1
  store i64 %119, i64* %129, align 4
  %130 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 1, i32 2
  store i32 %127, i32* %130, align 4
  %131 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 1, i32 3
  store i32 %82, i32* %131, align 4
  %132 = and i32 %112, 16384
  %133 = icmp eq i32 %132, 0
  %134 = and i32 %82, 2097152
  %135 = icmp eq i32 %134, 0
  %136 = or i1 %135, %133
  br i1 %136, label %140, label %137

; <label>:137:                                    ; preds = %109
  %138 = and i32 %112, -32881
  %139 = or i32 %138, 32816
  br label %145

; <label>:140:                                    ; preds = %109
  %141 = lshr i32 %82, 18
  %142 = and i32 %141, 16
  %143 = and i32 %112, -32785
  %144 = or i32 %143, %142
  br label %145

; <label>:145:                                    ; preds = %140, %137
  %146 = phi i32 [ %139, %137 ], [ %144, %140 ]
  store i32 %146, i32* %111, align 4
  %147 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 2, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = lshr i32 %148, 17
  %150 = and i32 %149, 32
  %151 = trunc i32 %146 to i16
  %152 = icmp slt i16 %151, 0
  br i1 %152, label %181, label %153

; <label>:153:                                    ; preds = %145
  %154 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 16, i64 0
  %155 = load i64, i64* %154, align 4
  %156 = and i64 %155, 1
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %166, label %158

; <label>:158:                                    ; preds = %153
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 7
  %160 = load i64, i64* %159, align 4
  %161 = and i64 %160, 131072
  %162 = icmp ne i64 %161, 0
  %163 = and i32 %146, 16
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %164, %162
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %158, %153
  %167 = or i32 %150, 64
  br label %181

; <label>:168:                                    ; preds = %158
  %169 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 3, i32 1
  %170 = load i64, i64* %169, align 4
  %171 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 0, i32 1
  %172 = load i64, i64* %171, align 4
  %173 = or i64 %172, %170
  %174 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 11, i64 2, i32 1
  %175 = load i64, i64* %174, align 4
  %176 = or i64 %173, %175
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = shl nuw nsw i32 %178, 6
  %180 = or i32 %179, %150
  br label %181

; <label>:181:                                    ; preds = %168, %166, %145
  %182 = phi i32 [ %150, %145 ], [ %167, %166 ], [ %180, %168 ]
  %183 = and i32 %146, -97
  %184 = or i32 %182, %183
  store i32 %184, i32* %111, align 4
  br label %689

; <label>:185:                                    ; preds = %105
  br i1 %7, label %186, label %192

; <label>:186:                                    ; preds = %185
  %187 = tail call fastcc i64 @ldq_kernel(i64 %107)
  %188 = add i64 %107, 8
  %189 = tail call fastcc i64 @ldq_kernel(i64 %188)
  %190 = trunc i64 %189 to i32
  %191 = and i32 %190, 65535
  br label %213

; <label>:192:                                    ; preds = %185
  %193 = icmp eq i32 %0, 1
  %194 = and i64 %107, %55
  %195 = add i64 %194, %54
  br i1 %193, label %196, label %206

; <label>:196:                                    ; preds = %192
  %197 = and i64 %195, 4294967295
  %198 = tail call fastcc i32 @ldl_kernel(i64 %197)
  %199 = zext i32 %198 to i64
  %200 = add i64 %107, 4
  %201 = and i64 %200, %55
  %202 = add i64 %201, %54
  %203 = and i64 %202, 4294967295
  %204 = tail call fastcc i32 @ldl_kernel(i64 %203)
  %205 = and i32 %204, 65535
  br label %213

; <label>:206:                                    ; preds = %192
  %207 = tail call fastcc i32 @lduw_kernel(i64 %195)
  %208 = zext i32 %207 to i64
  %209 = add i64 %107, 2
  %210 = and i64 %209, %55
  %211 = add i64 %210, %54
  %212 = tail call fastcc i32 @lduw_kernel(i64 %211)
  br label %213

; <label>:213:                                    ; preds = %206, %196, %186
  %214 = phi i32 [ %191, %186 ], [ %205, %196 ], [ %212, %206 ]
  %215 = phi i64 [ %187, %186 ], [ %199, %196 ], [ %208, %206 ]
  %216 = and i32 %214, 65532
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %263

; <label>:218:                                    ; preds = %213
  %219 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %220 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 16384
  %223 = icmp ne i32 %222, 0
  %224 = icmp ne i32 %87, 3
  %225 = and i1 %224, %223
  br i1 %225, label %226, label %262

; <label>:226:                                    ; preds = %218
  %227 = shl nuw nsw i32 %87, 13
  %228 = or i32 %227, 12620544
  %229 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 11, i64 2, i32 0
  store i32 %214, i32* %229, align 4
  %230 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %230, align 4
  %231 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %231, align 4
  %232 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 11, i64 2, i32 3
  store i32 %228, i32* %232, align 4
  %233 = trunc i32 %221 to i16
  %234 = icmp slt i16 %233, 0
  br i1 %234, label %258, label %235

; <label>:235:                                    ; preds = %226
  %236 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 16, i64 0
  %237 = load i64, i64* %236, align 4
  %238 = and i64 %237, 1
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %258, label %240

; <label>:240:                                    ; preds = %235
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 7
  %242 = load i64, i64* %241, align 4
  %243 = and i64 %242, 131072
  %244 = icmp ne i64 %243, 0
  %245 = and i32 %221, 16
  %246 = icmp eq i32 %245, 0
  %247 = or i1 %246, %244
  br i1 %247, label %258, label %248

; <label>:248:                                    ; preds = %240
  %249 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 11, i64 3, i32 1
  %250 = load i64, i64* %249, align 4
  %251 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %219, i64 0, i32 11, i64 0, i32 1
  %252 = load i64, i64* %251, align 4
  %253 = or i64 %252, %250
  %254 = icmp ne i64 %253, 0
  %255 = zext i1 %254 to i32
  %256 = shl nuw nsw i32 %255, 6
  %257 = or i32 %256, 32
  br label %258

; <label>:258:                                    ; preds = %248, %240, %235, %226
  %259 = phi i32 [ 32, %226 ], [ %257, %248 ], [ 96, %240 ], [ 96, %235 ]
  %260 = and i32 %221, -97
  %261 = or i32 %259, %260
  store i32 %261, i32* %220, align 4
  br label %357

; <label>:262:                                    ; preds = %218
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:263:                                    ; preds = %213
  %264 = and i32 %214, 3
  %265 = icmp eq i32 %264, %87
  br i1 %265, label %267, label %266

; <label>:266:                                    ; preds = %263
  tail call fastcc void @raise_exception_err(i32 13, i32 %216) #13
  unreachable

; <label>:267:                                    ; preds = %263
  %268 = and i32 %214, 4
  %269 = icmp eq i32 %268, 0
  %270 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %271 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %270, i64 0, i32 12
  %272 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %270, i64 0, i32 14
  %273 = select i1 %269, %struct.SegmentCache* %272, %struct.SegmentCache* %271
  %274 = or i32 %214, 7
  %275 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %273, i64 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = icmp ugt i32 %274, %276
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %267
  tail call fastcc void @raise_exception_err(i32 13, i32 %216) #13
  unreachable

; <label>:279:                                    ; preds = %267
  %280 = and i32 %214, -8
  %281 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %273, i64 0, i32 1
  %282 = load i64, i64* %281, align 4
  %283 = sext i32 %280 to i64
  %284 = add i64 %282, %283
  %285 = tail call fastcc i32 @ldl_kernel(i64 %284)
  %286 = add i64 %284, 4
  %287 = tail call fastcc i32 @ldl_kernel(i64 %286)
  %288 = and i32 %287, 6656
  %289 = icmp eq i32 %288, 4608
  br i1 %289, label %291, label %290

; <label>:290:                                    ; preds = %279
  tail call fastcc void @raise_exception_err(i32 13, i32 %216) #13
  unreachable

; <label>:291:                                    ; preds = %279
  %292 = lshr i32 %287, 13
  %293 = and i32 %292, 3
  %294 = icmp eq i32 %293, %87
  br i1 %294, label %296, label %295

; <label>:295:                                    ; preds = %291
  tail call fastcc void @raise_exception_err(i32 13, i32 %216) #13
  unreachable

; <label>:296:                                    ; preds = %291
  %297 = trunc i32 %287 to i16
  %298 = icmp slt i16 %297, 0
  br i1 %298, label %300, label %299

; <label>:299:                                    ; preds = %296
  tail call fastcc void @raise_exception_err(i32 11, i32 %216) #13
  unreachable

; <label>:300:                                    ; preds = %296
  %301 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %302 = lshr i32 %285, 16
  %303 = shl i32 %287, 16
  %304 = and i32 %303, 16711680
  %305 = and i32 %287, -16777216
  %306 = or i32 %305, %302
  %307 = or i32 %306, %304
  %308 = zext i32 %307 to i64
  %309 = and i32 %285, 65535
  %310 = and i32 %287, 983040
  %311 = or i32 %310, %309
  %312 = and i32 %287, 8388608
  %313 = icmp eq i32 %312, 0
  %314 = shl nuw i32 %311, 12
  %315 = or i32 %314, 4095
  %316 = select i1 %313, i32 %311, i32 %315
  %317 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 11, i64 2, i32 0
  store i32 %214, i32* %317, align 4
  %318 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 11, i64 2, i32 1
  store i64 %308, i64* %318, align 4
  %319 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 11, i64 2, i32 2
  store i32 %316, i32* %319, align 4
  %320 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 11, i64 2, i32 3
  store i32 %287, i32* %320, align 4
  %321 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 8
  %322 = load i32, i32* %321, align 4
  %323 = lshr i32 %287, 17
  %324 = and i32 %323, 32
  %325 = trunc i32 %322 to i16
  %326 = icmp slt i16 %325, 0
  br i1 %326, label %353, label %327

; <label>:327:                                    ; preds = %300
  %328 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 16, i64 0
  %329 = load i64, i64* %328, align 4
  %330 = and i64 %329, 1
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %340, label %332

; <label>:332:                                    ; preds = %327
  %333 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 7
  %334 = load i64, i64* %333, align 4
  %335 = and i64 %334, 131072
  %336 = icmp ne i64 %335, 0
  %337 = and i32 %322, 16
  %338 = icmp eq i32 %337, 0
  %339 = or i1 %338, %336
  br i1 %339, label %340, label %342

; <label>:340:                                    ; preds = %332, %327
  %341 = or i32 %324, 64
  br label %353

; <label>:342:                                    ; preds = %332
  %343 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 11, i64 3, i32 1
  %344 = load i64, i64* %343, align 4
  %345 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %301, i64 0, i32 11, i64 0, i32 1
  %346 = load i64, i64* %345, align 4
  %347 = or i64 %344, %308
  %348 = or i64 %347, %346
  %349 = icmp ne i64 %348, 0
  %350 = zext i1 %349 to i32
  %351 = shl nuw nsw i32 %350, 6
  %352 = or i32 %351, %324
  br label %353

; <label>:353:                                    ; preds = %342, %340, %300
  %354 = phi i32 [ %324, %300 ], [ %341, %340 ], [ %352, %342 ]
  %355 = and i32 %322, -97
  %356 = or i32 %354, %355
  store i32 %356, i32* %321, align 4
  br label %357

; <label>:357:                                    ; preds = %353, %258
  %358 = phi i64 [ 0, %258 ], [ %308, %353 ]
  %359 = phi i32 [ %228, %258 ], [ %287, %353 ]
  %360 = phi i32 [ %261, %258 ], [ %356, %353 ]
  %361 = phi %struct.CPUX86State* [ %219, %258 ], [ %301, %353 ]
  %362 = phi i32 [ 4194304, %258 ], [ %287, %353 ]
  %363 = lshr i32 %80, 16
  %364 = shl i32 %82, 16
  %365 = and i32 %364, 16711680
  %366 = and i32 %82, -16777216
  %367 = or i32 %366, %363
  %368 = or i32 %367, %365
  %369 = zext i32 %368 to i64
  %370 = and i32 %80, 65535
  %371 = and i32 %82, 983040
  %372 = or i32 %371, %370
  %373 = and i32 %82, 8388608
  %374 = icmp eq i32 %373, 0
  %375 = shl nuw i32 %372, 12
  %376 = or i32 %375, 4095
  %377 = select i1 %374, i32 %372, i32 %376
  %378 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 11, i64 1, i32 0
  store i32 %56, i32* %378, align 4
  %379 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 11, i64 1, i32 1
  store i64 %369, i64* %379, align 4
  %380 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 11, i64 1, i32 2
  store i32 %377, i32* %380, align 4
  %381 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 11, i64 1, i32 3
  store i32 %82, i32* %381, align 4
  %382 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 8
  %383 = and i32 %360, 16384
  %384 = icmp eq i32 %383, 0
  %385 = and i32 %82, 2097152
  %386 = icmp eq i32 %385, 0
  %387 = or i1 %386, %384
  br i1 %387, label %391, label %388

; <label>:388:                                    ; preds = %357
  %389 = and i32 %360, -32881
  %390 = or i32 %389, 32816
  br label %396

; <label>:391:                                    ; preds = %357
  %392 = lshr i32 %82, 18
  %393 = and i32 %392, 16
  %394 = and i32 %360, -32785
  %395 = or i32 %394, %393
  br label %396

; <label>:396:                                    ; preds = %391, %388
  %397 = phi i32 [ %390, %388 ], [ %395, %391 ]
  store i32 %397, i32* %382, align 4
  %398 = lshr i32 %359, 17
  %399 = and i32 %398, 32
  %400 = trunc i32 %397 to i16
  %401 = icmp slt i16 %400, 0
  br i1 %401, label %428, label %402

; <label>:402:                                    ; preds = %396
  %403 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 16, i64 0
  %404 = load i64, i64* %403, align 4
  %405 = and i64 %404, 1
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %415, label %407

; <label>:407:                                    ; preds = %402
  %408 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 7
  %409 = load i64, i64* %408, align 4
  %410 = and i64 %409, 131072
  %411 = icmp ne i64 %410, 0
  %412 = and i32 %397, 16
  %413 = icmp eq i32 %412, 0
  %414 = or i1 %413, %411
  br i1 %414, label %415, label %417

; <label>:415:                                    ; preds = %407, %402
  %416 = or i32 %399, 64
  br label %428

; <label>:417:                                    ; preds = %407
  %418 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 11, i64 3, i32 1
  %419 = load i64, i64* %418, align 4
  %420 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %361, i64 0, i32 11, i64 0, i32 1
  %421 = load i64, i64* %420, align 4
  %422 = or i64 %419, %358
  %423 = or i64 %422, %421
  %424 = icmp ne i64 %423, 0
  %425 = zext i1 %424 to i32
  %426 = shl nuw nsw i32 %425, 6
  %427 = or i32 %426, %399
  br label %428

; <label>:428:                                    ; preds = %417, %415, %396
  %429 = phi i32 [ %399, %396 ], [ %416, %415 ], [ %427, %417 ]
  %430 = and i32 %397, -97
  %431 = or i32 %429, %430
  store i32 %431, i32* %382, align 4
  %432 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %433 = load i32, i32* %432, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %440, label %435, !prof !2

; <label>:435:                                    ; preds = %428
  %436 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %437 = and i32 %431, 3
  tail call void %436(i32 %437, i32 %87)
  %438 = load i32, i32* %382, align 4
  %439 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %440

; <label>:440:                                    ; preds = %435, %428
  %441 = phi %struct.CPUX86State* [ %439, %435 ], [ %361, %428 ]
  %442 = phi i32 [ %438, %435 ], [ %431, %428 ]
  %443 = and i32 %442, -4
  %444 = or i32 %443, %87
  store i32 %444, i32* %382, align 4
  %445 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 8
  %446 = load i32, i32* %445, align 4
  %447 = trunc i32 %446 to i16
  %448 = icmp slt i16 %447, 0
  br i1 %448, label %455, label %449

; <label>:449:                                    ; preds = %440
  %450 = lshr i32 %362, 6
  %451 = and i32 %450, 65536
  %452 = xor i32 %451, 65536
  %453 = add nsw i32 %452, -1
  %454 = zext i32 %453 to i64
  br label %455

; <label>:455:                                    ; preds = %449, %440
  %456 = phi i64 [ %454, %449 ], [ -1, %440 ]
  %457 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = lshr i32 %458, 13
  %460 = and i32 %459, 3
  %461 = and i32 %458, 3072
  %462 = icmp ne i32 %461, 3072
  %463 = icmp ult i32 %460, %87
  %464 = and i1 %462, %463
  br i1 %464, label %465, label %508

; <label>:465:                                    ; preds = %455
  %466 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 0, i32 0
  %467 = bitcast i32* %466 to i8*
  br label %468

; <label>:468:                                    ; preds = %471, %465
  %469 = phi i64 [ 0, %465 ], [ %473, %471 ]
  %470 = icmp ult i64 %469, 20
  br i1 %470, label %471, label %474

; <label>:471:                                    ; preds = %468
  %472 = getelementptr i8, i8* %467, i64 %469
  store i8 0, i8* %472
  %473 = add i64 %469, 1
  br label %468

; <label>:474:                                    ; preds = %468
  %475 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = lshr i32 %476, 17
  %478 = and i32 %477, 32
  br i1 %448, label %504, label %479

; <label>:479:                                    ; preds = %474
  %480 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 16, i64 0
  %481 = load i64, i64* %480, align 4
  %482 = and i64 %481, 1
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %492, label %484

; <label>:484:                                    ; preds = %479
  %485 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 7
  %486 = load i64, i64* %485, align 4
  %487 = and i64 %486, 131072
  %488 = icmp ne i64 %487, 0
  %489 = and i32 %446, 16
  %490 = icmp eq i32 %489, 0
  %491 = or i1 %490, %488
  br i1 %491, label %492, label %494

; <label>:492:                                    ; preds = %484, %479
  %493 = or i32 %478, 64
  br label %504

; <label>:494:                                    ; preds = %484
  %495 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 3, i32 1
  %496 = load i64, i64* %495, align 4
  %497 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 1
  %498 = load i64, i64* %497, align 4
  %499 = or i64 %498, %496
  %500 = icmp ne i64 %499, 0
  %501 = zext i1 %500 to i32
  %502 = shl nuw nsw i32 %501, 6
  %503 = or i32 %502, %478
  br label %504

; <label>:504:                                    ; preds = %494, %492, %474
  %505 = phi i32 [ %478, %474 ], [ %493, %492 ], [ %503, %494 ]
  %506 = and i32 %446, -97
  %507 = or i32 %505, %506
  store i32 %507, i32* %445, align 4
  br label %508

; <label>:508:                                    ; preds = %504, %455
  %509 = phi i32 [ %446, %455 ], [ %507, %504 ]
  %510 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 3, i32 3
  %511 = load i32, i32* %510, align 4
  %512 = lshr i32 %511, 13
  %513 = and i32 %512, 3
  %514 = and i32 %511, 3072
  %515 = icmp ne i32 %514, 3072
  %516 = icmp ult i32 %513, %87
  %517 = and i1 %515, %516
  br i1 %517, label %518, label %563

; <label>:518:                                    ; preds = %508
  %519 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 3, i32 0
  %520 = bitcast i32* %519 to i8*
  br label %521

; <label>:521:                                    ; preds = %524, %518
  %522 = phi i64 [ 0, %518 ], [ %526, %524 ]
  %523 = icmp ult i64 %522, 20
  br i1 %523, label %524, label %527

; <label>:524:                                    ; preds = %521
  %525 = getelementptr i8, i8* %520, i64 %522
  store i8 0, i8* %525
  %526 = add i64 %522, 1
  br label %521

; <label>:527:                                    ; preds = %521
  %528 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = lshr i32 %529, 17
  %531 = and i32 %530, 32
  %532 = trunc i32 %509 to i16
  %533 = icmp slt i16 %532, 0
  br i1 %533, label %559, label %534

; <label>:534:                                    ; preds = %527
  %535 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 16, i64 0
  %536 = load i64, i64* %535, align 4
  %537 = and i64 %536, 1
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %547, label %539

; <label>:539:                                    ; preds = %534
  %540 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 7
  %541 = load i64, i64* %540, align 4
  %542 = and i64 %541, 131072
  %543 = icmp ne i64 %542, 0
  %544 = and i32 %509, 16
  %545 = icmp eq i32 %544, 0
  %546 = or i1 %545, %543
  br i1 %546, label %547, label %549

; <label>:547:                                    ; preds = %539, %534
  %548 = or i32 %531, 64
  br label %559

; <label>:549:                                    ; preds = %539
  %550 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 0, i32 1
  %551 = load i64, i64* %550, align 4
  %552 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 1
  %553 = load i64, i64* %552, align 4
  %554 = or i64 %553, %551
  %555 = icmp ne i64 %554, 0
  %556 = zext i1 %555 to i32
  %557 = shl nuw nsw i32 %556, 6
  %558 = or i32 %557, %531
  br label %559

; <label>:559:                                    ; preds = %549, %547, %527
  %560 = phi i32 [ %531, %527 ], [ %548, %547 ], [ %558, %549 ]
  %561 = and i32 %509, -97
  %562 = or i32 %560, %561
  store i32 %562, i32* %445, align 4
  br label %563

; <label>:563:                                    ; preds = %559, %508
  %564 = phi i32 [ %509, %508 ], [ %562, %559 ]
  %565 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 4, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, 65532
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %625, label %569

; <label>:569:                                    ; preds = %563
  %570 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 4, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = lshr i32 %571, 13
  %573 = and i32 %572, 3
  %574 = and i32 %571, 3072
  %575 = icmp ne i32 %574, 3072
  %576 = icmp ult i32 %573, %87
  %577 = and i1 %575, %576
  br i1 %577, label %578, label %625

; <label>:578:                                    ; preds = %569
  %579 = bitcast i32* %565 to i8*
  br label %580

; <label>:580:                                    ; preds = %583, %578
  %581 = phi i64 [ 0, %578 ], [ %585, %583 ]
  %582 = icmp ult i64 %581, 20
  br i1 %582, label %583, label %586

; <label>:583:                                    ; preds = %580
  %584 = getelementptr i8, i8* %579, i64 %581
  store i8 0, i8* %584
  %585 = add i64 %581, 1
  br label %580

; <label>:586:                                    ; preds = %580
  %587 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 3
  %588 = load i32, i32* %587, align 4
  %589 = lshr i32 %588, 17
  %590 = and i32 %589, 32
  %591 = trunc i32 %564 to i16
  %592 = icmp slt i16 %591, 0
  br i1 %592, label %621, label %593

; <label>:593:                                    ; preds = %586
  %594 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 16, i64 0
  %595 = load i64, i64* %594, align 4
  %596 = and i64 %595, 1
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %606, label %598

; <label>:598:                                    ; preds = %593
  %599 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 7
  %600 = load i64, i64* %599, align 4
  %601 = and i64 %600, 131072
  %602 = icmp ne i64 %601, 0
  %603 = and i32 %564, 16
  %604 = icmp eq i32 %603, 0
  %605 = or i1 %604, %602
  br i1 %605, label %606, label %608

; <label>:606:                                    ; preds = %598, %593
  %607 = or i32 %590, 64
  br label %621

; <label>:608:                                    ; preds = %598
  %609 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 3, i32 1
  %610 = load i64, i64* %609, align 4
  %611 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 0, i32 1
  %612 = load i64, i64* %611, align 4
  %613 = or i64 %612, %610
  %614 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 1
  %615 = load i64, i64* %614, align 4
  %616 = or i64 %613, %615
  %617 = icmp ne i64 %616, 0
  %618 = zext i1 %617 to i32
  %619 = shl nuw nsw i32 %618, 6
  %620 = or i32 %619, %590
  br label %621

; <label>:621:                                    ; preds = %608, %606, %586
  %622 = phi i32 [ %590, %586 ], [ %607, %606 ], [ %620, %608 ]
  %623 = and i32 %564, -97
  %624 = or i32 %622, %623
  store i32 %624, i32* %445, align 4
  br label %625

; <label>:625:                                    ; preds = %621, %569, %563
  %626 = phi i32 [ %564, %563 ], [ %564, %569 ], [ %624, %621 ]
  %627 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 5, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = and i32 %628, 65532
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %687, label %631

; <label>:631:                                    ; preds = %625
  %632 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 5, i32 3
  %633 = load i32, i32* %632, align 4
  %634 = lshr i32 %633, 13
  %635 = and i32 %634, 3
  %636 = and i32 %633, 3072
  %637 = icmp ne i32 %636, 3072
  %638 = icmp ult i32 %635, %87
  %639 = and i1 %637, %638
  br i1 %639, label %640, label %687

; <label>:640:                                    ; preds = %631
  %641 = bitcast i32* %627 to i8*
  br label %642

; <label>:642:                                    ; preds = %645, %640
  %643 = phi i64 [ 0, %640 ], [ %647, %645 ]
  %644 = icmp ult i64 %643, 20
  br i1 %644, label %645, label %648

; <label>:645:                                    ; preds = %642
  %646 = getelementptr i8, i8* %641, i64 %643
  store i8 0, i8* %646
  %647 = add i64 %643, 1
  br label %642

; <label>:648:                                    ; preds = %642
  %649 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 3
  %650 = load i32, i32* %649, align 4
  %651 = lshr i32 %650, 17
  %652 = and i32 %651, 32
  %653 = trunc i32 %626 to i16
  %654 = icmp slt i16 %653, 0
  br i1 %654, label %683, label %655

; <label>:655:                                    ; preds = %648
  %656 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 16, i64 0
  %657 = load i64, i64* %656, align 4
  %658 = and i64 %657, 1
  %659 = icmp eq i64 %658, 0
  br i1 %659, label %668, label %660

; <label>:660:                                    ; preds = %655
  %661 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 7
  %662 = load i64, i64* %661, align 4
  %663 = and i64 %662, 131072
  %664 = icmp ne i64 %663, 0
  %665 = and i32 %626, 16
  %666 = icmp eq i32 %665, 0
  %667 = or i1 %666, %664
  br i1 %667, label %668, label %670

; <label>:668:                                    ; preds = %660, %655
  %669 = or i32 %652, 64
  br label %683

; <label>:670:                                    ; preds = %660
  %671 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 3, i32 1
  %672 = load i64, i64* %671, align 4
  %673 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 0, i32 1
  %674 = load i64, i64* %673, align 4
  %675 = or i64 %674, %672
  %676 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %441, i64 0, i32 11, i64 2, i32 1
  %677 = load i64, i64* %676, align 4
  %678 = or i64 %675, %677
  %679 = icmp ne i64 %678, 0
  %680 = zext i1 %679 to i32
  %681 = shl nuw nsw i32 %680, 6
  %682 = or i32 %681, %652
  br label %683

; <label>:683:                                    ; preds = %670, %668, %648
  %684 = phi i32 [ %652, %648 ], [ %669, %668 ], [ %682, %670 ]
  %685 = and i32 %626, -97
  %686 = or i32 %684, %685
  store i32 %686, i32* %445, align 4
  br label %687

; <label>:687:                                    ; preds = %683, %631, %625
  %688 = add i64 %215, %106
  br label %689

; <label>:689:                                    ; preds = %687, %181
  %690 = phi %struct.CPUX86State* [ %441, %687 ], [ %110, %181 ]
  %691 = phi i64 [ %688, %687 ], [ %107, %181 ]
  %692 = phi i64 [ %456, %687 ], [ %55, %181 ]
  switch i64 %692, label %702 [
    i64 65535, label %693
    i64 4294967295, label %699
  ]

; <label>:693:                                    ; preds = %689
  %694 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %690, i64 0, i32 0, i64 4
  %695 = load i64, i64* %694, align 16
  %696 = and i64 %695, -65536
  %697 = and i64 %691, 65535
  %698 = or i64 %696, %697
  store i64 %698, i64* %694, align 16
  br label %704

; <label>:699:                                    ; preds = %689
  %700 = and i64 %691, 4294967295
  %701 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %690, i64 0, i32 0, i64 4
  store i64 %700, i64* %701, align 16
  br label %704

; <label>:702:                                    ; preds = %689
  %703 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %690, i64 0, i32 0, i64 4
  store i64 %691, i64* %703, align 16
  br label %704

; <label>:704:                                    ; preds = %702, %699, %693
  %705 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %690, i64 0, i32 5
  store i64 %58, i64* %705, align 16
  br i1 %108, label %712, label %706

; <label>:706:                                    ; preds = %704
  %707 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %708 = load i32, i32* %707, align 4
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %712, label %710, !prof !2

; <label>:710:                                    ; preds = %706
  %711 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %711(i32 %6, i32 %87)
  br label %712

; <label>:712:                                    ; preds = %704, %706, %710
  ret void
}

; Function Attrs: uwtable
define void @helper_sysenter() local_unnamed_addr #2 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 3
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 39
  %6 = load i32, i32* %5, align 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %0
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:9:                                      ; preds = %0
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 7
  %11 = load i64, i64* %10, align 4
  %12 = and i64 %11, -197121
  store i64 %12, i64* %10, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !2

; <label>:16:                                     ; preds = %9
  %17 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %17(i32 %4, i32 0)
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %20

; <label>:20:                                     ; preds = %9, %16
  %21 = phi %struct.CPUX86State* [ %19, %16 ], [ %1, %9 ]
  %22 = phi i32 [ %18, %16 ], [ %3, %9 ]
  %23 = and i32 %22, -4
  store i32 %23, i32* %2, align 4
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 39
  %29 = load i32, i32* %28, align 16
  %30 = and i32 %29, 65532
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %32, align 4
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 3
  br i1 %27, label %44, label %35

; <label>:35:                                     ; preds = %20
  store i32 14719744, i32* %34, align 4
  %36 = and i32 %25, -32881
  %37 = or i32 %36, 32816
  store i32 %37, i32* %24, align 4
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = lshr i32 %39, 17
  %41 = and i32 %40, 32
  %42 = or i32 %36, 32784
  %43 = or i32 %41, %42
  br label %79

; <label>:44:                                     ; preds = %20
  store i32 12622592, i32* %34, align 4
  %45 = and i32 %25, -32785
  %46 = or i32 %45, 16
  store i32 %46, i32* %24, align 4
  %47 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = lshr i32 %48, 17
  %50 = and i32 %49, 32
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 16, i64 0
  %52 = load i64, i64* %51, align 4
  %53 = and i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 7
  %57 = load i64, i64* %56, align 4
  %58 = and i64 %57, 131072
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %60

; <label>:60:                                     ; preds = %55, %44
  %61 = or i32 %50, 64
  br label %75

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 3, i32 1
  %64 = load i64, i64* %63, align 4
  %65 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 0, i32 1
  %66 = load i64, i64* %65, align 4
  %67 = or i64 %66, %64
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 1
  %69 = load i64, i64* %68, align 4
  %70 = or i64 %67, %69
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = shl nuw nsw i32 %72, 6
  %74 = or i32 %73, %50
  br label %75

; <label>:75:                                     ; preds = %60, %62
  %76 = phi i32 [ %61, %60 ], [ %74, %62 ]
  %77 = and i32 %46, -32865
  %78 = or i32 %76, %77
  br label %79

; <label>:79:                                     ; preds = %75, %35
  %80 = phi i32* [ %47, %75 ], [ %38, %35 ]
  %81 = phi i32 [ %78, %75 ], [ %43, %35 ]
  store i32 %81, i32* %24, align 4
  %82 = add i32 %29, 8
  %83 = and i32 %82, 65532
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %85, align 4
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %86, align 4
  store i32 12620544, i32* %80, align 4
  %87 = trunc i32 %81 to i16
  %88 = icmp slt i16 %87, 0
  br i1 %88, label %112, label %89

; <label>:89:                                     ; preds = %79
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 16, i64 0
  %91 = load i64, i64* %90, align 4
  %92 = and i64 %91, 1
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %112, label %94

; <label>:94:                                     ; preds = %89
  %95 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 7
  %96 = load i64, i64* %95, align 4
  %97 = and i64 %96, 131072
  %98 = icmp ne i64 %97, 0
  %99 = and i32 %81, 16
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %100, %98
  br i1 %101, label %112, label %102

; <label>:102:                                    ; preds = %94
  %103 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 3, i32 1
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 0, i32 1
  %106 = load i64, i64* %105, align 4
  %107 = or i64 %106, %104
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = shl nuw nsw i32 %109, 6
  %111 = or i32 %110, 32
  br label %112

; <label>:112:                                    ; preds = %89, %94, %79, %102
  %113 = phi i32 [ 32, %79 ], [ %111, %102 ], [ 96, %94 ], [ 96, %89 ]
  %114 = and i32 %81, -97
  %115 = or i32 %113, %114
  store i32 %115, i32* %24, align 4
  %116 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 40
  %117 = load i64, i64* %116, align 4
  %118 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 0, i64 4
  store i64 %117, i64* %118, align 16
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 41
  %120 = load i64, i64* %119, align 4
  %121 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 5
  store i64 %120, i64* %121, align 16
  %122 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !2

; <label>:125:                                    ; preds = %112
  %126 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %126(i32 %4, i32 0)
  br label %127

; <label>:127:                                    ; preds = %112, %125
  ret void
}

; Function Attrs: uwtable
define void @helper_sysexit(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 3
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 39
  %7 = load i32, i32* %6, align 16
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i32 %5, 0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  tail call fastcc void @raise_exception_err(i32 13, i32 0) #13
  unreachable

; <label>:12:                                     ; preds = %1
  %13 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !2

; <label>:16:                                     ; preds = %12
  %17 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %17(i32 0, i32 3)
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %20

; <label>:20:                                     ; preds = %12, %16
  %21 = phi %struct.CPUX86State* [ %2, %12 ], [ %19, %16 ]
  %22 = phi i32 [ %4, %12 ], [ %18, %16 ]
  %23 = or i32 %22, 3
  store i32 %23, i32* %3, align 4
  %24 = icmp eq i32 %0, 2
  %25 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 39
  %26 = load i32, i32* %25, align 16
  br i1 %24, label %27, label %111

; <label>:27:                                     ; preds = %20
  %28 = add i32 %26, 32
  %29 = and i32 %28, 65532
  %30 = or i32 %29, 3
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %32, align 4
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 3
  store i32 14744320, i32* %34, align 4
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 16384
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %36, -32881
  %40 = or i32 %39, 32816
  %41 = and i32 %36, -32785
  %42 = or i32 %41, 16
  %43 = select i1 %38, i32 %42, i32 %40
  store i32 %43, i32* %35, align 4
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = lshr i32 %45, 17
  %47 = and i32 %46, 32
  %48 = trunc i32 %43 to i16
  %49 = icmp slt i16 %48, 0
  br i1 %49, label %75, label %50

; <label>:50:                                     ; preds = %27
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 16, i64 0
  %52 = load i64, i64* %51, align 4
  %53 = and i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 7
  %57 = load i64, i64* %56, align 4
  %58 = and i64 %57, 131072
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %60

; <label>:60:                                     ; preds = %55, %50
  %61 = or i32 %47, 64
  br label %75

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 3, i32 1
  %64 = load i64, i64* %63, align 4
  %65 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 0, i32 1
  %66 = load i64, i64* %65, align 4
  %67 = or i64 %66, %64
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 1
  %69 = load i64, i64* %68, align 4
  %70 = or i64 %67, %69
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = shl nuw nsw i32 %72, 6
  %74 = or i32 %73, %47
  br label %75

; <label>:75:                                     ; preds = %27, %60, %62
  %76 = phi i32 [ %47, %27 ], [ %61, %60 ], [ %74, %62 ]
  %77 = and i32 %43, -97
  %78 = or i32 %76, %77
  store i32 %78, i32* %35, align 4
  %79 = add i32 %26, 40
  %80 = and i32 %79, 65532
  %81 = or i32 %80, 3
  %82 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 1
  store i64 0, i64* %83, align 4
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %84, align 4
  store i32 12645120, i32* %44, align 4
  %85 = trunc i32 %78 to i16
  %86 = icmp slt i16 %85, 0
  br i1 %86, label %107, label %87

; <label>:87:                                     ; preds = %75
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 16, i64 0
  %89 = load i64, i64* %88, align 4
  %90 = and i64 %89, 1
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %107, label %92

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 7
  %94 = load i64, i64* %93, align 4
  %95 = and i64 %94, 131072
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %107

; <label>:97:                                     ; preds = %92
  %98 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 3, i32 1
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 0, i32 1
  %101 = load i64, i64* %100, align 4
  %102 = or i64 %101, %99
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = shl nuw nsw i32 %104, 6
  %106 = or i32 %105, 32
  br label %107

; <label>:107:                                    ; preds = %92, %87, %75, %97
  %108 = phi i32 [ 32, %75 ], [ %106, %97 ], [ 96, %92 ], [ 96, %87 ]
  %109 = and i32 %78, -97
  %110 = or i32 %108, %109
  store i32 %110, i32* %35, align 4
  br label %185

; <label>:111:                                    ; preds = %20
  %112 = add i32 %26, 16
  %113 = and i32 %112, 65532
  %114 = or i32 %113, 3
  %115 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 0
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 1
  store i64 0, i64* %116, align 4
  %117 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 2
  store i32 -1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 1, i32 3
  store i32 12647168, i32* %118, align 4
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, -32785
  %122 = or i32 %121, 16
  store i32 %122, i32* %119, align 4
  %123 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = lshr i32 %124, 17
  %126 = and i32 %125, 32
  %127 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 16, i64 0
  %128 = load i64, i64* %127, align 4
  %129 = and i64 %128, 1
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %136, label %131

; <label>:131:                                    ; preds = %111
  %132 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 7
  %133 = load i64, i64* %132, align 4
  %134 = and i64 %133, 131072
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %139, label %136

; <label>:136:                                    ; preds = %131, %111
  %137 = or i32 %126, 64
  %138 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 1
  br label %152

; <label>:139:                                    ; preds = %131
  %140 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 3, i32 1
  %141 = load i64, i64* %140, align 4
  %142 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 0, i32 1
  %143 = load i64, i64* %142, align 4
  %144 = or i64 %143, %141
  %145 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 1
  %146 = load i64, i64* %145, align 4
  %147 = or i64 %144, %146
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = shl nuw nsw i32 %149, 6
  %151 = or i32 %150, %126
  br label %152

; <label>:152:                                    ; preds = %136, %139
  %153 = phi i64* [ %138, %136 ], [ %145, %139 ]
  %154 = phi i32 [ %137, %136 ], [ %151, %139 ]
  %155 = and i32 %122, -32865
  %156 = or i32 %154, %155
  store i32 %156, i32* %119, align 4
  %157 = add i32 %26, 24
  %158 = and i32 %157, 65532
  %159 = or i32 %158, 3
  %160 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 0
  store i32 %159, i32* %160, align 4
  store i64 0, i64* %153, align 4
  %161 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 2, i32 2
  store i32 -1, i32* %161, align 4
  store i32 12645120, i32* %123, align 4
  %162 = trunc i32 %154 to i16
  %163 = icmp slt i16 %162, 0
  %164 = or i1 %163, %130
  %165 = select i1 %163, i32 32, i32 96
  br i1 %164, label %181, label %166

; <label>:166:                                    ; preds = %152
  %167 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 7
  %168 = load i64, i64* %167, align 4
  %169 = and i64 %168, 131072
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %181

; <label>:171:                                    ; preds = %166
  %172 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 3, i32 1
  %173 = load i64, i64* %172, align 4
  %174 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 11, i64 0, i32 1
  %175 = load i64, i64* %174, align 4
  %176 = or i64 %175, %173
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = shl nuw nsw i32 %178, 6
  %180 = or i32 %179, 32
  br label %181

; <label>:181:                                    ; preds = %152, %166, %171
  %182 = phi i32 [ %165, %152 ], [ %180, %171 ], [ 96, %166 ]
  %183 = and i32 %156, -97
  %184 = or i32 %182, %183
  store i32 %184, i32* %119, align 4
  br label %185

; <label>:185:                                    ; preds = %181, %107
  %186 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 0, i64 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 0, i64 4
  store i64 %187, i64* %188, align 16
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 0, i64 2
  %190 = load i64, i64* %189, align 16
  %191 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 5
  store i64 %190, i64* %191, align 16
  %192 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195, !prof !2

; <label>:195:                                    ; preds = %185
  %196 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %196(i32 0, i32 3)
  br label %197

; <label>:197:                                    ; preds = %185, %195
  ret void
}

; Function Attrs: uwtable
define i64 @helper_read_crN(i32) local_unnamed_addr #2 {
  tail call void @helper_svm_check_intercept_param(i32 %0, i64 0)
  %2 = icmp eq i32 %0, 8
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 16, i64 %4
  %7 = load i64, i64* %6, align 4
  br label %23

; <label>:8:                                      ; preds = %1
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 148
  %16 = load %struct.DeviceState*, %struct.DeviceState** %15, align 8
  %17 = tail call zeroext i8 @cpu_get_apic_tpr(%struct.DeviceState* %16)
  %18 = zext i8 %17 to i64
  br label %23

; <label>:19:                                     ; preds = %8
  %20 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 54
  %21 = load i8, i8* %20, align 4
  %22 = zext i8 %21 to i64
  br label %23

; <label>:23:                                     ; preds = %14, %19, %3
  %24 = phi i64 [ %22, %19 ], [ %18, %14 ], [ %7, %3 ]
  ret i64 %24
}

declare zeroext i8 @cpu_get_apic_tpr(%struct.DeviceState*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_write_crN(i32, i64) local_unnamed_addr #2 {
  %3 = add nsw i32 %0, 16
  tail call void @helper_svm_check_intercept_param(i32 %3, i64 0)
  switch i32 %0, label %30 [
    i32 0, label %4
    i32 3, label %7
    i32 4, label %9
    i32 8, label %12
  ]

; <label>:4:                                      ; preds = %2
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = trunc i64 %1 to i32
  tail call void @cpu_x86_update_cr0(%struct.CPUX86State* %5, i32 %6)
  br label %34

; <label>:7:                                      ; preds = %2
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @cpu_x86_update_cr3(%struct.CPUX86State* %8, i64 %1)
  br label %34

; <label>:9:                                      ; preds = %2
  %10 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %11 = trunc i64 %1 to i32
  tail call void @cpu_x86_update_cr4(%struct.CPUX86State* %10, i32 %11)
  br label %34

; <label>:12:                                     ; preds = %2
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %12
  %19 = trunc i64 %1 to i8
  br label %25

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 148
  %22 = load %struct.DeviceState*, %struct.DeviceState** %21, align 8
  %23 = trunc i64 %1 to i8
  tail call void @cpu_set_apic_tpr(%struct.DeviceState* %22, i8 zeroext %23)
  %24 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %20
  %26 = phi i8 [ %19, %18 ], [ %23, %20 ]
  %27 = phi %struct.CPUX86State* [ %13, %18 ], [ %24, %20 ]
  %28 = and i8 %26, 15
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %27, i64 0, i32 54
  store i8 %28, i8* %29, align 4
  br label %34

; <label>:30:                                     ; preds = %2
  %31 = sext i32 %0 to i64
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %32, i64 0, i32 16, i64 %31
  store i64 %1, i64* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %30, %25, %9, %7, %4
  ret void
}

declare void @cpu_set_apic_tpr(%struct.DeviceState*, i8 zeroext) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_movl_drN_T0(i32, i64) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 4
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %2
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %5, i32 %0)
  %6 = sext i32 %0 to i64
  %7 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %7, i64 0, i32 72, i64 %6
  store i64 %1, i64* %8, align 8
  tail call void @hw_breakpoint_insert(%struct.CPUX86State* %7, i32 %0)
  br label %25

; <label>:9:                                      ; preds = %2
  %10 = icmp eq i32 %0, 7
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %9
  %12 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %12, i32 0)
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %13, i32 1)
  %14 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %14, i32 2)
  %15 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_remove(%struct.CPUX86State* %15, i32 3)
  %16 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %17 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %16, i64 0, i32 72, i64 7
  store i64 %1, i64* %17, align 8
  tail call void @hw_breakpoint_insert(%struct.CPUX86State* %16, i32 0)
  %18 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_insert(%struct.CPUX86State* %18, i32 1)
  %19 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_insert(%struct.CPUX86State* %19, i32 2)
  %20 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @hw_breakpoint_insert(%struct.CPUX86State* %20, i32 3)
  br label %25

; <label>:21:                                     ; preds = %9
  %22 = sext i32 %0 to i64
  %23 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 72, i64 %22
  store i64 %1, i64* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %11, %21, %4
  ret void
}

declare void @hw_breakpoint_insert(%struct.CPUX86State*, i32) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_lmsw(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 16, i64 0
  %4 = load i64, i64* %3, align 4
  %5 = and i64 %4, 4294967281
  %6 = and i64 %0, 15
  %7 = or i64 %5, %6
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12, !prof !2

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 50
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %12
  tail call void @helper_vmexit(i32 16, i64 0)
  unreachable

; <label>:18:                                     ; preds = %1, %12
  %19 = trunc i64 %7 to i32
  tail call void @cpu_x86_update_cr0(%struct.CPUX86State* %2, i32 %19)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_clts() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 16, i64 0
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, -9
  store i64 %4, i64* %2, align 4
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, -2049
  store i32 %7, i32* %5, align 4
  ret void
}

; Function Attrs: uwtable
define void @helper_invlpg(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !2

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 48
  %9 = load i64, i64* %8, align 16
  %10 = and i64 %9, 33554432
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %7
  tail call void @helper_vmexit(i32 121, i64 0)
  unreachable

; <label>:13:                                     ; preds = %1, %7
  tail call void @tlb_flush_page(%struct.CPUX86State* %2, i64 %0)
  ret void
}

declare void @tlb_flush_page(%struct.CPUX86State*, i64) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_rdtsc() local_unnamed_addr #2 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 16, i64 4
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, 4
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %5, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %0
  tail call fastcc void @raise_exception(i32 13) #13
  unreachable

; <label>:12:                                     ; preds = %0
  %13 = and i32 %7, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15, !prof !2

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 48
  %17 = load i64, i64* %16, align 16
  %18 = and i64 %17, 16384
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %15
  tail call void @helper_vmexit(i32 110, i64 0)
  unreachable

; <label>:21:                                     ; preds = %12, %15
  %22 = tail call i64 @cpu_get_tsc(%struct.CPUX86State* nonnull %1)
  %23 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 47
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %22
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = lshr i64 %26, 32
  %30 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 0, i64 2
  store i64 %29, i64* %31, align 16
  ret void
}

declare i64 @cpu_get_tsc(%struct.CPUX86State*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_rdtscp() local_unnamed_addr #2 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 16, i64 4
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, 4
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %5, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %0
  tail call fastcc void @raise_exception(i32 13) #13
  unreachable

; <label>:12:                                     ; preds = %0
  %13 = and i32 %7, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15, !prof !2

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 48
  %17 = load i64, i64* %16, align 16
  %18 = and i64 %17, 16384
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %15
  tail call void @helper_vmexit(i32 110, i64 0)
  unreachable

; <label>:21:                                     ; preds = %12, %15
  %22 = tail call i64 @cpu_get_tsc(%struct.CPUX86State* nonnull %1)
  %23 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 47
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %22
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %23, i64 0, i32 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = lshr i64 %26, 32
  %30 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 0, i64 2
  store i64 %29, i64* %31, align 16
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 152
  %33 = load i64, i64* %32, align 16
  %34 = and i64 %33, 4294967295
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 0, i64 1
  store i64 %34, i64* %35, align 8
  ret void
}

; Function Attrs: noreturn uwtable
define void @helper_rdpmc() local_unnamed_addr #3 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 16, i64 4
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, 256
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %6
  tail call fastcc void @raise_exception(i32 13) #13
  unreachable

; <label>:12:                                     ; preds = %6, %0
  tail call void @helper_svm_check_intercept_param(i32 111, i64 0)
  tail call fastcc void @raise_exception_err(i32 6, i32 0) #13
  unreachable
}

; Function Attrs: uwtable
define void @helper_wrmsr_v(i64, i64) local_unnamed_addr #2 {
  %3 = trunc i64 %0 to i32
  switch i32 %3, label %133 [
    i32 372, label %4
    i32 373, label %9
    i32 374, label %12
    i32 27, label %15
    i32 -1073741696, label %19
    i32 -1073741695, label %58
    i32 631, label %61
    i32 -1073676009, label %64
    i32 -1073741694, label %67
    i32 -1073741693, label %70
    i32 -1073741692, label %73
    i32 -1073741568, label %76
    i32 -1073741567, label %79
    i32 -1073741566, label %82
    i32 512, label %85
    i32 514, label %85
    i32 516, label %85
    i32 518, label %85
    i32 520, label %85
    i32 522, label %85
    i32 524, label %85
    i32 526, label %85
    i32 513, label %91
    i32 515, label %91
    i32 517, label %91
    i32 519, label %91
    i32 521, label %91
    i32 523, label %91
    i32 525, label %91
    i32 527, label %91
    i32 592, label %97
    i32 600, label %102
    i32 601, label %102
    i32 616, label %107
    i32 617, label %107
    i32 618, label %107
    i32 619, label %107
    i32 620, label %107
    i32 621, label %107
    i32 622, label %107
    i32 623, label %107
    i32 767, label %112
    i32 378, label %115
    i32 379, label %118
    i32 -1073741565, label %127
    i32 416, label %130
  ]

; <label>:4:                                      ; preds = %2
  %5 = trunc i64 %1 to i32
  %6 = and i32 %5, 65535
  %7 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %7, i64 0, i32 39
  store i32 %6, i32* %8, align 16
  br label %152

; <label>:9:                                      ; preds = %2
  %10 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 40
  store i64 %1, i64* %11, align 4
  br label %152

; <label>:12:                                     ; preds = %2
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 41
  store i64 %1, i64* %14, align 4
  br label %152

; <label>:15:                                     ; preds = %2
  %16 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %17 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %16, i64 0, i32 148
  %18 = load %struct.DeviceState*, %struct.DeviceState** %17, align 8
  tail call void @cpu_set_apic_base(%struct.DeviceState* %18, i64 %1)
  br label %152

; <label>:19:                                     ; preds = %2
  %20 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %20, i64 0, i32 133
  %22 = bitcast i32* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 11
  %26 = and i32 %25, 1
  %27 = lshr i32 %24, 21
  %28 = and i32 %27, 256
  %29 = or i32 %28, %26
  %30 = lshr i32 %24, 11
  %31 = and i32 %30, 16384
  %32 = or i32 %29, %31
  %33 = lshr i32 %24, 9
  %34 = and i32 %33, 2048
  %35 = or i32 %32, %34
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %23, 22
  %38 = and i64 %37, 4096
  %39 = zext i32 %31 to i64
  %40 = or i64 %38, %39
  %41 = or i64 %40, %36
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %20, i64 0, i32 43
  %43 = load i64, i64* %42, align 8
  %44 = xor i64 %41, -1
  %45 = and i64 %43, %44
  %46 = and i64 %41, %1
  %47 = or i64 %45, %46
  store i64 %47, i64* %42, align 8
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %20, i64 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -1064961
  %51 = trunc i64 %47 to i32
  %52 = shl i32 %51, 4
  %53 = and i32 %52, 16384
  %54 = or i32 %53, %50
  %55 = shl i32 %51, 8
  %56 = and i32 %55, 1048576
  %57 = or i32 %54, %56
  store i32 %57, i32* %48, align 4
  br label %152

; <label>:58:                                     ; preds = %2
  %59 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %60 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %59, i64 0, i32 44
  store i64 %1, i64* %60, align 16
  br label %152

; <label>:61:                                     ; preds = %2
  %62 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %62, i64 0, i32 123
  store i64 %1, i64* %63, align 16
  br label %152

; <label>:64:                                     ; preds = %2
  %65 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %66 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %65, i64 0, i32 45
  store i64 %1, i64* %66, align 8
  br label %152

; <label>:67:                                     ; preds = %2
  %68 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %69 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %68, i64 0, i32 58
  store i64 %1, i64* %69, align 16
  br label %152

; <label>:70:                                     ; preds = %2
  %71 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %72 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 59
  store i64 %1, i64* %72, align 8
  br label %152

; <label>:73:                                     ; preds = %2
  %74 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %75 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %74, i64 0, i32 60
  store i64 %1, i64* %75, align 16
  br label %152

; <label>:76:                                     ; preds = %2
  %77 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %78 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %77, i64 0, i32 11, i64 4, i32 1
  store i64 %1, i64* %78, align 4
  br label %152

; <label>:79:                                     ; preds = %2
  %80 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %80, i64 0, i32 11, i64 5, i32 1
  store i64 %1, i64* %81, align 4
  br label %152

; <label>:82:                                     ; preds = %2
  %83 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %84 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %83, i64 0, i32 61
  store i64 %1, i64* %84, align 8
  br label %152

; <label>:85:                                     ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %86 = add i64 %0, 4294966784
  %87 = lshr i64 %86, 1
  %88 = and i64 %87, 2147483647
  %89 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %89, i64 0, i32 141, i64 %88, i32 0
  store i64 %1, i64* %90, align 16
  br label %152

; <label>:91:                                     ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %92 = add i64 %0, 4294966783
  %93 = lshr i64 %92, 1
  %94 = and i64 %93, 2147483647
  %95 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 141, i64 %94, i32 1
  store i64 %1, i64* %96, align 8
  br label %152

; <label>:97:                                     ; preds = %2
  %98 = add i64 %0, 4294966704
  %99 = and i64 %98, 4294967295
  %100 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %101 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %100, i64 0, i32 139, i64 %99
  store i64 %1, i64* %101, align 8
  br label %152

; <label>:102:                                    ; preds = %2, %2
  %103 = add i64 %0, 4294966697
  %104 = and i64 %103, 4294967295
  %105 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %106 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %105, i64 0, i32 139, i64 %104
  store i64 %1, i64* %106, align 8
  br label %152

; <label>:107:                                    ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %108 = add i64 %0, 4294966683
  %109 = and i64 %108, 4294967295
  %110 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %111 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %110, i64 0, i32 139, i64 %109
  store i64 %1, i64* %111, align 8
  br label %152

; <label>:112:                                    ; preds = %2
  %113 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %114 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %113, i64 0, i32 140
  store i64 %1, i64* %114, align 8
  br label %152

; <label>:115:                                    ; preds = %2
  %116 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %117 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %116, i64 0, i32 67
  store i64 %1, i64* %117, align 8
  br label %152

; <label>:118:                                    ; preds = %2
  %119 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %120 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %119, i64 0, i32 149
  %121 = load i64, i64* %120, align 16
  %122 = and i64 %121, 256
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %152, label %124

; <label>:124:                                    ; preds = %118
  switch i64 %1, label %152 [
    i64 -1, label %125
    i64 0, label %125
  ]

; <label>:125:                                    ; preds = %124, %124
  %126 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %119, i64 0, i32 150
  store i64 %1, i64* %126, align 8
  br label %152

; <label>:127:                                    ; preds = %2
  %128 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %129 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %128, i64 0, i32 152
  store i64 %1, i64* %129, align 16
  br label %152

; <label>:130:                                    ; preds = %2
  %131 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %132 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %131, i64 0, i32 68
  store i64 %1, i64* %132, align 16
  br label %152

; <label>:133:                                    ; preds = %2
  %134 = icmp ugt i32 %3, 1023
  br i1 %134, label %135, label %152

; <label>:135:                                    ; preds = %133
  %136 = and i64 %0, 4294967295
  %137 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %138 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %137, i64 0, i32 149
  %139 = load i64, i64* %138, align 16
  %140 = shl i64 %139, 2
  %141 = and i64 %140, 252
  %142 = or i64 %141, 1024
  %143 = icmp ult i64 %136, %142
  br i1 %143, label %144, label %152

; <label>:144:                                    ; preds = %135
  %145 = add i32 %3, -1024
  %146 = and i32 %145, 3
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

; <label>:148:                                    ; preds = %144
  switch i64 %1, label %152 [
    i64 -1, label %149
    i64 0, label %149
  ]

; <label>:149:                                    ; preds = %144, %148, %148
  %150 = zext i32 %145 to i64
  %151 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %137, i64 0, i32 151, i64 %150
  store i64 %1, i64* %151, align 8
  br label %152

; <label>:152:                                    ; preds = %149, %148, %124, %118, %133, %135, %125, %130, %127, %115, %112, %107, %102, %97, %91, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %19, %15, %12, %9, %4
  ret void
}

declare void @cpu_set_apic_base(%struct.DeviceState*, i64) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_wrmsr() local_unnamed_addr #2 {
  tail call void @helper_svm_check_intercept_param(i32 124, i64 1)
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 0
  %3 = load i64, i64* %2, align 16
  %4 = and i64 %3, 4294967295
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 2
  %6 = load i64, i64* %5, align 16
  %7 = shl i64 %6, 32
  %8 = or i64 %7, %4
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 8
  tail call void @helper_wrmsr_v(i64 %10, i64 %8)
  ret void
}

; Function Attrs: uwtable
define i64 @helper_rdmsr_v(i64) local_unnamed_addr #2 {
  %2 = trunc i64 %0 to i32
  switch i32 %2, label %127 [
    i32 372, label %3
    i32 373, label %8
    i32 374, label %12
    i32 27, label %16
    i32 -1073741696, label %21
    i32 -1073741695, label %25
    i32 631, label %29
    i32 -1073676009, label %33
    i32 408, label %143
    i32 -1073741694, label %37
    i32 -1073741693, label %41
    i32 -1073741692, label %45
    i32 -1073741568, label %49
    i32 -1073741567, label %53
    i32 -1073741566, label %57
    i32 -1073741565, label %61
    i32 512, label %65
    i32 514, label %65
    i32 516, label %65
    i32 518, label %65
    i32 520, label %65
    i32 522, label %65
    i32 524, label %65
    i32 526, label %65
    i32 513, label %72
    i32 515, label %72
    i32 517, label %72
    i32 519, label %72
    i32 521, label %72
    i32 523, label %72
    i32 525, label %72
    i32 527, label %72
    i32 592, label %79
    i32 600, label %83
    i32 601, label %83
    i32 616, label %89
    i32 617, label %89
    i32 618, label %89
    i32 619, label %89
    i32 620, label %89
    i32 621, label %89
    i32 622, label %89
    i32 623, label %89
    i32 767, label %95
    i32 254, label %99
    i32 377, label %106
    i32 379, label %110
    i32 378, label %119
    i32 416, label %123
  ]

; <label>:3:                                      ; preds = %1
  %4 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 39
  %6 = load i32, i32* %5, align 16
  %7 = zext i32 %6 to i64
  br label %143

; <label>:8:                                      ; preds = %1
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 40
  %11 = load i64, i64* %10, align 4
  br label %143

; <label>:12:                                     ; preds = %1
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 41
  %15 = load i64, i64* %14, align 4
  br label %143

; <label>:16:                                     ; preds = %1
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 148
  %19 = load %struct.DeviceState*, %struct.DeviceState** %18, align 8
  %20 = tail call i64 @cpu_get_apic_base(%struct.DeviceState* %19)
  br label %143

; <label>:21:                                     ; preds = %1
  %22 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %22, i64 0, i32 43
  %24 = load i64, i64* %23, align 8
  br label %143

; <label>:25:                                     ; preds = %1
  %26 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %27 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %26, i64 0, i32 44
  %28 = load i64, i64* %27, align 16
  br label %143

; <label>:29:                                     ; preds = %1
  %30 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %30, i64 0, i32 123
  %32 = load i64, i64* %31, align 16
  br label %143

; <label>:33:                                     ; preds = %1
  %34 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %35 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %34, i64 0, i32 45
  %36 = load i64, i64* %35, align 8
  br label %143

; <label>:37:                                     ; preds = %1
  %38 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %38, i64 0, i32 58
  %40 = load i64, i64* %39, align 16
  br label %143

; <label>:41:                                     ; preds = %1
  %42 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %43 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 59
  %44 = load i64, i64* %43, align 8
  br label %143

; <label>:45:                                     ; preds = %1
  %46 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %47 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %46, i64 0, i32 60
  %48 = load i64, i64* %47, align 16
  br label %143

; <label>:49:                                     ; preds = %1
  %50 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 11, i64 4, i32 1
  %52 = load i64, i64* %51, align 4
  br label %143

; <label>:53:                                     ; preds = %1
  %54 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %55 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %54, i64 0, i32 11, i64 5, i32 1
  %56 = load i64, i64* %55, align 4
  br label %143

; <label>:57:                                     ; preds = %1
  %58 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %59 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %58, i64 0, i32 61
  %60 = load i64, i64* %59, align 8
  br label %143

; <label>:61:                                     ; preds = %1
  %62 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %62, i64 0, i32 152
  %64 = load i64, i64* %63, align 16
  br label %143

; <label>:65:                                     ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %66 = add i64 %0, 4294966784
  %67 = lshr i64 %66, 1
  %68 = and i64 %67, 2147483647
  %69 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %70 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %69, i64 0, i32 141, i64 %68, i32 0
  %71 = load i64, i64* %70, align 16
  br label %143

; <label>:72:                                     ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %73 = add i64 %0, 4294966783
  %74 = lshr i64 %73, 1
  %75 = and i64 %74, 2147483647
  %76 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %77 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %76, i64 0, i32 141, i64 %75, i32 1
  %78 = load i64, i64* %77, align 8
  br label %143

; <label>:79:                                     ; preds = %1
  %80 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %80, i64 0, i32 139, i64 0
  %82 = load i64, i64* %81, align 16
  br label %143

; <label>:83:                                     ; preds = %1, %1
  %84 = add i64 %0, 4294966697
  %85 = and i64 %84, 4294967295
  %86 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %87 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %86, i64 0, i32 139, i64 %85
  %88 = load i64, i64* %87, align 8
  br label %143

; <label>:89:                                     ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %90 = add i64 %0, 4294966683
  %91 = and i64 %90, 4294967295
  %92 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %93 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %92, i64 0, i32 139, i64 %91
  %94 = load i64, i64* %93, align 8
  br label %143

; <label>:95:                                     ; preds = %1
  %96 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %97 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %96, i64 0, i32 140
  %98 = load i64, i64* %97, align 8
  br label %143

; <label>:99:                                     ; preds = %1
  %100 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %101 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %100, i64 0, i32 129
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 4096
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i64 0, i64 1288
  br label %143

; <label>:106:                                    ; preds = %1
  %107 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %107, i64 0, i32 149
  %109 = load i64, i64* %108, align 16
  br label %143

; <label>:110:                                    ; preds = %1
  %111 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %112 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %111, i64 0, i32 149
  %113 = load i64, i64* %112, align 16
  %114 = and i64 %113, 256
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %143, label %116

; <label>:116:                                    ; preds = %110
  %117 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %111, i64 0, i32 150
  %118 = load i64, i64* %117, align 8
  br label %143

; <label>:119:                                    ; preds = %1
  %120 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %121 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %120, i64 0, i32 67
  %122 = load i64, i64* %121, align 8
  br label %143

; <label>:123:                                    ; preds = %1
  %124 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %124, i64 0, i32 68
  %126 = load i64, i64* %125, align 16
  br label %143

; <label>:127:                                    ; preds = %1
  %128 = icmp ugt i32 %2, 1023
  br i1 %128, label %129, label %143

; <label>:129:                                    ; preds = %127
  %130 = and i64 %0, 4294967295
  %131 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %132 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %131, i64 0, i32 149
  %133 = load i64, i64* %132, align 16
  %134 = shl i64 %133, 2
  %135 = and i64 %134, 252
  %136 = or i64 %135, 1024
  %137 = icmp ult i64 %130, %136
  br i1 %137, label %138, label %143

; <label>:138:                                    ; preds = %129
  %139 = add i64 %0, 4294966272
  %140 = and i64 %139, 4294967295
  %141 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %131, i64 0, i32 151, i64 %140
  %142 = load i64, i64* %141, align 8
  br label %143

; <label>:143:                                    ; preds = %127, %129, %110, %99, %1, %116, %138, %123, %119, %106, %95, %89, %83, %79, %72, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %16, %12, %8, %3
  %144 = phi i64 [ %142, %138 ], [ %126, %123 ], [ %122, %119 ], [ %118, %116 ], [ %109, %106 ], [ %98, %95 ], [ %94, %89 ], [ %88, %83 ], [ %82, %79 ], [ %78, %72 ], [ %71, %65 ], [ %64, %61 ], [ %60, %57 ], [ %56, %53 ], [ %52, %49 ], [ %48, %45 ], [ %
  ret i64 %144
}

declare i64 @cpu_get_apic_base(%struct.DeviceState*) local_unnamed_addr #6

; Function Attrs: uwtable
define void @helper_rdmsr() local_unnamed_addr #2 {
  tail call void @helper_svm_check_intercept_param(i32 124, i64 0)
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 0, i64 1
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 4294967295
  %5 = tail call i64 @helper_rdmsr_v(i64 %4)
  %6 = and i64 %5, 4294967295
  %7 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %7, i64 0, i32 0, i64 0
  store i64 %6, i64* %8, align 16
  %9 = lshr i64 %5, 32
  %10 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %11 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %10, i64 0, i32 0, i64 2
  store i64 %9, i64* %11, align 16
  ret void
}

; Function Attrs: uwtable
define i64 @helper_lsl(i64) local_unnamed_addr #2 {
  %2 = trunc i64 %0 to i32
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 1
  %5 = load i64, i64* %4, align 16
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @helper_cc_compute_all(i32 %6)
  %8 = and i32 %2, 65532
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

; <label>:10:                                     ; preds = %1
  %11 = and i32 %2, 65528
  %12 = and i32 %2, 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 14
  %16 = select i1 %13, %struct.SegmentCache* %15, %struct.SegmentCache* %14
  %17 = or i32 %11, 7
  %18 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %52, label %21

; <label>:21:                                     ; preds = %10
  %22 = and i64 %0, 65528
  %23 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 1
  %24 = load i64, i64* %23, align 4
  %25 = add i64 %24, %22
  %26 = tail call fastcc i32 @ldl_kernel(i64 %25)
  %27 = add i64 %25, 4
  %28 = tail call fastcc i32 @ldl_kernel(i64 %27)
  %29 = and i32 %2, 3
  %30 = lshr i32 %28, 13
  %31 = and i32 %30, 3
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %32, i64 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 3
  %36 = and i32 %28, 4096
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

; <label>:38:                                     ; preds = %21
  %39 = and i32 %28, 3072
  %40 = icmp eq i32 %39, 3072
  br i1 %40, label %57, label %41

; <label>:41:                                     ; preds = %38
  %42 = icmp ult i32 %31, %35
  %43 = icmp ult i32 %31, %29
  %44 = or i1 %43, %42
  br i1 %44, label %52, label %57

; <label>:45:                                     ; preds = %21
  %46 = lshr i32 %28, 8
  %47 = trunc i32 %46 to i4
  switch i4 %47, label %52 [
    i4 1, label %48
    i4 2, label %48
    i4 3, label %48
    i4 -7, label %48
    i4 -5, label %48
  ]

; <label>:48:                                     ; preds = %45, %45, %45, %45, %45
  %49 = icmp ult i32 %31, %35
  %50 = icmp ult i32 %31, %29
  %51 = or i1 %50, %49
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %10, %48, %45, %41, %1
  %53 = phi %struct.CPUX86State* [ %3, %10 ], [ %32, %48 ], [ %32, %45 ], [ %32, %41 ], [ %3, %1 ]
  %54 = and i32 %7, -65
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 2
  store i64 %55, i64* %56, align 8
  br label %70

; <label>:57:                                     ; preds = %38, %48, %41
  %58 = and i32 %26, 65535
  %59 = and i32 %28, 983040
  %60 = or i32 %59, %58
  %61 = and i32 %28, 8388608
  %62 = icmp eq i32 %61, 0
  %63 = shl nuw i32 %60, 12
  %64 = or i32 %63, 4095
  %65 = select i1 %62, i32 %60, i32 %64
  %66 = or i32 %7, 64
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %32, i64 0, i32 2
  store i64 %67, i64* %68, align 8
  %69 = zext i32 %65 to i64
  br label %70

; <label>:70:                                     ; preds = %57, %52
  %71 = phi i64 [ 0, %52 ], [ %69, %57 ]
  ret i64 %71
}

; Function Attrs: uwtable
define i64 @helper_lar(i64) local_unnamed_addr #2 {
  %2 = trunc i64 %0 to i32
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 1
  %5 = load i64, i64* %4, align 16
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @helper_cc_compute_all(i32 %6)
  %8 = and i32 %2, 65532
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

; <label>:10:                                     ; preds = %1
  %11 = and i32 %2, 65528
  %12 = and i32 %2, 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 14
  %16 = select i1 %13, %struct.SegmentCache* %15, %struct.SegmentCache* %14
  %17 = or i32 %11, 7
  %18 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %52, label %21

; <label>:21:                                     ; preds = %10
  %22 = and i64 %0, 65528
  %23 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 1
  %24 = load i64, i64* %23, align 4
  %25 = add i64 %24, %22
  %26 = tail call fastcc i32 @ldl_kernel(i64 %25)
  %27 = add i64 %25, 4
  %28 = tail call fastcc i32 @ldl_kernel(i64 %27)
  %29 = and i32 %2, 3
  %30 = lshr i32 %28, 13
  %31 = and i32 %30, 3
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %33 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %32, i64 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 3
  %36 = and i32 %28, 4096
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

; <label>:38:                                     ; preds = %21
  %39 = and i32 %28, 3072
  %40 = icmp eq i32 %39, 3072
  br i1 %40, label %57, label %41

; <label>:41:                                     ; preds = %38
  %42 = icmp ult i32 %31, %35
  %43 = icmp ult i32 %31, %29
  %44 = or i1 %43, %42
  br i1 %44, label %52, label %57

; <label>:45:                                     ; preds = %21
  %46 = lshr i32 %28, 8
  %47 = trunc i32 %46 to i4
  switch i4 %47, label %52 [
    i4 1, label %48
    i4 2, label %48
    i4 3, label %48
    i4 4, label %48
    i4 5, label %48
    i4 -7, label %48
    i4 -5, label %48
    i4 -4, label %48
  ]

; <label>:48:                                     ; preds = %45, %45, %45, %45, %45, %45, %45, %45
  %49 = icmp ult i32 %31, %35
  %50 = icmp ult i32 %31, %29
  %51 = or i1 %50, %49
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %10, %48, %45, %41, %1
  %53 = phi %struct.CPUX86State* [ %3, %10 ], [ %32, %48 ], [ %32, %45 ], [ %32, %41 ], [ %3, %1 ]
  %54 = and i32 %7, -65
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 2
  store i64 %55, i64* %56, align 8
  br label %63

; <label>:57:                                     ; preds = %38, %48, %41
  %58 = or i32 %7, 64
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %32, i64 0, i32 2
  store i64 %59, i64* %60, align 8
  %61 = and i32 %28, 15793920
  %62 = zext i32 %61 to i64
  br label %63

; <label>:63:                                     ; preds = %57, %52
  %64 = phi i64 [ 0, %52 ], [ %62, %57 ]
  ret i64 %64
}

; Function Attrs: uwtable
define void @helper_verr(i64) local_unnamed_addr #2 {
  %2 = trunc i64 %0 to i32
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 1
  %5 = load i64, i64* %4, align 16
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @helper_cc_compute_all(i32 %6)
  %8 = and i32 %2, 65532
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %10

; <label>:10:                                     ; preds = %1
  %11 = and i32 %2, 65528
  %12 = and i32 %2, 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 14
  %16 = select i1 %13, %struct.SegmentCache* %15, %struct.SegmentCache* %14
  %17 = or i32 %11, 7
  %18 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %57, label %21

; <label>:21:                                     ; preds = %10
  %22 = and i64 %0, 65528
  %23 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 1
  %24 = load i64, i64* %23, align 4
  %25 = add i64 %24, %22
  %26 = tail call fastcc i32 @ldl_kernel(i64 %25)
  %27 = add i64 %25, 4
  %28 = tail call fastcc i32 @ldl_kernel(i64 %27)
  %29 = and i32 %28, 4096
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %21
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %57

; <label>:33:                                     ; preds = %21
  %34 = and i32 %2, 3
  %35 = lshr i32 %28, 13
  %36 = and i32 %35, 3
  %37 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %38 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 3
  %41 = and i32 %28, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

; <label>:43:                                     ; preds = %33
  %44 = and i32 %28, 512
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

; <label>:46:                                     ; preds = %43
  %47 = and i32 %28, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %46
  %50 = icmp ult i32 %36, %40
  %51 = icmp ult i32 %36, %34
  %52 = or i1 %51, %50
  br i1 %52, label %57, label %62

; <label>:53:                                     ; preds = %33
  %54 = icmp ult i32 %36, %40
  %55 = icmp ult i32 %36, %34
  %56 = or i1 %55, %54
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %31, %10, %43, %53, %49, %1
  %58 = phi %struct.CPUX86State* [ %32, %31 ], [ %3, %10 ], [ %37, %43 ], [ %37, %53 ], [ %37, %49 ], [ %3, %1 ]
  %59 = and i32 %7, -65
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %58, i64 0, i32 2
  store i64 %60, i64* %61, align 8
  br label %66

; <label>:62:                                     ; preds = %53, %49, %46
  %63 = or i32 %7, 64
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %37, i64 0, i32 2
  store i64 %64, i64* %65, align 8
  br label %66

; <label>:66:                                     ; preds = %62, %57
  ret void
}

; Function Attrs: uwtable
define void @helper_verw(i64) local_unnamed_addr #2 {
  %2 = trunc i64 %0 to i32
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 1
  %5 = load i64, i64* %4, align 16
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @helper_cc_compute_all(i32 %6)
  %8 = and i32 %2, 65532
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

; <label>:10:                                     ; preds = %1
  %11 = and i32 %2, 65528
  %12 = and i32 %2, 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 14
  %16 = select i1 %13, %struct.SegmentCache* %15, %struct.SegmentCache* %14
  %17 = or i32 %11, 7
  %18 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %50, label %21

; <label>:21:                                     ; preds = %10
  %22 = and i64 %0, 65528
  %23 = getelementptr inbounds %struct.SegmentCache, %struct.SegmentCache* %16, i64 0, i32 1
  %24 = load i64, i64* %23, align 4
  %25 = add i64 %24, %22
  %26 = tail call fastcc i32 @ldl_kernel(i64 %25)
  %27 = add i64 %25, 4
  %28 = tail call fastcc i32 @ldl_kernel(i64 %27)
  %29 = and i32 %28, 4096
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %21
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %50

; <label>:33:                                     ; preds = %21
  %34 = lshr i32 %28, 13
  %35 = and i32 %34, 3
  %36 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %37 = and i32 %28, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

; <label>:39:                                     ; preds = %33
  %40 = and i32 %2, 3
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %36, i64 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 3
  %44 = icmp ult i32 %35, %43
  %45 = icmp ult i32 %35, %40
  %46 = or i1 %45, %44
  %47 = and i32 %28, 512
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %48, %46
  br i1 %49, label %50, label %55

; <label>:50:                                     ; preds = %31, %10, %33, %39, %1
  %51 = phi %struct.CPUX86State* [ %32, %31 ], [ %3, %10 ], [ %36, %33 ], [ %36, %39 ], [ %3, %1 ]
  %52 = and i32 %7, -65
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %51, i64 0, i32 2
  store i64 %53, i64* %54, align 8
  br label %59

; <label>:55:                                     ; preds = %39
  %56 = or i32 %7, 64
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %36, i64 0, i32 2
  store i64 %57, i64* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %55, %50
  ret void
}

; Function Attrs: nounwind uwtable
define void @helper_mulq_EAX_T0(i64) local_unnamed_addr #9 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = lshr i64 %4, 32
  %6 = lshr i64 %0, 32
  %7 = and i64 %4, 4294967295
  %8 = and i64 %0, 4294967295
  %9 = mul nuw i64 %7, %8
  %10 = mul nuw i64 %7, %6
  %11 = shl i64 %10, 32
  %12 = lshr i64 %10, 32
  %13 = add i64 %11, %9
  %14 = icmp ult i64 %13, %11
  %15 = zext i1 %14 to i64
  %16 = mul nuw i64 %5, %8
  %17 = shl i64 %16, 32
  %18 = lshr i64 %16, 32
  %19 = add i64 %13, %17
  %20 = icmp ult i64 %19, %17
  %21 = zext i1 %20 to i64
  %22 = mul nuw i64 %5, %6
  %23 = add i64 %18, %22
  %24 = add i64 %23, %12
  %25 = add i64 %24, %15
  %26 = add i64 %25, %21
  store i64 %19, i64* %3, align 16
  %27 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %28 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %27, i64 0, i32 0, i64 2
  store i64 %26, i64* %28, align 16
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %27, i64 0, i32 3
  store i64 %19, i64* %29, align 16
  %30 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %27, i64 0, i32 2
  store i64 %26, i64* %30, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @helper_imulq_EAX_T0(i64) local_unnamed_addr #9 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 16
  %5 = icmp slt i64 %4, 0
  %6 = sub nsw i64 0, %4
  %7 = select i1 %5, i64 %6, i64 %4
  %8 = icmp slt i64 %0, 0
  %9 = sub nsw i64 0, %0
  %10 = select i1 %8, i64 %9, i64 %0
  %11 = lshr i64 %7, 32
  %12 = lshr i64 %10, 32
  %13 = and i64 %7, 4294967295
  %14 = and i64 %10, 4294967295
  %15 = mul nuw i64 %13, %14
  %16 = mul nuw i64 %13, %12
  %17 = shl i64 %16, 32
  %18 = lshr i64 %16, 32
  %19 = add i64 %17, %15
  %20 = icmp ult i64 %19, %17
  %21 = zext i1 %20 to i64
  %22 = mul nuw i64 %11, %14
  %23 = shl i64 %22, 32
  %24 = lshr i64 %22, 32
  %25 = add i64 %19, %23
  %26 = icmp ult i64 %25, %23
  %27 = zext i1 %26 to i64
  %28 = mul nuw i64 %11, %12
  %29 = add i64 %24, %28
  %30 = add i64 %29, %18
  %31 = add i64 %30, %21
  %32 = add i64 %31, %27
  %33 = xor i64 %4, %0
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %1
  %36 = xor i64 %32, -1
  %37 = sub i64 0, %25
  %38 = icmp eq i64 %25, 0
  %39 = sub i64 0, %32
  %40 = select i1 %38, i64 %39, i64 %36
  br label %41

; <label>:41:                                     ; preds = %35, %1
  %42 = phi i64 [ %25, %1 ], [ %37, %35 ]
  %43 = phi i64 [ %32, %1 ], [ %40, %35 ]
  store i64 %42, i64* %3, align 16
  %44 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 0, i64 2
  store i64 %43, i64* %45, align 16
  %46 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 3
  store i64 %42, i64* %46, align 16
  %47 = ashr i64 %42, 63
  %48 = icmp ne i64 %43, %47
  %49 = zext i1 %48 to i64
  %50 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %44, i64 0, i32 2
  store i64 %49, i64* %50, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @helper_imulq_T0_T1(i64, i64) local_unnamed_addr #9 {
  %3 = icmp slt i64 %0, 0
  %4 = sub nsw i64 0, %0
  %5 = select i1 %3, i64 %4, i64 %0
  %6 = icmp slt i64 %1, 0
  %7 = sub nsw i64 0, %1
  %8 = select i1 %6, i64 %7, i64 %1
  %9 = lshr i64 %5, 32
  %10 = lshr i64 %8, 32
  %11 = and i64 %5, 4294967295
  %12 = and i64 %8, 4294967295
  %13 = mul nuw i64 %12, %11
  %14 = mul nuw i64 %10, %11
  %15 = shl i64 %14, 32
  %16 = lshr i64 %14, 32
  %17 = add i64 %15, %13
  %18 = icmp ult i64 %17, %15
  %19 = zext i1 %18 to i64
  %20 = mul nuw i64 %12, %9
  %21 = shl i64 %20, 32
  %22 = lshr i64 %20, 32
  %23 = add i64 %17, %21
  %24 = icmp ult i64 %23, %21
  %25 = zext i1 %24 to i64
  %26 = mul nuw i64 %10, %9
  %27 = add i64 %22, %26
  %28 = add i64 %27, %16
  %29 = add i64 %28, %19
  %30 = add i64 %29, %25
  %31 = xor i64 %1, %0
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %2
  %34 = xor i64 %30, -1
  %35 = sub i64 0, %23
  %36 = icmp eq i64 %23, 0
  %37 = sub i64 0, %30
  %38 = select i1 %36, i64 %37, i64 %34
  br label %39

; <label>:39:                                     ; preds = %33, %2
  %40 = phi i64 [ %23, %2 ], [ %35, %33 ]
  %41 = phi i64 [ %30, %2 ], [ %38, %33 ]
  %42 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %43 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 3
  store i64 %40, i64* %43, align 16
  %44 = ashr i64 %40, 63
  %45 = icmp ne i64 %41, %44
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 2
  store i64 %46, i64* %47, align 8
  ret i64 %40
}

; Function Attrs: uwtable
define void @helper_divq_EAX(i64) local_unnamed_addr #2 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 0, i64 0
  %7 = load i64, i64* %6, align 16
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 0, i64 2
  %9 = load i64, i64* %8, align 16
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %4
  %12 = udiv i64 %7, %0
  %13 = urem i64 %7, %0
  br label %47

; <label>:14:                                     ; preds = %4
  %15 = icmp ult i64 %9, %0
  br i1 %15, label %16, label %46

; <label>:16:                                     ; preds = %14, %16
  %17 = phi i32 [ %44, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %43, %16 ], [ %7, %14 ]
  %19 = phi i64 [ %39, %16 ], [ %9, %14 ]
  %20 = shl i64 %19, 1
  %21 = lshr i64 %18, 63
  %22 = or i64 %20, %21
  %23 = icmp sgt i64 %19, -1
  %24 = icmp ult i64 %22, %0
  %25 = and i1 %23, %24
  %26 = select i1 %25, i64 0, i64 %0
  %27 = sub i64 %22, %26
  %28 = zext i1 %25 to i64
  %29 = shl i64 %18, 1
  %30 = or i64 %28, %29
  %31 = shl i64 %27, 1
  %32 = lshr i64 %18, 62
  %33 = and i64 %32, 1
  %34 = or i64 %31, %33
  %35 = icmp sgt i64 %27, -1
  %36 = icmp ult i64 %34, %0
  %37 = and i1 %35, %36
  %38 = select i1 %37, i64 0, i64 %0
  %39 = sub i64 %34, %38
  %40 = zext i1 %37 to i64
  %41 = shl i64 %30, 1
  %42 = or i64 %41, %40
  %43 = xor i64 %42, 3
  %44 = add nsw i32 %17, 2
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %47, label %16

; <label>:46:                                     ; preds = %14
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:47:                                     ; preds = %16, %11
  %48 = phi i64 [ %12, %11 ], [ %43, %16 ]
  %49 = phi i64 [ %13, %11 ], [ %39, %16 ]
  store i64 %48, i64* %6, align 16
  %50 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %50, i64 0, i32 0, i64 2
  store i64 %49, i64* %51, align 16
  ret void
}

; Function Attrs: uwtable
define void @helper_idivq_EAX(i64) local_unnamed_addr #2 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %1
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 0, i64 0
  %7 = load i64, i64* %6, align 16
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %5, i64 0, i32 0, i64 2
  %9 = load i64, i64* %8, align 16
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %4
  %12 = xor i64 %9, -1
  %13 = sub i64 0, %7
  %14 = icmp eq i64 %7, 0
  %15 = sub i64 0, %9
  %16 = select i1 %14, i64 %15, i64 %12
  br label %17

; <label>:17:                                     ; preds = %11, %4
  %18 = phi i64 [ %7, %4 ], [ %13, %11 ]
  %19 = phi i64 [ %9, %4 ], [ %16, %11 ]
  %20 = icmp slt i64 %0, 0
  %21 = sub nsw i64 0, %0
  %22 = select i1 %20, i64 %21, i64 %0
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %17
  %25 = udiv i64 %18, %22
  %26 = urem i64 %18, %22
  br label %59

; <label>:27:                                     ; preds = %17
  %28 = icmp ult i64 %19, %22
  br i1 %28, label %29, label %77

; <label>:29:                                     ; preds = %27, %29
  %30 = phi i32 [ %57, %29 ], [ 0, %27 ]
  %31 = phi i64 [ %56, %29 ], [ %18, %27 ]
  %32 = phi i64 [ %52, %29 ], [ %19, %27 ]
  %33 = shl i64 %32, 1
  %34 = lshr i64 %31, 63
  %35 = or i64 %33, %34
  %36 = icmp sgt i64 %32, -1
  %37 = icmp ult i64 %35, %22
  %38 = and i1 %36, %37
  %39 = select i1 %38, i64 0, i64 %22
  %40 = sub i64 %35, %39
  %41 = zext i1 %38 to i64
  %42 = shl i64 %31, 1
  %43 = or i64 %41, %42
  %44 = shl i64 %40, 1
  %45 = lshr i64 %31, 62
  %46 = and i64 %45, 1
  %47 = or i64 %44, %46
  %48 = icmp sgt i64 %40, -1
  %49 = icmp ult i64 %47, %22
  %50 = and i1 %48, %49
  %51 = select i1 %50, i64 0, i64 %22
  %52 = sub i64 %47, %51
  %53 = zext i1 %50 to i64
  %54 = shl i64 %43, 1
  %55 = or i64 %54, %53
  %56 = xor i64 %55, 3
  %57 = add nsw i32 %30, 2
  %58 = icmp eq i32 %57, 64
  br i1 %58, label %59, label %29

; <label>:59:                                     ; preds = %29, %24
  %60 = phi i64 [ %25, %24 ], [ %56, %29 ]
  %61 = phi i64 [ %26, %24 ], [ %52, %29 ]
  %62 = xor i64 %9, %0
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %59
  %65 = icmp ugt i64 %60, -9223372036854775808
  br i1 %65, label %77, label %66

; <label>:66:                                     ; preds = %64
  %67 = sub i64 0, %60
  br i1 %10, label %72, label %78

; <label>:68:                                     ; preds = %59
  %69 = icmp slt i64 %60, 0
  %70 = xor i1 %10, true
  %71 = or i1 %69, %70
  br i1 %71, label %75, label %72

; <label>:72:                                     ; preds = %66, %68
  %73 = phi i64 [ %60, %68 ], [ %67, %66 ]
  %74 = sub i64 0, %61
  br label %78

; <label>:75:                                     ; preds = %68
  %76 = icmp sgt i64 %60, -1
  br i1 %76, label %78, label %77

; <label>:77:                                     ; preds = %27, %64, %75
  tail call fastcc void @raise_exception(i32 0) #13
  unreachable

; <label>:78:                                     ; preds = %66, %72, %75
  %79 = phi i64 [ %61, %75 ], [ %61, %66 ], [ %74, %72 ]
  %80 = phi i64 [ %60, %75 ], [ %67, %66 ], [ %73, %72 ]
  store i64 %80, i64* %6, align 16
  %81 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %82 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %81, i64 0, i32 0, i64 2
  store i64 %79, i64* %82, align 16
  ret void
}

; Function Attrs: noreturn uwtable
define void @helper_hlt(i32) local_unnamed_addr #3 {
  tail call void @helper_svm_check_intercept_param(i32 120, i64 0)
  %2 = sext i32 %0 to i64
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 5
  %5 = load i64, i64* %4, align 16
  %6 = add i64 %5, %2
  store i64 %6, i64* %4, align 16
  tail call fastcc void @do_hlt()
  unreachable
}

; Function Attrs: noreturn uwtable
define internal fastcc void @do_hlt() unnamed_addr #3 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -9
  store i32 %4, i32* %2, align 4
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 85
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 106
  store i32 65537, i32* %6, align 16
  tail call void @cpu_loop_exit(%struct.CPUX86State* %1) #13
  unreachable
}

; Function Attrs: uwtable
define void @helper_monitor(i64) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  tail call fastcc void @raise_exception(i32 13) #13
  unreachable

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 2097152
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13, !prof !2

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 48
  %15 = load i64, i64* %14, align 16
  %16 = and i64 %15, 4398046511104
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %13
  tail call void @helper_vmexit(i32 138, i64 0)
  unreachable

; <label>:19:                                     ; preds = %8, %13
  ret void
}

; Function Attrs: uwtable
define void @helper_mwait(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 1
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  tail call fastcc void @raise_exception(i32 13) #13
  unreachable

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 2097152
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13, !prof !2

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 48
  %15 = load i64, i64* %14, align 16
  %16 = and i64 %15, 8796093022208
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %13
  tail call void @helper_vmexit(i32 139, i64 0)
  unreachable

; <label>:19:                                     ; preds = %8, %13
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 5
  %22 = load i64, i64* %21, align 16
  %23 = add i64 %22, %20
  store i64 %23, i64* %21, align 16
  %24 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 109
  %25 = load i32, i32* %24, align 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 108
  %29 = load %struct.CPUX86State*, %struct.CPUX86State** %28, align 8
  %30 = icmp eq %struct.CPUX86State* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %27
  tail call fastcc void @do_hlt()
  unreachable

; <label>:32:                                     ; preds = %27, %19
  ret void
}

; Function Attrs: noreturn uwtable
define void @helper_debug() local_unnamed_addr #3 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 106
  store i32 65538, i32* %2, align 16
  tail call void @cpu_loop_exit(%struct.CPUX86State* %1) #13
  unreachable
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_reset_rf() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 7
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, -65537
  store i64 %4, i64* %2, align 4
  ret void
}

; Function Attrs: noreturn uwtable
define void @helper_raise_interrupt(i32, i32) local_unnamed_addr #3 {
  tail call fastcc void @raise_interrupt(i32 %0, i32 1, i32 0, i32 %1) #13
  unreachable
}

; Function Attrs: noreturn uwtable
define void @helper_raise_exception(i32) local_unnamed_addr #3 {
  tail call fastcc void @raise_exception(i32 %0) #13
  unreachable
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_cli() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 7
  %3 = load i64, i64* %2, align 4
  %4 = and i64 %3, -513
  store i64 %4, i64* %2, align 4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_sti() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 7
  %3 = load i64, i64* %2, align 4
  %4 = or i64 %3, 512
  store i64 %4, i64* %2, align 4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_set_inhibit_irq() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  %4 = or i32 %3, 8
  store i32 %4, i32* %2, align 4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_reset_inhibit_irq() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -9
  store i32 %4, i32* %2, align 4
  ret void
}

; Function Attrs: uwtable
define void @helper_boundw(i64, i32) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @ldsw_data(i64 %0)
  %4 = add i64 %0, 2
  %5 = tail call fastcc i32 @ldsw_data(i64 %4)
  %6 = shl i32 %1, 16
  %7 = ashr exact i32 %6, 16
  %8 = icmp slt i32 %7, %3
  %9 = icmp sgt i32 %7, %5
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  tail call fastcc void @raise_exception(i32 5) #13
  unreachable

; <label>:12:                                     ; preds = %2
  ret void
}

; Function Attrs: uwtable
define internal fastcc i32 @ldsw_data(i64) unnamed_addr #2 {
  %2 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @tcg_llvm_before_memory_access(i64 %0, i64 0, i32 4, i32 0)
  br label %6

; <label>:6:                                      ; preds = %1, %5
  %7 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 1, i32 1), align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %0, i64 0, i64 -1, i64 0)
  br label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = phi i64 [ %11, %10 ], [ %0, %6 ]
  %14 = lshr i64 %13, 12
  %15 = tail call i64 @tcg_llvm_fork_and_concretize(i64 %14, i64 0, i64 4503599627370495, i64 0)
  %16 = and i64 %15, 1023
  %17 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %18 = getelementptr %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %13, -4095
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27, !prof !2

; <label>:27:                                     ; preds = %12
  %28 = zext i1 %21 to i32
  %29 = tail call zeroext i16 @__ldw_mmu(i64 %13, i32 %28)
  %30 = sext i16 %29 to i32
  br label %43

; <label>:31:                                     ; preds = %12
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %17, i64 0, i32 89, i64 %22, i64 %16, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %13
  %35 = inttoptr i64 %34 to i16*
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 1), align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %31
  %42 = sext i16 %36 to i64
  tail call void @tcg_llvm_after_memory_access(i64 %13, i64 %42, i32 4, i32 0, i64 0)
  br label %43

; <label>:43:                                     ; preds = %31, %41, %27
  %44 = phi i32 [ %30, %27 ], [ %37, %41 ], [ %37, %31 ]
  ret i32 %44
}

; Function Attrs: uwtable
define void @helper_boundl(i64, i32) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @ldl_data(i64 %0)
  %4 = add i64 %0, 4
  %5 = tail call fastcc i32 @ldl_data(i64 %4)
  %6 = icmp sgt i32 %3, %1
  %7 = icmp slt i32 %5, %1
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  tail call fastcc void @raise_exception(i32 5) #13
  unreachable

; <label>:10:                                     ; preds = %2
  ret void
}

; Function Attrs: alwaysinline inlinehint uwtable
define zeroext i8 @io_read_chkb_mmu(i64, i64, i8*) local_unnamed_addr #10 {
  %4 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %5 = and i64 %0, -4096
  %6 = add i64 %5, %1
  %7 = ptrtoint i8* %2 to i64
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 83
  store i64 %7, i64* %9, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %1, i32 0)
  %10 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %4, i32 0)
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %3
  %12 = and i64 %6, -4096
  %13 = tail call i64 @se_notdirty_mem_read(i64 %12)
  %14 = and i64 %6, 4095
  %15 = or i64 %13, %14
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8, i8* %16, align 1
  br label %20

; <label>:18:                                     ; preds = %3
  %19 = tail call zeroext i8 @io_readb_mmu(i64 %0, i64 %1, i8* %2)
  br label %20

; <label>:20:                                     ; preds = %11, %18
  %21 = phi i8 [ %17, %11 ], [ %19, %18 ]
  %22 = zext i8 %21 to i64
  %23 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %1, i64 %22, i32 1, i32 0)
  %24 = trunc i64 %23 to i8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret i8 %24
}

; Function Attrs: alwaysinline inlinehint uwtable
define void @io_write_chkb_mmu(i64, i8 zeroext, i64, i8*) local_unnamed_addr #10 {
  %5 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %6 = and i64 %0, -4096
  %7 = add i64 %6, %2
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %2, i32 0)
  %8 = ptrtoint i8* %3 to i64
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 83
  store i64 %8, i64* %10, align 8
  %11 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %5, i32 1)
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %4
  %13 = and i64 %7, -4096
  %14 = tail call i64 @se_notdirty_mem_write(i64 %13)
  %15 = and i64 %7, 4095
  %16 = or i64 %14, %15
  %17 = inttoptr i64 %16 to i8*
  store i8 %1, i8* %17, align 1
  br label %19

; <label>:18:                                     ; preds = %4
  tail call void @io_writeb_mmu(i64 %0, i8 zeroext %1, i64 %2, i8* %3)
  br label %19

; <label>:19:                                     ; preds = %12, %18
  %20 = zext i8 %1 to i64
  %21 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %2, i64 %20, i32 1, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret void
}

; Function Attrs: alwaysinline inlinehint uwtable
define zeroext i16 @io_read_chkw_mmu(i64, i64, i8*) local_unnamed_addr #10 {
  %4 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %5 = and i64 %0, -4096
  %6 = add i64 %5, %1
  %7 = ptrtoint i8* %2 to i64
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 83
  store i64 %7, i64* %9, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %1, i32 0)
  %10 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %4, i32 0)
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %3
  %12 = and i64 %6, -4096
  %13 = tail call i64 @se_notdirty_mem_read(i64 %12)
  %14 = and i64 %6, 4095
  %15 = or i64 %13, %14
  %16 = inttoptr i64 %15 to i16*
  %17 = load i16, i16* %16, align 2
  br label %20

; <label>:18:                                     ; preds = %3
  %19 = tail call zeroext i16 @io_readw_mmu(i64 %0, i64 %1, i8* %2)
  br label %20

; <label>:20:                                     ; preds = %11, %18
  %21 = phi i16 [ %17, %11 ], [ %19, %18 ]
  %22 = zext i16 %21 to i64
  %23 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %1, i64 %22, i32 2, i32 0)
  %24 = trunc i64 %23 to i16
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret i16 %24
}

; Function Attrs: alwaysinline inlinehint uwtable
define void @io_write_chkw_mmu(i64, i16 zeroext, i64, i8*) local_unnamed_addr #10 {
  %5 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %6 = and i64 %0, -4096
  %7 = add i64 %6, %2
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %2, i32 0)
  %8 = ptrtoint i8* %3 to i64
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 83
  store i64 %8, i64* %10, align 8
  %11 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %5, i32 1)
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %4
  %13 = and i64 %7, -4096
  %14 = tail call i64 @se_notdirty_mem_write(i64 %13)
  %15 = and i64 %7, 4095
  %16 = or i64 %14, %15
  %17 = inttoptr i64 %16 to i16*
  store i16 %1, i16* %17, align 2
  br label %19

; <label>:18:                                     ; preds = %4
  tail call void @io_writew_mmu(i64 %0, i16 zeroext %1, i64 %2, i8* %3)
  br label %19

; <label>:19:                                     ; preds = %12, %18
  %20 = zext i16 %1 to i64
  %21 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %2, i64 %20, i32 2, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret void
}

; Function Attrs: alwaysinline inlinehint uwtable
define i32 @io_read_chkl_mmu(i64, i64, i8*) local_unnamed_addr #10 {
  %4 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %5 = and i64 %0, -4096
  %6 = add i64 %5, %1
  %7 = ptrtoint i8* %2 to i64
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 83
  store i64 %7, i64* %9, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %1, i32 0)
  %10 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %4, i32 0)
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %3
  %12 = and i64 %6, -4096
  %13 = tail call i64 @se_notdirty_mem_read(i64 %12)
  %14 = and i64 %6, 4095
  %15 = or i64 %13, %14
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %16, align 4
  br label %20

; <label>:18:                                     ; preds = %3
  %19 = tail call i32 @io_readl_mmu(i64 %0, i64 %1, i8* %2)
  br label %20

; <label>:20:                                     ; preds = %11, %18
  %21 = phi i32 [ %17, %11 ], [ %19, %18 ]
  %22 = zext i32 %21 to i64
  %23 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %1, i64 %22, i32 4, i32 0)
  %24 = trunc i64 %23 to i32
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret i32 %24
}

; Function Attrs: alwaysinline inlinehint uwtable
define void @io_write_chkl_mmu(i64, i32, i64, i8*) local_unnamed_addr #10 {
  %5 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %6 = and i64 %0, -4096
  %7 = add i64 %6, %2
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %2, i32 0)
  %8 = ptrtoint i8* %3 to i64
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 83
  store i64 %8, i64* %10, align 8
  %11 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %5, i32 1)
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %4
  %13 = and i64 %7, -4096
  %14 = tail call i64 @se_notdirty_mem_write(i64 %13)
  %15 = and i64 %7, 4095
  %16 = or i64 %14, %15
  %17 = inttoptr i64 %16 to i32*
  store i32 %1, i32* %17, align 4
  br label %19

; <label>:18:                                     ; preds = %4
  tail call void @io_writel_mmu(i64 %0, i32 %1, i64 %2, i8* %3)
  br label %19

; <label>:19:                                     ; preds = %12, %18
  %20 = zext i32 %1 to i64
  %21 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %2, i64 %20, i32 4, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret void
}

; Function Attrs: alwaysinline inlinehint uwtable
define i64 @io_read_chkq_mmu(i64, i64, i8*) local_unnamed_addr #10 {
  %4 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %5 = and i64 %0, -4096
  %6 = add i64 %5, %1
  %7 = ptrtoint i8* %2 to i64
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %9 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 83
  store i64 %7, i64* %9, align 8
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %1, i32 0)
  %10 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %4, i32 0)
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %3
  %12 = and i64 %6, -4096
  %13 = tail call i64 @se_notdirty_mem_read(i64 %12)
  %14 = and i64 %6, 4095
  %15 = or i64 %13, %14
  %16 = inttoptr i64 %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %15, 4
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 %20, 32
  %22 = or i64 %21, %17
  br label %25

; <label>:23:                                     ; preds = %3
  %24 = tail call i64 @io_readq_mmu(i64 %0, i64 %1, i8* %2)
  br label %25

; <label>:25:                                     ; preds = %11, %23
  %26 = phi i64 [ %22, %11 ], [ %24, %23 ]
  %27 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %1, i64 %26, i32 8, i32 0)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret i64 %27
}

; Function Attrs: alwaysinline inlinehint uwtable
define void @io_write_chkq_mmu(i64, i64, i64, i8*) local_unnamed_addr #10 {
  %5 = tail call %struct.MemoryDescOps* @phys_get_ops(i64 %0)
  %6 = and i64 %0, -4096
  %7 = add i64 %6, %2
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 %2, i32 0)
  %8 = ptrtoint i8* %3 to i64
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 83
  store i64 %8, i64* %10, align 8
  %11 = tail call zeroext i1 @se_ismemfunc(%struct.MemoryDescOps* %5, i32 1)
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %4
  %13 = and i64 %7, -4096
  %14 = tail call i64 @se_notdirty_mem_write(i64 %13)
  %15 = and i64 %7, 4095
  %16 = or i64 %14, %15
  %17 = trunc i64 %1 to i32
  %18 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %18, align 4
  %19 = add i64 %16, 4
  %20 = lshr i64 %1, 32
  %21 = trunc i64 %20 to i32
  %22 = inttoptr i64 %19 to i32*
  store i32 %21, i32* %22, align 4
  br label %24

; <label>:23:                                     ; preds = %4
  tail call void @io_writeq_mmu(i64 %0, i64 %1, i64 %2, i8* %3)
  br label %24

; <label>:24:                                     ; preds = %12, %23
  %25 = tail call i64 @tcg_llvm_trace_mmio_access(i64 %2, i64 %1, i32 8, i32 1)
  tail call void @tcg_llvm_write_mem_io_vaddr(i64 0, i32 1)
  ret void
}

; Function Attrs: uwtable
define void @helper_vmrun(i32, i32) local_unnamed_addr #2 {
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 3
  %7 = and i32 %5, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !2

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 48
  %11 = load i64, i64* %10, align 16
  %12 = and i64 %11, 4294967296
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %9
  tail call void @helper_vmexit(i32 128, i64 0)
  unreachable

; <label>:15:                                     ; preds = %2, %9
  %16 = icmp eq i32 %0, 2
  %17 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 0, i64 0
  %18 = load i64, i64* %17, align 16
  %19 = and i64 %18, 4294967295
  %20 = select i1 %16, i64 %18, i64 %19
  %21 = load i32, i32* @loglevel, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %20)
  %27 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %28

; <label>:28:                                     ; preds = %15, %24
  %29 = phi %struct.CPUX86State* [ %3, %15 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 46
  store i64 %20, i64* %30, align 16
  %31 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 45
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1128
  %34 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %29, i64 0, i32 14, i32 1
  %35 = load i64, i64* %34, align 4
  tail call void @stq_phys(i64 %33, i64 %35)
  %36 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %37 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %36, i64 0, i32 45
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1124
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %36, i64 0, i32 14, i32 2
  %41 = load i32, i32* %40, align 4
  tail call void @stl_phys(i64 %39, i32 %41)
  %42 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %43 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 45
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1160
  %46 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %42, i64 0, i32 15, i32 1
  %47 = load i64, i64* %46, align 4
  tail call void @stq_phys(i64 %45, i64 %47)
  %48 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %49 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 45
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1156
  %52 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %48, i64 0, i32 15, i32 2
  %53 = load i32, i32* %52, align 4
  tail call void @stl_phys(i64 %51, i32 %53)
  %54 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %55 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %54, i64 0, i32 45
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1368
  %58 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %54, i64 0, i32 16, i64 0
  %59 = load i64, i64* %58, align 4
  tail call void @stq_phys(i64 %57, i64 %59)
  %60 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %61 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %60, i64 0, i32 45
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1600
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %60, i64 0, i32 16, i64 2
  %65 = load i64, i64* %64, align 4
  tail call void @stq_phys(i64 %63, i64 %65)
  %66 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %67 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %66, i64 0, i32 45
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1360
  %70 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %66, i64 0, i32 16, i64 3
  %71 = load i64, i64* %70, align 4
  tail call void @stq_phys(i64 %69, i64 %71)
  %72 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %73 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 45
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1352
  %76 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %72, i64 0, i32 16, i64 4
  %77 = load i64, i64* %76, align 4
  tail call void @stq_phys(i64 %75, i64 %77)
  %78 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %79 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %78, i64 0, i32 45
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1384
  %82 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %78, i64 0, i32 72, i64 6
  %83 = load i64, i64* %82, align 8
  tail call void @stq_phys(i64 %81, i64 %83)
  %84 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %85 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %84, i64 0, i32 45
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1376
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %84, i64 0, i32 72, i64 7
  %89 = load i64, i64* %88, align 8
  tail call void @stq_phys(i64 %87, i64 %89)
  %90 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %91 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %90, i64 0, i32 45
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1232
  %94 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %90, i64 0, i32 43
  %95 = load i64, i64* %94, align 8
  tail call void @stq_phys(i64 %93, i64 %95)
  %96 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %97 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %96, i64 0, i32 45
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1392
  %100 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %96, i64 0, i32 7
  %101 = load i64, i64* %100, align 4
  %102 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %96, i64 0, i32 1
  %103 = load i64, i64* %102, align 16
  %104 = trunc i64 %103 to i32
  %105 = tail call i32 @helper_cc_compute_all(i32 %104) #5
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %96, i64 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 1024
  %110 = zext i32 %109 to i64
  %111 = or i64 %106, %101
  %112 = and i64 %111, 4294967293
  %113 = or i64 %110, %112
  %114 = or i64 %113, 2
  tail call void @stq_phys(i64 %99, i64 %114)
  %115 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %116 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 45
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1024
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 11, i64 0, i32 0
  %120 = load i32, i32* %119, align 4
  tail call void @stw_phys(i64 %118, i32 %120)
  %121 = add i64 %117, 1032
  %122 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 11, i64 0, i32 1
  %123 = load i64, i64* %122, align 4
  tail call void @stq_phys(i64 %121, i64 %123)
  %124 = add i64 %117, 1028
  %125 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 11, i64 0, i32 2
  %126 = load i32, i32* %125, align 4
  tail call void @stl_phys(i64 %124, i32 %126)
  %127 = add i64 %117, 1026
  %128 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 11, i64 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = lshr i32 %129, 8
  %131 = and i32 %130, 255
  %132 = lshr i32 %129, 12
  %133 = and i32 %132, 3840
  %134 = or i32 %131, %133
  tail call void @stw_phys(i64 %127, i32 %134)
  %135 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %136 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %135, i64 0, i32 45
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1040
  %139 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %135, i64 0, i32 11, i64 1, i32 0
  %140 = load i32, i32* %139, align 4
  tail call void @stw_phys(i64 %138, i32 %140)
  %141 = add i64 %137, 1048
  %142 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %135, i64 0, i32 11, i64 1, i32 1
  %143 = load i64, i64* %142, align 4
  tail call void @stq_phys(i64 %141, i64 %143)
  %144 = add i64 %137, 1044
  %145 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %135, i64 0, i32 11, i64 1, i32 2
  %146 = load i32, i32* %145, align 4
  tail call void @stl_phys(i64 %144, i32 %146)
  %147 = add i64 %137, 1042
  %148 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %135, i64 0, i32 11, i64 1, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = lshr i32 %149, 8
  %151 = and i32 %150, 255
  %152 = lshr i32 %149, 12
  %153 = and i32 %152, 3840
  %154 = or i32 %151, %153
  tail call void @stw_phys(i64 %147, i32 %154)
  %155 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %156 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %155, i64 0, i32 45
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1056
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %155, i64 0, i32 11, i64 2, i32 0
  %160 = load i32, i32* %159, align 4
  tail call void @stw_phys(i64 %158, i32 %160)
  %161 = add i64 %157, 1064
  %162 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %155, i64 0, i32 11, i64 2, i32 1
  %163 = load i64, i64* %162, align 4
  tail call void @stq_phys(i64 %161, i64 %163)
  %164 = add i64 %157, 1060
  %165 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %155, i64 0, i32 11, i64 2, i32 2
  %166 = load i32, i32* %165, align 4
  tail call void @stl_phys(i64 %164, i32 %166)
  %167 = add i64 %157, 1058
  %168 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %155, i64 0, i32 11, i64 2, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = lshr i32 %169, 8
  %171 = and i32 %170, 255
  %172 = lshr i32 %169, 12
  %173 = and i32 %172, 3840
  %174 = or i32 %171, %173
  tail call void @stw_phys(i64 %167, i32 %174)
  %175 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %176 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 45
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1072
  %179 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 11, i64 3, i32 0
  %180 = load i32, i32* %179, align 4
  tail call void @stw_phys(i64 %178, i32 %180)
  %181 = add i64 %177, 1080
  %182 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 11, i64 3, i32 1
  %183 = load i64, i64* %182, align 4
  tail call void @stq_phys(i64 %181, i64 %183)
  %184 = add i64 %177, 1076
  %185 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 11, i64 3, i32 2
  %186 = load i32, i32* %185, align 4
  tail call void @stl_phys(i64 %184, i32 %186)
  %187 = add i64 %177, 1074
  %188 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %175, i64 0, i32 11, i64 3, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = lshr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = lshr i32 %189, 12
  %193 = and i32 %192, 3840
  %194 = or i32 %191, %193
  tail call void @stw_phys(i64 %187, i32 %194)
  %195 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %196 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %195, i64 0, i32 45
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, 1400
  %199 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %195, i64 0, i32 5
  %200 = load i64, i64* %199, align 16
  %201 = sext i32 %1 to i64
  %202 = add i64 %200, %201
  tail call void @stq_phys(i64 %198, i64 %202)
  %203 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %204 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %203, i64 0, i32 45
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 1496
  %207 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %203, i64 0, i32 0, i64 4
  %208 = load i64, i64* %207, align 16
  tail call void @stq_phys(i64 %206, i64 %208)
  %209 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %210 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %209, i64 0, i32 45
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, 1528
  %213 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %209, i64 0, i32 0, i64 0
  %214 = load i64, i64* %213, align 16
  tail call void @stq_phys(i64 %212, i64 %214)
  %215 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %216 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %215, i64 0, i32 46
  %217 = load i64, i64* %216, align 16
  %218 = add i64 %217, 12
  %219 = tail call i64 @ldq_phys(i64 %218)
  %220 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %221 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %220, i64 0, i32 48
  store i64 %219, i64* %221, align 16
  %222 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %220, i64 0, i32 46
  %223 = load i64, i64* %222, align 16
  %224 = tail call i32 @lduw_phys(i64 %223)
  %225 = trunc i32 %224 to i16
  %226 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %227 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %226, i64 0, i32 49
  store i16 %225, i16* %227, align 8
  %228 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %226, i64 0, i32 46
  %229 = load i64, i64* %228, align 16
  %230 = add i64 %229, 2
  %231 = tail call i32 @lduw_phys(i64 %230)
  %232 = trunc i32 %231 to i16
  %233 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %234 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %233, i64 0, i32 50
  store i16 %232, i16* %234, align 2
  %235 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %233, i64 0, i32 46
  %236 = load i64, i64* %235, align 16
  %237 = add i64 %236, 4
  %238 = tail call i32 @lduw_phys(i64 %237)
  %239 = trunc i32 %238 to i16
  %240 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %241 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %240, i64 0, i32 51
  store i16 %239, i16* %241, align 4
  %242 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %240, i64 0, i32 46
  %243 = load i64, i64* %242, align 16
  %244 = add i64 %243, 6
  %245 = tail call i32 @lduw_phys(i64 %244)
  %246 = trunc i32 %245 to i16
  %247 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %248 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %247, i64 0, i32 52
  store i16 %246, i16* %248, align 2
  %249 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %247, i64 0, i32 46
  %250 = load i64, i64* %249, align 16
  %251 = add i64 %250, 8
  %252 = tail call i32 @ldl_phys(i64 %251)
  %253 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %254 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %253, i64 0, i32 53
  store i32 %252, i32* %254, align 16
  %255 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %253, i64 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, 2097152
  store i32 %257, i32* %255, align 4
  %258 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %253, i64 0, i32 46
  %259 = load i64, i64* %258, align 16
  %260 = add i64 %259, 80
  %261 = tail call i64 @ldq_phys(i64 %260)
  %262 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %263 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %262, i64 0, i32 47
  store i64 %261, i64* %263, align 8
  %264 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %262, i64 0, i32 46
  %265 = load i64, i64* %264, align 16
  %266 = add i64 %265, 1128
  %267 = tail call i64 @ldq_phys(i64 %266)
  %268 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %269 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %268, i64 0, i32 14, i32 1
  store i64 %267, i64* %269, align 4
  %270 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %268, i64 0, i32 46
  %271 = load i64, i64* %270, align 16
  %272 = add i64 %271, 1124
  %273 = tail call i32 @ldl_phys(i64 %272)
  %274 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %275 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 14, i32 2
  store i32 %273, i32* %275, align 4
  %276 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %274, i64 0, i32 46
  %277 = load i64, i64* %276, align 16
  %278 = add i64 %277, 1160
  %279 = tail call i64 @ldq_phys(i64 %278)
  %280 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %281 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %280, i64 0, i32 15, i32 1
  store i64 %279, i64* %281, align 4
  %282 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %280, i64 0, i32 46
  %283 = load i64, i64* %282, align 16
  %284 = add i64 %283, 1156
  %285 = tail call i32 @ldl_phys(i64 %284)
  %286 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %287 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %286, i64 0, i32 15, i32 2
  store i32 %285, i32* %287, align 4
  %288 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %286, i64 0, i32 46
  %289 = load i64, i64* %288, align 16
  %290 = add i64 %289, 128
  tail call void @stq_phys(i64 %290, i64 0)
  %291 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %292 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %291, i64 0, i32 46
  %293 = load i64, i64* %292, align 16
  %294 = add i64 %293, 1368
  %295 = tail call i64 @ldq_phys(i64 %294)
  %296 = trunc i64 %295 to i32
  tail call void @cpu_x86_update_cr0(%struct.CPUX86State* %291, i32 %296)
  %297 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %298 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %297, i64 0, i32 46
  %299 = load i64, i64* %298, align 16
  %300 = add i64 %299, 1352
  %301 = tail call i64 @ldq_phys(i64 %300)
  %302 = trunc i64 %301 to i32
  tail call void @cpu_x86_update_cr4(%struct.CPUX86State* %297, i32 %302)
  %303 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %304 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %303, i64 0, i32 46
  %305 = load i64, i64* %304, align 16
  %306 = add i64 %305, 1360
  %307 = tail call i64 @ldq_phys(i64 %306)
  tail call void @cpu_x86_update_cr3(%struct.CPUX86State* %303, i64 %307)
  %308 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %309 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %308, i64 0, i32 46
  %310 = load i64, i64* %309, align 16
  %311 = add i64 %310, 1600
  %312 = tail call i64 @ldq_phys(i64 %311)
  %313 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %314 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %313, i64 0, i32 16, i64 2
  store i64 %312, i64* %314, align 4
  %315 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %313, i64 0, i32 46
  %316 = load i64, i64* %315, align 16
  %317 = add i64 %316, 96
  %318 = tail call i32 @ldl_phys(i64 %317)
  %319 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %320 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %319, i64 0, i32 9
  %321 = load i32, i32* %320, align 8
  %322 = and i32 %321, -11
  store i32 %322, i32* %320, align 8
  %323 = and i32 %318, 16777216
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %336, label %325

; <label>:325:                                    ; preds = %28
  %326 = trunc i32 %318 to i8
  %327 = and i8 %326, 15
  %328 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %319, i64 0, i32 54
  store i8 %327, i8* %328, align 4
  %329 = or i32 %322, 8
  store i32 %329, i32* %320, align 8
  %330 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %319, i64 0, i32 7
  %331 = load i64, i64* %330, align 4
  %332 = and i64 %331, 512
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %336, label %334

; <label>:334:                                    ; preds = %325
  %335 = or i32 %321, 10
  store i32 %335, i32* %320, align 8
  br label %336

; <label>:336:                                    ; preds = %325, %28, %334
  %337 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %319, i64 0, i32 46
  %338 = load i64, i64* %337, align 16
  %339 = add i64 %338, 1232
  %340 = tail call i64 @ldq_phys(i64 %339)
  %341 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %319, i64 0, i32 43
  store i64 %340, i64* %341, align 8
  %342 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %319, i64 0, i32 8
  %343 = load i32, i32* %342, align 4
  %344 = and i32 %343, -1064961
  %345 = trunc i64 %340 to i32
  %346 = shl i32 %345, 4
  %347 = and i32 %346, 16384
  %348 = or i32 %344, %347
  %349 = shl i32 %345, 8
  %350 = and i32 %349, 1048576
  %351 = or i32 %348, %350
  store i32 %351, i32* %342, align 4
  %352 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %353 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %352, i64 0, i32 7
  store i64 0, i64* %353, align 4
  %354 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %352, i64 0, i32 46
  %355 = load i64, i64* %354, align 16
  %356 = add i64 %355, 1392
  %357 = tail call i64 @ldq_phys(i64 %356)
  %358 = trunc i64 %357 to i32
  %359 = and i64 %357, 2261
  %360 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %361 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 2
  store i64 %359, i64* %361, align 8
  %362 = lshr i32 %358, 9
  %363 = and i32 %362, 2
  %364 = xor i32 %363, 2
  %365 = add nsw i32 %364, -1
  %366 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 6
  store i32 %365, i32* %366, align 8
  %367 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 7
  %368 = load i64, i64* %367, align 4
  %369 = and i64 %368, 3285
  %370 = shl i64 %357, 32
  %371 = ashr exact i64 %370, 32
  %372 = and i64 %371, -3286
  %373 = or i64 %369, %372
  store i64 %373, i64* %367, align 4
  %374 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 1
  store i64 1, i64* %374, align 16
  %375 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 46
  %376 = load i64, i64* %375, align 16
  %377 = add i64 %376, 1024
  %378 = tail call i32 @lduw_phys(i64 %377)
  %379 = add i64 %376, 1032
  %380 = tail call i64 @ldq_phys(i64 %379)
  %381 = add i64 %376, 1028
  %382 = tail call i32 @ldl_phys(i64 %381)
  %383 = add i64 %376, 1026
  %384 = tail call i32 @lduw_phys(i64 %383)
  %385 = shl i32 %384, 8
  %386 = and i32 %385, 65280
  %387 = shl i32 %384, 12
  %388 = and i32 %387, 15728640
  %389 = or i32 %386, %388
  %390 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 0, i32 0
  store i32 %378, i32* %390, align 4
  %391 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 0, i32 1
  store i64 %380, i64* %391, align 4
  %392 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 0, i32 2
  store i32 %382, i32* %392, align 4
  %393 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 0, i32 3
  store i32 %389, i32* %393, align 4
  %394 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 8
  %395 = load i32, i32* %394, align 4
  %396 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 2, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = lshr i32 %397, 17
  %399 = and i32 %398, 32
  %400 = trunc i32 %395 to i16
  %401 = icmp slt i16 %400, 0
  br i1 %401, label %427, label %402

; <label>:402:                                    ; preds = %336
  %403 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 16, i64 0
  %404 = load i64, i64* %403, align 4
  %405 = and i64 %404, 1
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %414, label %407

; <label>:407:                                    ; preds = %402
  %408 = load i64, i64* %367, align 4
  %409 = and i64 %408, 131072
  %410 = icmp ne i64 %409, 0
  %411 = and i32 %395, 16
  %412 = icmp eq i32 %411, 0
  %413 = or i1 %412, %410
  br i1 %413, label %414, label %416

; <label>:414:                                    ; preds = %407, %402
  %415 = or i32 %399, 64
  br label %427

; <label>:416:                                    ; preds = %407
  %417 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 3, i32 1
  %418 = load i64, i64* %417, align 4
  %419 = or i64 %380, %418
  %420 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %360, i64 0, i32 11, i64 2, i32 1
  %421 = load i64, i64* %420, align 4
  %422 = or i64 %419, %421
  %423 = icmp ne i64 %422, 0
  %424 = zext i1 %423 to i32
  %425 = shl nuw nsw i32 %424, 6
  %426 = or i32 %425, %399
  br label %427

; <label>:427:                                    ; preds = %336, %414, %416
  %428 = phi i32 [ %399, %336 ], [ %415, %414 ], [ %426, %416 ]
  %429 = and i32 %395, -97
  %430 = or i32 %428, %429
  store i32 %430, i32* %394, align 4
  %431 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %432 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 46
  %433 = load i64, i64* %432, align 16
  %434 = add i64 %433, 1040
  %435 = tail call i32 @lduw_phys(i64 %434)
  %436 = add i64 %433, 1048
  %437 = tail call i64 @ldq_phys(i64 %436)
  %438 = add i64 %433, 1044
  %439 = tail call i32 @ldl_phys(i64 %438)
  %440 = add i64 %433, 1042
  %441 = tail call i32 @lduw_phys(i64 %440)
  %442 = shl i32 %441, 8
  %443 = and i32 %442, 65280
  %444 = shl i32 %441, 12
  %445 = and i32 %444, 15728640
  %446 = or i32 %443, %445
  %447 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 1, i32 0
  store i32 %435, i32* %447, align 4
  %448 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 1, i32 1
  store i64 %437, i64* %448, align 4
  %449 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 1, i32 2
  store i32 %439, i32* %449, align 4
  %450 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 1, i32 3
  store i32 %446, i32* %450, align 4
  %451 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 8
  %452 = load i32, i32* %451, align 4
  %453 = and i32 %452, 16384
  %454 = icmp eq i32 %453, 0
  %455 = and i32 %444, 2097152
  %456 = icmp eq i32 %455, 0
  %457 = or i1 %456, %454
  br i1 %457, label %461, label %458

; <label>:458:                                    ; preds = %427
  %459 = and i32 %452, -32881
  %460 = or i32 %459, 32816
  br label %466

; <label>:461:                                    ; preds = %427
  %462 = lshr exact i32 %445, 18
  %463 = and i32 %462, 16
  %464 = and i32 %452, -32785
  %465 = or i32 %464, %463
  br label %466

; <label>:466:                                    ; preds = %461, %458
  %467 = phi i32 [ %460, %458 ], [ %465, %461 ]
  store i32 %467, i32* %451, align 4
  %468 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 2, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = lshr i32 %469, 17
  %471 = and i32 %470, 32
  %472 = trunc i32 %467 to i16
  %473 = icmp slt i16 %472, 0
  br i1 %473, label %502, label %474

; <label>:474:                                    ; preds = %466
  %475 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 16, i64 0
  %476 = load i64, i64* %475, align 4
  %477 = and i64 %476, 1
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %487, label %479

; <label>:479:                                    ; preds = %474
  %480 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 7
  %481 = load i64, i64* %480, align 4
  %482 = and i64 %481, 131072
  %483 = icmp ne i64 %482, 0
  %484 = and i32 %467, 16
  %485 = icmp eq i32 %484, 0
  %486 = or i1 %485, %483
  br i1 %486, label %487, label %489

; <label>:487:                                    ; preds = %479, %474
  %488 = or i32 %471, 64
  br label %502

; <label>:489:                                    ; preds = %479
  %490 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 3, i32 1
  %491 = load i64, i64* %490, align 4
  %492 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 0, i32 1
  %493 = load i64, i64* %492, align 4
  %494 = or i64 %493, %491
  %495 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %431, i64 0, i32 11, i64 2, i32 1
  %496 = load i64, i64* %495, align 4
  %497 = or i64 %494, %496
  %498 = icmp ne i64 %497, 0
  %499 = zext i1 %498 to i32
  %500 = shl nuw nsw i32 %499, 6
  %501 = or i32 %500, %471
  br label %502

; <label>:502:                                    ; preds = %466, %487, %489
  %503 = phi i32 [ %471, %466 ], [ %488, %487 ], [ %501, %489 ]
  %504 = and i32 %467, -97
  %505 = or i32 %503, %504
  store i32 %505, i32* %451, align 4
  %506 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %507 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 46
  %508 = load i64, i64* %507, align 16
  %509 = add i64 %508, 1056
  %510 = tail call i32 @lduw_phys(i64 %509)
  %511 = add i64 %508, 1064
  %512 = tail call i64 @ldq_phys(i64 %511)
  %513 = add i64 %508, 1060
  %514 = tail call i32 @ldl_phys(i64 %513)
  %515 = add i64 %508, 1058
  %516 = tail call i32 @lduw_phys(i64 %515)
  %517 = shl i32 %516, 8
  %518 = and i32 %517, 65280
  %519 = shl i32 %516, 12
  %520 = and i32 %519, 15728640
  %521 = or i32 %518, %520
  %522 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 11, i64 2, i32 0
  store i32 %510, i32* %522, align 4
  %523 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 11, i64 2, i32 1
  store i64 %512, i64* %523, align 4
  %524 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 11, i64 2, i32 2
  store i32 %514, i32* %524, align 4
  %525 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 11, i64 2, i32 3
  store i32 %521, i32* %525, align 4
  %526 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 8
  %527 = load i32, i32* %526, align 4
  %528 = lshr exact i32 %520, 17
  %529 = and i32 %528, 32
  %530 = trunc i32 %527 to i16
  %531 = icmp slt i16 %530, 0
  br i1 %531, label %558, label %532

; <label>:532:                                    ; preds = %502
  %533 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 16, i64 0
  %534 = load i64, i64* %533, align 4
  %535 = and i64 %534, 1
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %545, label %537

; <label>:537:                                    ; preds = %532
  %538 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 7
  %539 = load i64, i64* %538, align 4
  %540 = and i64 %539, 131072
  %541 = icmp ne i64 %540, 0
  %542 = and i32 %527, 16
  %543 = icmp eq i32 %542, 0
  %544 = or i1 %543, %541
  br i1 %544, label %545, label %547

; <label>:545:                                    ; preds = %537, %532
  %546 = or i32 %529, 64
  br label %558

; <label>:547:                                    ; preds = %537
  %548 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 11, i64 3, i32 1
  %549 = load i64, i64* %548, align 4
  %550 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %506, i64 0, i32 11, i64 0, i32 1
  %551 = load i64, i64* %550, align 4
  %552 = or i64 %551, %549
  %553 = or i64 %552, %512
  %554 = icmp ne i64 %553, 0
  %555 = zext i1 %554 to i32
  %556 = shl nuw nsw i32 %555, 6
  %557 = or i32 %556, %529
  br label %558

; <label>:558:                                    ; preds = %502, %545, %547
  %559 = phi i32 [ %529, %502 ], [ %546, %545 ], [ %557, %547 ]
  %560 = and i32 %527, -97
  %561 = or i32 %559, %560
  store i32 %561, i32* %526, align 4
  %562 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %563 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 46
  %564 = load i64, i64* %563, align 16
  %565 = add i64 %564, 1072
  %566 = tail call i32 @lduw_phys(i64 %565)
  %567 = add i64 %564, 1080
  %568 = tail call i64 @ldq_phys(i64 %567)
  %569 = add i64 %564, 1076
  %570 = tail call i32 @ldl_phys(i64 %569)
  %571 = add i64 %564, 1074
  %572 = tail call i32 @lduw_phys(i64 %571)
  %573 = shl i32 %572, 8
  %574 = and i32 %573, 65280
  %575 = shl i32 %572, 12
  %576 = and i32 %575, 15728640
  %577 = or i32 %574, %576
  %578 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 3, i32 0
  store i32 %566, i32* %578, align 4
  %579 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 3, i32 1
  store i64 %568, i64* %579, align 4
  %580 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 3, i32 2
  store i32 %570, i32* %580, align 4
  %581 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 3, i32 3
  store i32 %577, i32* %581, align 4
  %582 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 8
  %583 = load i32, i32* %582, align 4
  %584 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 2, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = lshr i32 %585, 17
  %587 = and i32 %586, 32
  %588 = trunc i32 %583 to i16
  %589 = icmp slt i16 %588, 0
  br i1 %589, label %616, label %590

; <label>:590:                                    ; preds = %558
  %591 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 16, i64 0
  %592 = load i64, i64* %591, align 4
  %593 = and i64 %592, 1
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %603, label %595

; <label>:595:                                    ; preds = %590
  %596 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 7
  %597 = load i64, i64* %596, align 4
  %598 = and i64 %597, 131072
  %599 = icmp ne i64 %598, 0
  %600 = and i32 %583, 16
  %601 = icmp eq i32 %600, 0
  %602 = or i1 %601, %599
  br i1 %602, label %603, label %605

; <label>:603:                                    ; preds = %595, %590
  %604 = or i32 %587, 64
  br label %616

; <label>:605:                                    ; preds = %595
  %606 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 0, i32 1
  %607 = load i64, i64* %606, align 4
  %608 = or i64 %607, %568
  %609 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %562, i64 0, i32 11, i64 2, i32 1
  %610 = load i64, i64* %609, align 4
  %611 = or i64 %608, %610
  %612 = icmp ne i64 %611, 0
  %613 = zext i1 %612 to i32
  %614 = shl nuw nsw i32 %613, 6
  %615 = or i32 %614, %587
  br label %616

; <label>:616:                                    ; preds = %558, %603, %605
  %617 = phi i32 [ %587, %558 ], [ %604, %603 ], [ %615, %605 ]
  %618 = and i32 %583, -97
  %619 = or i32 %617, %618
  store i32 %619, i32* %582, align 4
  %620 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %621 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %620, i64 0, i32 46
  %622 = load i64, i64* %621, align 16
  %623 = add i64 %622, 1400
  %624 = tail call i64 @ldq_phys(i64 %623)
  %625 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %626 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %625, i64 0, i32 5
  store i64 %624, i64* %626, align 16
  %627 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %625, i64 0, i32 46
  %628 = load i64, i64* %627, align 16
  %629 = add i64 %628, 1496
  %630 = tail call i64 @ldq_phys(i64 %629)
  %631 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %632 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %631, i64 0, i32 0, i64 4
  store i64 %630, i64* %632, align 16
  %633 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %631, i64 0, i32 46
  %634 = load i64, i64* %633, align 16
  %635 = add i64 %634, 1528
  %636 = tail call i64 @ldq_phys(i64 %635)
  %637 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %638 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %637, i64 0, i32 0, i64 0
  store i64 %636, i64* %638, align 16
  %639 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %640 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %639, i64 0, i32 46
  %641 = load i64, i64* %640, align 16
  %642 = add i64 %641, 1376
  %643 = tail call i64 @ldq_phys(i64 %642)
  %644 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %645 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %644, i64 0, i32 72, i64 7
  store i64 %643, i64* %645, align 8
  %646 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %644, i64 0, i32 46
  %647 = load i64, i64* %646, align 16
  %648 = add i64 %647, 1384
  %649 = tail call i64 @ldq_phys(i64 %648)
  %650 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %651 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %650, i64 0, i32 72, i64 6
  store i64 %649, i64* %651, align 8
  %652 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %650, i64 0, i32 46
  %653 = load i64, i64* %652, align 16
  %654 = add i64 %653, 1227
  %655 = tail call i32 @ldub_phys(i64 %654)
  %656 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %657 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %658 = load i32, i32* %657, align 4
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %662, !prof !2

; <label>:660:                                    ; preds = %616
  %661 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %656, i64 0, i32 8
  br label %668

; <label>:662:                                    ; preds = %616
  %663 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  %664 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %656, i64 0, i32 8
  %665 = load i32, i32* %664, align 4
  %666 = and i32 %665, 3
  tail call void %663(i32 %666, i32 %655)
  %667 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %668

; <label>:668:                                    ; preds = %660, %662
  %669 = phi %struct.CPUX86State* [ %656, %660 ], [ %667, %662 ]
  %670 = phi i32* [ %661, %660 ], [ %664, %662 ]
  %671 = load i32, i32* %670, align 4
  %672 = and i32 %671, -4
  %673 = or i32 %672, %655
  store i32 %673, i32* %670, align 4
  %674 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %669, i64 0, i32 46
  %675 = load i64, i64* %674, align 16
  %676 = add i64 %675, 92
  %677 = tail call i32 @ldub_phys(i64 %676)
  %678 = icmp eq i32 %677, 1
  br i1 %678, label %679, label %681

; <label>:679:                                    ; preds = %668
  %680 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  tail call void @tlb_flush(%struct.CPUX86State* %680, i32 1)
  br label %681

; <label>:681:                                    ; preds = %668, %679
  %682 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %683 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %682, i64 0, i32 9
  %684 = load i32, i32* %683, align 8
  %685 = or i32 %684, 1
  store i32 %685, i32* %683, align 8
  %686 = and i32 %318, 256
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %692, label %688

; <label>:688:                                    ; preds = %681
  %689 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %682, i64 0, i32 86
  %690 = load i32, i32* %689, align 4
  %691 = or i32 %690, 256
  store i32 %691, i32* %689, align 4
  br label %692

; <label>:692:                                    ; preds = %681, %688
  %693 = load i32*, i32** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 16), align 8
  %694 = load i32, i32* %693, align 4
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %699, label %696, !prof !2

; <label>:696:                                    ; preds = %692
  %697 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 9, i32 19), align 8
  tail call void %697(i32 %6, i32 %655)
  %698 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %699

; <label>:699:                                    ; preds = %692, %696
  %700 = phi %struct.CPUX86State* [ %682, %692 ], [ %698, %696 ]
  %701 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %700, i64 0, i32 46
  %702 = load i64, i64* %701, align 16
  %703 = add i64 %702, 168
  %704 = tail call i32 @ldl_phys(i64 %703)
  %705 = icmp slt i32 %704, 0
  br i1 %705, label %706, label %800

; <label>:706:                                    ; preds = %699
  %707 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %708 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %707, i64 0, i32 46
  %709 = load i64, i64* %708, align 16
  %710 = add i64 %709, 172
  %711 = tail call i32 @ldl_phys(i64 %710)
  %712 = load i32, i32* @loglevel, align 4
  %713 = and i32 %712, 2
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %719, label %715

; <label>:715:                                    ; preds = %706
  %716 = and i32 %704, 2048
  %717 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %718 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %717, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %716)
  br label %719

; <label>:719:                                    ; preds = %706, %715
  %720 = and i32 %704, 1792
  %721 = trunc i32 %720 to i11
  switch i11 %721, label %788 [
    i11 0, label %722
    i11 512, label %737
    i11 768, label %754
    i11 -1024, label %770
  ]

; <label>:722:                                    ; preds = %719
  %723 = and i32 %704, 255
  %724 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %725 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %724, i64 0, i32 106
  store i32 %723, i32* %725, align 16
  %726 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %724, i64 0, i32 69
  store i32 %711, i32* %726, align 8
  %727 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %724, i64 0, i32 70
  store i32 0, i32* %727, align 4
  %728 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %724, i64 0, i32 71
  store i64 -1, i64* %728, align 16
  %729 = load i32, i32* @loglevel, align 4
  %730 = and i32 %729, 2
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %735, label %732

; <label>:732:                                    ; preds = %722
  %733 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %734 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %733)
  br label %735

; <label>:735:                                    ; preds = %722, %732
  %736 = load void (i32, i32, i32, i64, i32)*, void (i32, i32, i32, i64, i32)** getelementptr inbounds (%struct.se_libcpu_interface_t, %struct.se_libcpu_interface_t* @g_sqi, i64 0, i32 2, i32 9), align 8
  tail call void %736(i32 %723, i32 0, i32 0, i64 0, i32 1)
  br label %788

; <label>:737:                                    ; preds = %719
  %738 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %739 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %738, i64 0, i32 106
  store i32 2, i32* %739, align 16
  %740 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %738, i64 0, i32 69
  store i32 %711, i32* %740, align 8
  %741 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %738, i64 0, i32 70
  store i32 0, i32* %741, align 4
  %742 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %738, i64 0, i32 5
  %743 = load i64, i64* %742, align 16
  %744 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %738, i64 0, i32 71
  store i64 %743, i64* %744, align 16
  %745 = load i32, i32* @loglevel, align 4
  %746 = and i32 %745, 2
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %752, label %748

; <label>:748:                                    ; preds = %737
  %749 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %750 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %749)
  %751 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %752

; <label>:752:                                    ; preds = %737, %748
  %753 = phi %struct.CPUX86State* [ %738, %737 ], [ %751, %748 ]
  tail call void @cpu_loop_exit(%struct.CPUX86State* %753) #13
  unreachable

; <label>:754:                                    ; preds = %719
  %755 = and i32 %704, 255
  %756 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %757 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %756, i64 0, i32 106
  store i32 %755, i32* %757, align 16
  %758 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %756, i64 0, i32 69
  store i32 %711, i32* %758, align 8
  %759 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %756, i64 0, i32 70
  store i32 0, i32* %759, align 4
  %760 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %756, i64 0, i32 71
  store i64 -1, i64* %760, align 16
  %761 = load i32, i32* @loglevel, align 4
  %762 = and i32 %761, 2
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %768, label %764

; <label>:764:                                    ; preds = %754
  %765 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %766 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %765)
  %767 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %768

; <label>:768:                                    ; preds = %754, %764
  %769 = phi %struct.CPUX86State* [ %756, %754 ], [ %767, %764 ]
  tail call void @cpu_loop_exit(%struct.CPUX86State* %769) #13
  unreachable

; <label>:770:                                    ; preds = %719
  %771 = and i32 %704, 255
  %772 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %773 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %772, i64 0, i32 106
  store i32 %771, i32* %773, align 16
  %774 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %772, i64 0, i32 69
  store i32 %711, i32* %774, align 8
  %775 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %772, i64 0, i32 70
  store i32 1, i32* %775, align 4
  %776 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %772, i64 0, i32 5
  %777 = load i64, i64* %776, align 16
  %778 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %772, i64 0, i32 71
  store i64 %777, i64* %778, align 16
  %779 = load i32, i32* @loglevel, align 4
  %780 = and i32 %779, 2
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %786, label %782

; <label>:782:                                    ; preds = %770
  %783 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %784 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %783)
  %785 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %786

; <label>:786:                                    ; preds = %770, %782
  %787 = phi %struct.CPUX86State* [ %772, %770 ], [ %785, %782 ]
  tail call void @cpu_loop_exit(%struct.CPUX86State* %787) #13
  unreachable

; <label>:788:                                    ; preds = %735, %719
  %789 = load i32, i32* @loglevel, align 4
  %790 = and i32 %789, 2
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %800, label %792

; <label>:792:                                    ; preds = %788
  %793 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %794 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %795 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %794, i64 0, i32 106
  %796 = load i32, i32* %795, align 16
  %797 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %794, i64 0, i32 69
  %798 = load i32, i32* %797, align 8
  %799 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %793, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %796, i32 %798)
  br label %800

; <label>:800:                                    ; preds = %792, %788, %699
  ret void
}

declare void @tlb_flush(%struct.CPUX86State*, i32) local_unnamed_addr #6

; Function Attrs: noreturn uwtable
define void @helper_vmmcall() local_unnamed_addr #3 {
  tail call void @helper_svm_check_intercept_param(i32 129, i64 0)
  tail call fastcc void @raise_exception(i32 6) #13
  unreachable
}

; Function Attrs: uwtable
define void @helper_vmload(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !2

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 48
  %9 = load i64, i64* %8, align 16
  %10 = and i64 %9, 17179869184
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %7
  tail call void @helper_vmexit(i32 130, i64 0)
  unreachable

; <label>:13:                                     ; preds = %1, %7
  %14 = icmp eq i32 %0, 2
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = and i64 %16, 4294967295
  %18 = select i1 %14, i64 %16, i64 %17
  %19 = load i32, i32* @loglevel, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %13
  %23 = add i64 %18, 1096
  br label %33

; <label>:24:                                     ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %26 = add i64 %18, 1096
  %27 = tail call i64 @ldq_phys(i64 %26)
  %28 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 4, i32 1
  %30 = load i64, i64* %29, align 4
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %18, i64 %27, i64 %30)
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %33

; <label>:33:                                     ; preds = %22, %24
  %34 = phi i64 [ %23, %22 ], [ %26, %24 ]
  %35 = phi %struct.CPUX86State* [ %2, %22 ], [ %32, %24 ]
  %36 = add i64 %18, 1088
  %37 = tail call i32 @lduw_phys(i64 %36)
  %38 = tail call i64 @ldq_phys(i64 %34)
  %39 = add i64 %18, 1092
  %40 = tail call i32 @ldl_phys(i64 %39)
  %41 = add i64 %18, 1090
  %42 = tail call i32 @lduw_phys(i64 %41)
  %43 = shl i32 %42, 8
  %44 = and i32 %43, 65280
  %45 = shl i32 %42, 12
  %46 = and i32 %45, 15728640
  %47 = or i32 %44, %46
  %48 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 0
  store i32 %37, i32* %48, align 4
  %49 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 1
  store i64 %38, i64* %49, align 4
  %50 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 2
  store i32 %40, i32* %50, align 4
  %51 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 3
  store i32 %47, i32* %51, align 4
  %52 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 2, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = lshr i32 %55, 17
  %57 = and i32 %56, 32
  %58 = trunc i32 %53 to i16
  %59 = icmp slt i16 %58, 0
  br i1 %59, label %88, label %60

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 16, i64 0
  %62 = load i64, i64* %61, align 4
  %63 = and i64 %62, 1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %73, label %65

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 7
  %67 = load i64, i64* %66, align 4
  %68 = and i64 %67, 131072
  %69 = icmp ne i64 %68, 0
  %70 = and i32 %53, 16
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %71, %69
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %65, %60
  %74 = or i32 %57, 64
  br label %88

; <label>:75:                                     ; preds = %65
  %76 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 3, i32 1
  %77 = load i64, i64* %76, align 4
  %78 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 0, i32 1
  %79 = load i64, i64* %78, align 4
  %80 = or i64 %79, %77
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 2, i32 1
  %82 = load i64, i64* %81, align 4
  %83 = or i64 %80, %82
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = shl nuw nsw i32 %85, 6
  %87 = or i32 %86, %57
  br label %88

; <label>:88:                                     ; preds = %33, %73, %75
  %89 = phi i32 [ %57, %33 ], [ %74, %73 ], [ %87, %75 ]
  %90 = and i32 %53, -97
  %91 = or i32 %89, %90
  store i32 %91, i32* %52, align 4
  %92 = add i64 %18, 1104
  %93 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %94 = tail call i32 @lduw_phys(i64 %92)
  %95 = add i64 %18, 1112
  %96 = tail call i64 @ldq_phys(i64 %95)
  %97 = add i64 %18, 1108
  %98 = tail call i32 @ldl_phys(i64 %97)
  %99 = add i64 %18, 1106
  %100 = tail call i32 @lduw_phys(i64 %99)
  %101 = shl i32 %100, 8
  %102 = and i32 %101, 65280
  %103 = shl i32 %100, 12
  %104 = and i32 %103, 15728640
  %105 = or i32 %102, %104
  %106 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 5, i32 0
  store i32 %94, i32* %106, align 4
  %107 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 5, i32 1
  store i64 %96, i64* %107, align 4
  %108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 5, i32 2
  store i32 %98, i32* %108, align 4
  %109 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 5, i32 3
  store i32 %105, i32* %109, align 4
  %110 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 2, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = lshr i32 %113, 17
  %115 = and i32 %114, 32
  %116 = trunc i32 %111 to i16
  %117 = icmp slt i16 %116, 0
  br i1 %117, label %146, label %118

; <label>:118:                                    ; preds = %88
  %119 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 16, i64 0
  %120 = load i64, i64* %119, align 4
  %121 = and i64 %120, 1
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %131, label %123

; <label>:123:                                    ; preds = %118
  %124 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 7
  %125 = load i64, i64* %124, align 4
  %126 = and i64 %125, 131072
  %127 = icmp ne i64 %126, 0
  %128 = and i32 %111, 16
  %129 = icmp eq i32 %128, 0
  %130 = or i1 %129, %127
  br i1 %130, label %131, label %133

; <label>:131:                                    ; preds = %123, %118
  %132 = or i32 %115, 64
  br label %146

; <label>:133:                                    ; preds = %123
  %134 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 3, i32 1
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 0, i32 1
  %137 = load i64, i64* %136, align 4
  %138 = or i64 %137, %135
  %139 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %93, i64 0, i32 11, i64 2, i32 1
  %140 = load i64, i64* %139, align 4
  %141 = or i64 %138, %140
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = shl nuw nsw i32 %143, 6
  %145 = or i32 %144, %115
  br label %146

; <label>:146:                                    ; preds = %88, %131, %133
  %147 = phi i32 [ %115, %88 ], [ %132, %131 ], [ %145, %133 ]
  %148 = and i32 %111, -97
  %149 = or i32 %147, %148
  store i32 %149, i32* %110, align 4
  %150 = add i64 %18, 1168
  %151 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %152 = tail call i32 @lduw_phys(i64 %150)
  %153 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 13, i32 0
  store i32 %152, i32* %153, align 4
  %154 = add i64 %18, 1176
  %155 = tail call i64 @ldq_phys(i64 %154)
  %156 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 13, i32 1
  store i64 %155, i64* %156, align 4
  %157 = add i64 %18, 1172
  %158 = tail call i32 @ldl_phys(i64 %157)
  %159 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 13, i32 2
  store i32 %158, i32* %159, align 4
  %160 = add i64 %18, 1170
  %161 = tail call i32 @lduw_phys(i64 %160)
  %162 = shl i32 %161, 8
  %163 = and i32 %162, 65280
  %164 = shl i32 %161, 12
  %165 = and i32 %164, 15728640
  %166 = or i32 %163, %165
  %167 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %151, i64 0, i32 13, i32 3
  store i32 %166, i32* %167, align 4
  %168 = add i64 %18, 1136
  %169 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %170 = tail call i32 @lduw_phys(i64 %168)
  %171 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %169, i64 0, i32 12, i32 0
  store i32 %170, i32* %171, align 4
  %172 = add i64 %18, 1144
  %173 = tail call i64 @ldq_phys(i64 %172)
  %174 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %169, i64 0, i32 12, i32 1
  store i64 %173, i64* %174, align 4
  %175 = add i64 %18, 1140
  %176 = tail call i32 @ldl_phys(i64 %175)
  %177 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %169, i64 0, i32 12, i32 2
  store i32 %176, i32* %177, align 4
  %178 = add i64 %18, 1138
  %179 = tail call i32 @lduw_phys(i64 %178)
  %180 = shl i32 %179, 8
  %181 = and i32 %180, 65280
  %182 = shl i32 %179, 12
  %183 = and i32 %182, 15728640
  %184 = or i32 %181, %183
  %185 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %169, i64 0, i32 12, i32 3
  store i32 %184, i32* %185, align 4
  %186 = add i64 %18, 1568
  %187 = tail call i64 @ldq_phys(i64 %186)
  %188 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %189 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %188, i64 0, i32 61
  store i64 %187, i64* %189, align 8
  %190 = add i64 %18, 1544
  %191 = tail call i64 @ldq_phys(i64 %190)
  %192 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %193 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %192, i64 0, i32 58
  store i64 %191, i64* %193, align 16
  %194 = add i64 %18, 1552
  %195 = tail call i64 @ldq_phys(i64 %194)
  %196 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %197 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %196, i64 0, i32 59
  store i64 %195, i64* %197, align 8
  %198 = add i64 %18, 1560
  %199 = tail call i64 @ldq_phys(i64 %198)
  %200 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %201 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %200, i64 0, i32 60
  store i64 %199, i64* %201, align 16
  %202 = add i64 %18, 1536
  %203 = tail call i64 @ldq_phys(i64 %202)
  %204 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %205 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %204, i64 0, i32 44
  store i64 %203, i64* %205, align 16
  %206 = add i64 %18, 1576
  %207 = tail call i64 @ldq_phys(i64 %206)
  %208 = trunc i64 %207 to i32
  %209 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %210 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %209, i64 0, i32 39
  store i32 %208, i32* %210, align 16
  %211 = add i64 %18, 1584
  %212 = tail call i64 @ldq_phys(i64 %211)
  %213 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %214 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %213, i64 0, i32 40
  store i64 %212, i64* %214, align 4
  %215 = add i64 %18, 1592
  %216 = tail call i64 @ldq_phys(i64 %215)
  %217 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %218 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %217, i64 0, i32 41
  store i64 %216, i64* %218, align 4
  ret void
}

; Function Attrs: uwtable
define void @helper_vmsave(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !2

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 48
  %9 = load i64, i64* %8, align 16
  %10 = and i64 %9, 34359738368
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %7
  tail call void @helper_vmexit(i32 131, i64 0)
  unreachable

; <label>:13:                                     ; preds = %1, %7
  %14 = icmp eq i32 %0, 2
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = and i64 %16, 4294967295
  %18 = select i1 %14, i64 %16, i64 %17
  %19 = load i32, i32* @loglevel, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %13
  %23 = add i64 %18, 1096
  br label %33

; <label>:24:                                     ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @logfile, align 8
  %26 = add i64 %18, 1096
  %27 = tail call i64 @ldq_phys(i64 %26)
  %28 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 11, i64 4, i32 1
  %30 = load i64, i64* %29, align 4
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i64 %18, i64 %27, i64 %30)
  %32 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br label %33

; <label>:33:                                     ; preds = %22, %24
  %34 = phi i64 [ %23, %22 ], [ %26, %24 ]
  %35 = phi %struct.CPUX86State* [ %2, %22 ], [ %32, %24 ]
  %36 = add i64 %18, 1088
  %37 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 0
  %38 = load i32, i32* %37, align 4
  tail call void @stw_phys(i64 %36, i32 %38)
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 1
  %40 = load i64, i64* %39, align 4
  tail call void @stq_phys(i64 %34, i64 %40)
  %41 = add i64 %18, 1092
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 2
  %43 = load i32, i32* %42, align 4
  tail call void @stl_phys(i64 %41, i32 %43)
  %44 = add i64 %18, 1090
  %45 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %35, i64 0, i32 11, i64 4, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = lshr i32 %46, 12
  %50 = and i32 %49, 3840
  %51 = or i32 %48, %50
  tail call void @stw_phys(i64 %44, i32 %51)
  %52 = add i64 %18, 1104
  %53 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %54 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 11, i64 5, i32 0
  %55 = load i32, i32* %54, align 4
  tail call void @stw_phys(i64 %52, i32 %55)
  %56 = add i64 %18, 1112
  %57 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 11, i64 5, i32 1
  %58 = load i64, i64* %57, align 4
  tail call void @stq_phys(i64 %56, i64 %58)
  %59 = add i64 %18, 1108
  %60 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 11, i64 5, i32 2
  %61 = load i32, i32* %60, align 4
  tail call void @stl_phys(i64 %59, i32 %61)
  %62 = add i64 %18, 1106
  %63 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %53, i64 0, i32 11, i64 5, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = lshr i32 %64, 12
  %68 = and i32 %67, 3840
  %69 = or i32 %66, %68
  tail call void @stw_phys(i64 %62, i32 %69)
  %70 = add i64 %18, 1168
  %71 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %72 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 13, i32 0
  %73 = load i32, i32* %72, align 4
  tail call void @stw_phys(i64 %70, i32 %73)
  %74 = add i64 %18, 1176
  %75 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 13, i32 1
  %76 = load i64, i64* %75, align 4
  tail call void @stq_phys(i64 %74, i64 %76)
  %77 = add i64 %18, 1172
  %78 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 13, i32 2
  %79 = load i32, i32* %78, align 4
  tail call void @stl_phys(i64 %77, i32 %79)
  %80 = add i64 %18, 1170
  %81 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %71, i64 0, i32 13, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = lshr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = lshr i32 %82, 12
  %86 = and i32 %85, 3840
  %87 = or i32 %84, %86
  tail call void @stw_phys(i64 %80, i32 %87)
  %88 = add i64 %18, 1136
  %89 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %90 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %89, i64 0, i32 12, i32 0
  %91 = load i32, i32* %90, align 4
  tail call void @stw_phys(i64 %88, i32 %91)
  %92 = add i64 %18, 1144
  %93 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %89, i64 0, i32 12, i32 1
  %94 = load i64, i64* %93, align 4
  tail call void @stq_phys(i64 %92, i64 %94)
  %95 = add i64 %18, 1140
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %89, i64 0, i32 12, i32 2
  %97 = load i32, i32* %96, align 4
  tail call void @stl_phys(i64 %95, i32 %97)
  %98 = add i64 %18, 1138
  %99 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %89, i64 0, i32 12, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = lshr i32 %100, 8
  %102 = and i32 %101, 255
  %103 = lshr i32 %100, 12
  %104 = and i32 %103, 3840
  %105 = or i32 %102, %104
  tail call void @stw_phys(i64 %98, i32 %105)
  %106 = add i64 %18, 1568
  %107 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %108 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %107, i64 0, i32 61
  %109 = load i64, i64* %108, align 8
  tail call void @stq_phys(i64 %106, i64 %109)
  %110 = add i64 %18, 1544
  %111 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %112 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %111, i64 0, i32 58
  %113 = load i64, i64* %112, align 16
  tail call void @stq_phys(i64 %110, i64 %113)
  %114 = add i64 %18, 1552
  %115 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %116 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %115, i64 0, i32 59
  %117 = load i64, i64* %116, align 8
  tail call void @stq_phys(i64 %114, i64 %117)
  %118 = add i64 %18, 1560
  %119 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %120 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %119, i64 0, i32 60
  %121 = load i64, i64* %120, align 16
  tail call void @stq_phys(i64 %118, i64 %121)
  %122 = add i64 %18, 1536
  %123 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %124 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %123, i64 0, i32 44
  %125 = load i64, i64* %124, align 16
  tail call void @stq_phys(i64 %122, i64 %125)
  %126 = add i64 %18, 1576
  %127 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %128 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %127, i64 0, i32 39
  %129 = load i32, i32* %128, align 16
  %130 = zext i32 %129 to i64
  tail call void @stq_phys(i64 %126, i64 %130)
  %131 = add i64 %18, 1584
  %132 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %133 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %132, i64 0, i32 40
  %134 = load i64, i64* %133, align 4
  tail call void @stq_phys(i64 %131, i64 %134)
  %135 = add i64 %18, 1592
  %136 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %137 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %136, i64 0, i32 41
  %138 = load i64, i64* %137, align 4
  tail call void @stq_phys(i64 %135, i64 %138)
  ret void
}

; Function Attrs: uwtable
define void @helper_stgi() local_unnamed_addr #2 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !2

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 48
  %8 = load i64, i64* %7, align 16
  %9 = and i64 %8, 68719476736
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %6
  tail call void @helper_vmexit(i32 132, i64 0)
  unreachable

; <label>:12:                                     ; preds = %0, %6
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, 1
  store i32 %15, i32* %13, align 8
  ret void
}

; Function Attrs: uwtable
define void @helper_clgi() local_unnamed_addr #2 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !2

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 48
  %8 = load i64, i64* %7, align 16
  %9 = and i64 %8, 137438953472
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %6
  tail call void @helper_vmexit(i32 133, i64 0)
  unreachable

; <label>:12:                                     ; preds = %0, %6
  %13 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, -2
  store i32 %15, i32* %13, align 8
  ret void
}

; Function Attrs: noreturn uwtable
define void @helper_skinit() local_unnamed_addr #3 {
  tail call void @helper_svm_check_intercept_param(i32 134, i64 0)
  tail call fastcc void @raise_exception(i32 6) #13
  unreachable
}

; Function Attrs: uwtable
define void @helper_invlpga(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !2

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 48
  %9 = load i64, i64* %8, align 16
  %10 = and i64 %9, 67108864
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %7
  tail call void @helper_vmexit(i32 122, i64 0)
  unreachable

; <label>:13:                                     ; preds = %1, %7
  %14 = icmp eq i32 %0, 2
  %15 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = and i64 %16, 4294967295
  %18 = select i1 %14, i64 %16, i64 %17
  tail call void @tlb_flush_page(%struct.CPUX86State* %2, i64 %18)
  ret void
}

; Function Attrs: uwtable
define void @svm_check_intercept(%struct.CPUX86State*, i32) local_unnamed_addr #2 {
  %3 = load i64, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  store %struct.CPUX86State* %0, %struct.CPUX86State** @env, align 8
  tail call void @helper_svm_check_intercept_param(i32 %1, i64 0)
  store i64 %3, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  ret void
}

; Function Attrs: uwtable
define void @helper_svm_check_io(i32, i32, i32) local_unnamed_addr #2 {
  %4 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 48
  %6 = load i64, i64* %5, align 16
  %7 = and i64 %6, 134217728
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %39, label %9

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %4, i64 0, i32 46
  %11 = load i64, i64* %10, align 16
  %12 = add i64 %11, 64
  %13 = tail call i64 @ldq_phys(i64 %12)
  %14 = lshr i32 %1, 4
  %15 = and i32 %14, 7
  %16 = shl i32 1, %15
  %17 = add nuw nsw i32 %16, 65535
  %18 = lshr i32 %0, 3
  %19 = zext i32 %18 to i64
  %20 = add i64 %13, %19
  %21 = tail call i32 @lduw_phys(i64 %20)
  %22 = and i32 %17, 65535
  %23 = and i32 %0, 7
  %24 = shl i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

; <label>:27:                                     ; preds = %9
  %28 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %29 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 46
  %30 = load i64, i64* %29, align 16
  %31 = add i64 %30, 128
  %32 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %28, i64 0, i32 5
  %33 = load i64, i64* %32, align 16
  %34 = zext i32 %2 to i64
  %35 = add i64 %33, %34
  tail call void @stq_phys(i64 %31, i64 %35)
  %36 = shl i32 %0, 16
  %37 = or i32 %36, %1
  %38 = zext i32 %37 to i64
  tail call void @helper_vmexit(i32 123, i64 %38)
  unreachable

; <label>:39:                                     ; preds = %9, %3
  ret void
}

; Function Attrs: uwtable
define void @helper_ldmxcsr(i32) local_unnamed_addr #2 {
  %2 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 34
  store i32 %0, i32* %3, align 16
  %4 = and i32 %0, 24576
  %5 = trunc i32 %4 to i15
  switch i15 %5, label %6 [
    i15 0, label %10
    i15 8192, label %7
    i15 -16384, label %8
    i15 -8192, label %9
  ]

; <label>:6:                                      ; preds = %1
  unreachable

; <label>:7:                                      ; preds = %1
  br label %10

; <label>:8:                                      ; preds = %1
  br label %10

; <label>:9:                                      ; preds = %1
  br label %10

; <label>:10:                                     ; preds = %1, %7, %8, %9
  %11 = phi i32 [ 3, %9 ], [ 2, %8 ], [ 1, %7 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %2, i64 0, i32 32
  tail call void @set_float_rounding_mode(i32 %11, %struct.float_status* %12)
  %13 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %14 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 34
  %15 = load i32, i32* %14, align 16
  %16 = lshr i32 %15, 6
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 32, i32 5
  store i8 %18, i8* %19, align 1
  %20 = trunc i32 %15 to i16
  %21 = lshr i16 %20, 15
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %13, i64 0, i32 28, i32 4
  store i8 %22, i8* %23, align 1
  ret void
}

declare void @set_float_rounding_mode(i32, %struct.float_status*) local_unnamed_addr #6

; Function Attrs: norecurse nounwind uwtable
define void @helper_enter_mmx() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 18
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 21, i64 0
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 16
  %5 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 21, i64 4
  %6 = bitcast i8* %5 to i32*
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_emms() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 21, i64 0
  %3 = bitcast i8* %2 to i32*
  store i32 16843009, i32* %3, align 16
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 21, i64 4
  %5 = bitcast i8* %4 to i32*
  store i32 16843009, i32* %5, align 4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @helper_movq(i8* nocapture, i8* nocapture readonly) local_unnamed_addr #1 {
  %3 = bitcast i8* %1 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %0 to i64*
  store i64 %4, i64* %5, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rclb(i64, i64) local_unnamed_addr #1 {
  %3 = and i64 %1, 31
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* @rclb_table, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %7, label %43, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 1
  %11 = load i64, i64* %10, align 16
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @helper_cc_compute_all(i32 %12)
  %14 = and i64 %0, 255
  %15 = zext i8 %5 to i64
  %16 = shl i64 %14, %15
  %17 = and i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = add nsw i32 %6, -1
  %20 = zext i32 %19 to i64
  %21 = shl i64 %18, %20
  %22 = or i64 %21, %16
  %23 = icmp eq i8 %5, 1
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %9
  %25 = sub nsw i32 9, %6
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %14, %26
  %28 = or i64 %22, %27
  br label %29

; <label>:29:                                     ; preds = %9, %24
  %30 = phi i64 [ %28, %24 ], [ %22, %9 ]
  %31 = and i32 %13, -2050
  %32 = sext i32 %31 to i64
  %33 = xor i64 %30, %0
  %34 = shl i64 %33, 4
  %35 = and i64 %34, 2048
  %36 = sub nsw i32 8, %6
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %14, %37
  %39 = and i64 %38, 1
  %40 = or i64 %32, %39
  %41 = or i64 %40, %35
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 %41, i64* %42, align 8
  br label %45

; <label>:43:                                     ; preds = %2
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 -1, i64* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %43, %29
  %46 = phi i64 [ %30, %29 ], [ %0, %43 ]
  ret i64 %46
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rcrb(i64, i64) local_unnamed_addr #1 {
  %3 = and i64 %1, 31
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* @rclb_table, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %7, label %43, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 1
  %11 = load i64, i64* %10, align 16
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @helper_cc_compute_all(i32 %12)
  %14 = and i64 %0, 255
  %15 = zext i8 %5 to i64
  %16 = lshr i64 %14, %15
  %17 = and i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = sub nsw i32 8, %6
  %20 = zext i32 %19 to i64
  %21 = shl i64 %18, %20
  %22 = or i64 %21, %16
  %23 = icmp eq i8 %5, 1
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %9
  %25 = sub nsw i32 9, %6
  %26 = zext i32 %25 to i64
  %27 = shl i64 %14, %26
  %28 = or i64 %22, %27
  br label %29

; <label>:29:                                     ; preds = %9, %24
  %30 = phi i64 [ %28, %24 ], [ %22, %9 ]
  %31 = and i32 %13, -2050
  %32 = sext i32 %31 to i64
  %33 = xor i64 %30, %0
  %34 = shl i64 %33, 4
  %35 = and i64 %34, 2048
  %36 = add nsw i32 %6, -1
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %14, %37
  %39 = and i64 %38, 1
  %40 = or i64 %32, %39
  %41 = or i64 %40, %35
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 %41, i64* %42, align 8
  br label %45

; <label>:43:                                     ; preds = %2
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 -1, i64* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %43, %29
  %46 = phi i64 [ %30, %29 ], [ %0, %43 ]
  ret i64 %46
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rclw(i64, i64) local_unnamed_addr #1 {
  %3 = and i64 %1, 31
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* @rclw_table, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %7, label %43, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 1
  %11 = load i64, i64* %10, align 16
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @helper_cc_compute_all(i32 %12)
  %14 = and i64 %0, 65535
  %15 = zext i8 %5 to i64
  %16 = shl i64 %14, %15
  %17 = and i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = add nsw i32 %6, -1
  %20 = zext i32 %19 to i64
  %21 = shl i64 %18, %20
  %22 = or i64 %21, %16
  %23 = icmp eq i8 %5, 1
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %9
  %25 = sub nsw i32 17, %6
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %14, %26
  %28 = or i64 %22, %27
  br label %29

; <label>:29:                                     ; preds = %9, %24
  %30 = phi i64 [ %28, %24 ], [ %22, %9 ]
  %31 = and i32 %13, -2050
  %32 = sext i32 %31 to i64
  %33 = xor i64 %30, %0
  %34 = lshr i64 %33, 4
  %35 = and i64 %34, 2048
  %36 = sub nsw i32 16, %6
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %14, %37
  %39 = and i64 %38, 1
  %40 = or i64 %32, %39
  %41 = or i64 %40, %35
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 %41, i64* %42, align 8
  br label %45

; <label>:43:                                     ; preds = %2
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 -1, i64* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %43, %29
  %46 = phi i64 [ %30, %29 ], [ %0, %43 ]
  ret i64 %46
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rcrw(i64, i64) local_unnamed_addr #1 {
  %3 = and i64 %1, 31
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* @rclw_table, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  %8 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %7, label %43, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 1
  %11 = load i64, i64* %10, align 16
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @helper_cc_compute_all(i32 %12)
  %14 = and i64 %0, 65535
  %15 = zext i8 %5 to i64
  %16 = lshr i64 %14, %15
  %17 = and i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = sub nsw i32 16, %6
  %20 = zext i32 %19 to i64
  %21 = shl i64 %18, %20
  %22 = or i64 %21, %16
  %23 = icmp eq i8 %5, 1
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %9
  %25 = sub nsw i32 17, %6
  %26 = zext i32 %25 to i64
  %27 = shl i64 %14, %26
  %28 = or i64 %22, %27
  br label %29

; <label>:29:                                     ; preds = %9, %24
  %30 = phi i64 [ %28, %24 ], [ %22, %9 ]
  %31 = and i32 %13, -2050
  %32 = sext i32 %31 to i64
  %33 = xor i64 %30, %0
  %34 = lshr i64 %33, 4
  %35 = and i64 %34, 2048
  %36 = add nsw i32 %6, -1
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %14, %37
  %39 = and i64 %38, 1
  %40 = or i64 %32, %39
  %41 = or i64 %40, %35
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 %41, i64* %42, align 8
  br label %45

; <label>:43:                                     ; preds = %2
  %44 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %8, i64 0, i32 4
  store i64 -1, i64* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %43, %29
  %46 = phi i64 [ %30, %29 ], [ %0, %43 ]
  ret i64 %46
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rcll(i64, i64) local_unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = and i32 %3, 31
  %5 = icmp eq i32 %4, 0
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %5, label %41, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 1
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @helper_cc_compute_all(i32 %10)
  %12 = and i64 %0, 4294967295
  %13 = zext i32 %4 to i64
  %14 = shl i64 %12, %13
  %15 = and i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = add nsw i32 %4, -1
  %18 = zext i32 %17 to i64
  %19 = shl i64 %16, %18
  %20 = or i64 %19, %14
  %21 = icmp eq i32 %4, 1
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %7
  %23 = sub nsw i32 33, %4
  %24 = zext i32 %23 to i64
  %25 = lshr i64 %12, %24
  %26 = or i64 %20, %25
  br label %27

; <label>:27:                                     ; preds = %7, %22
  %28 = phi i64 [ %26, %22 ], [ %20, %7 ]
  %29 = and i32 %11, -2050
  %30 = sext i32 %29 to i64
  %31 = xor i64 %28, %0
  %32 = lshr i64 %31, 20
  %33 = and i64 %32, 2048
  %34 = sub nsw i32 32, %4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %12, %35
  %37 = and i64 %36, 1
  %38 = or i64 %30, %37
  %39 = or i64 %38, %33
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 %39, i64* %40, align 8
  br label %43

; <label>:41:                                     ; preds = %2
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 -1, i64* %42, align 8
  br label %43

; <label>:43:                                     ; preds = %41, %27
  %44 = phi i64 [ %28, %27 ], [ %0, %41 ]
  ret i64 %44
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rcrl(i64, i64) local_unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = and i32 %3, 31
  %5 = icmp eq i32 %4, 0
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %5, label %41, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 1
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @helper_cc_compute_all(i32 %10)
  %12 = and i64 %0, 4294967295
  %13 = zext i32 %4 to i64
  %14 = lshr i64 %12, %13
  %15 = and i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = sub nsw i32 32, %4
  %18 = zext i32 %17 to i64
  %19 = shl i64 %16, %18
  %20 = or i64 %19, %14
  %21 = icmp eq i32 %4, 1
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %7
  %23 = sub nsw i32 33, %4
  %24 = zext i32 %23 to i64
  %25 = shl i64 %12, %24
  %26 = or i64 %20, %25
  br label %27

; <label>:27:                                     ; preds = %7, %22
  %28 = phi i64 [ %26, %22 ], [ %20, %7 ]
  %29 = and i32 %11, -2050
  %30 = sext i32 %29 to i64
  %31 = xor i64 %28, %0
  %32 = lshr i64 %31, 20
  %33 = and i64 %32, 2048
  %34 = add nsw i32 %4, -1
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %12, %35
  %37 = and i64 %36, 1
  %38 = or i64 %30, %37
  %39 = or i64 %38, %33
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 %39, i64* %40, align 8
  br label %43

; <label>:41:                                     ; preds = %2
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 -1, i64* %42, align 8
  br label %43

; <label>:43:                                     ; preds = %41, %27
  %44 = phi i64 [ %28, %27 ], [ %0, %41 ]
  ret i64 %44
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rclq(i64, i64) local_unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = and i32 %3, 63
  %5 = icmp eq i32 %4, 0
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %5, label %40, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 1
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @helper_cc_compute_all(i32 %10)
  %12 = zext i32 %4 to i64
  %13 = shl i64 %0, %12
  %14 = and i32 %11, 1
  %15 = zext i32 %14 to i64
  %16 = add nsw i32 %4, -1
  %17 = zext i32 %16 to i64
  %18 = shl i64 %15, %17
  %19 = or i64 %18, %13
  %20 = icmp eq i32 %4, 1
  br i1 %20, label %26, label %21

; <label>:21:                                     ; preds = %7
  %22 = sub nsw i32 65, %4
  %23 = zext i32 %22 to i64
  %24 = lshr i64 %0, %23
  %25 = or i64 %19, %24
  br label %26

; <label>:26:                                     ; preds = %7, %21
  %27 = phi i64 [ %25, %21 ], [ %19, %7 ]
  %28 = and i32 %11, -2050
  %29 = sext i32 %28 to i64
  %30 = xor i64 %27, %0
  %31 = lshr i64 %30, 52
  %32 = and i64 %31, 2048
  %33 = sub nsw i32 64, %4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %0, %34
  %36 = and i64 %35, 1
  %37 = or i64 %29, %36
  %38 = or i64 %37, %32
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 %38, i64* %39, align 8
  br label %42

; <label>:40:                                     ; preds = %2
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 -1, i64* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %40, %26
  %43 = phi i64 [ %27, %26 ], [ %0, %40 ]
  ret i64 %43
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_rcrq(i64, i64) local_unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = and i32 %3, 63
  %5 = icmp eq i32 %4, 0
  %6 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  br i1 %5, label %40, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 1
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @helper_cc_compute_all(i32 %10)
  %12 = zext i32 %4 to i64
  %13 = lshr i64 %0, %12
  %14 = and i32 %11, 1
  %15 = zext i32 %14 to i64
  %16 = sub nsw i32 64, %4
  %17 = zext i32 %16 to i64
  %18 = shl i64 %15, %17
  %19 = or i64 %18, %13
  %20 = icmp eq i32 %4, 1
  br i1 %20, label %26, label %21

; <label>:21:                                     ; preds = %7
  %22 = sub nsw i32 65, %4
  %23 = zext i32 %22 to i64
  %24 = shl i64 %0, %23
  %25 = or i64 %19, %24
  br label %26

; <label>:26:                                     ; preds = %7, %21
  %27 = phi i64 [ %25, %21 ], [ %19, %7 ]
  %28 = and i32 %11, -2050
  %29 = sext i32 %28 to i64
  %30 = xor i64 %27, %0
  %31 = lshr i64 %30, 52
  %32 = and i64 %31, 2048
  %33 = add nsw i32 %4, -1
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %0, %34
  %36 = and i64 %35, 1
  %37 = or i64 %29, %36
  %38 = or i64 %37, %32
  %39 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 %38, i64* %39, align 8
  br label %42

; <label>:40:                                     ; preds = %2
  %41 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %6, i64 0, i32 4
  store i64 -1, i64* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %40, %26
  %43 = phi i64 [ %27, %26 ], [ %0, %40 ]
  ret i64 %43
}

; Function Attrs: norecurse nounwind readnone uwtable
define i64 @helper_bsf(i64) local_unnamed_addr #11 {
  %2 = and i64 %0, 1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %13

; <label>:4:                                      ; preds = %1, %4
  %5 = phi i64 [ %8, %4 ], [ %0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %7 = add nuw nsw i32 %6, 1
  %8 = lshr i64 %5, 1
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %4, label %11

; <label>:11:                                     ; preds = %4
  %12 = sext i32 %7 to i64
  br label %13

; <label>:13:                                     ; preds = %11, %1
  %14 = phi i64 [ 0, %1 ], [ %12, %11 ]
  ret i64 %14
}

; Function Attrs: norecurse nounwind readnone uwtable
define i64 @helper_lzcnt(i64, i32) local_unnamed_addr #11 {
  %3 = icmp sgt i32 %1, 0
  %4 = icmp eq i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %19, label %6

; <label>:6:                                      ; preds = %2
  %7 = icmp sgt i64 %0, -1
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %6, %8
  %9 = phi i64 [ %12, %8 ], [ %0, %6 ]
  %10 = phi i32 [ %11, %8 ], [ 63, %6 ]
  %11 = add nsw i32 %10, -1
  %12 = shl i64 %9, 1
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %8, label %14

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i32 [ 63, %6 ], [ %11, %8 ]
  br i1 %3, label %16, label %19

; <label>:16:                                     ; preds = %14
  %17 = add nsw i32 %1, -1
  %18 = sub i32 %17, %15
  br label %19

; <label>:19:                                     ; preds = %14, %2, %16
  %20 = phi i32 [ %18, %16 ], [ %1, %2 ], [ %15, %14 ]
  %21 = sext i32 %20 to i64
  ret i64 %21
}

; Function Attrs: norecurse nounwind readnone uwtable
define i64 @helper_bsr(i64) local_unnamed_addr #11 {
  %2 = icmp sgt i64 %0, -1
  br i1 %2, label %3, label %11

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i64 [ %7, %3 ], [ %0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ 63, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = shl i64 %4, 1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %3, label %9

; <label>:9:                                      ; preds = %3
  %10 = sext i32 %6 to i64
  br label %11

; <label>:11:                                     ; preds = %9, %1
  %12 = phi i64 [ 63, %1 ], [ %10, %9 ]
  ret i64 %12
}

; Function Attrs: norecurse nounwind uwtable
define i32 @cpu_cc_compute_all(%struct.CPUX86State*, i32) local_unnamed_addr #1 {
  %3 = load i64, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  store %struct.CPUX86State* %0, %struct.CPUX86State** @env, align 8
  %4 = tail call i32 @helper_cc_compute_all(i32 %1)
  store i64 %3, i64* bitcast (%struct.CPUX86State** @env to i64*), align 8
  ret i32 %4
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @helper_cc_compute_c(i32) local_unnamed_addr #0 {
  switch i32 %0, label %303 [
    i32 1, label %2
    i32 2, label %8
    i32 3, label %14
    i32 4, label %20
    i32 6, label %26
    i32 7, label %38
    i32 8, label %50
    i32 10, label %60
    i32 11, label %72
    i32 12, label %84
    i32 14, label %94
    i32 15, label %107
    i32 16, label %120
    i32 18, label %131
    i32 19, label %145
    i32 20, label %159
    i32 41, label %297
    i32 37, label %291
    i32 33, label %286
    i32 26, label %171
    i32 27, label %176
    i32 28, label %181
    i32 30, label %186
    i32 31, label %191
    i32 32, label %196
    i32 34, label %201
    i32 35, label %208
    i32 36, label %215
    i32 38, label %222
    i32 39, label %228
    i32 40, label %234
    i32 5, label %240
    i32 9, label %246
    i32 13, label %254
    i32 17, label %262
    i32 21, label %271
    i32 29, label %281
  ]

; <label>:2:                                      ; preds = %1
  %3 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %4 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %3, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 1
  br label %303

; <label>:8:                                      ; preds = %1
  %9 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %10 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %9, i64 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  br label %303

; <label>:14:                                     ; preds = %1
  %15 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %16 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %15, i64 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  br label %303

; <label>:20:                                     ; preds = %1
  %21 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %22 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %21, i64 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  br label %303

; <label>:26:                                     ; preds = %1
  %27 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %28 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %27, i64 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %27, i64 0, i32 3
  %31 = load i64, i64* %30, align 16
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 255
  %34 = trunc i64 %29 to i32
  %35 = and i32 %34, 255
  %36 = icmp ult i32 %33, %35
  %37 = zext i1 %36 to i32
  br label %303

; <label>:38:                                     ; preds = %1
  %39 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %40 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %39, i64 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %39, i64 0, i32 3
  %43 = load i64, i64* %42, align 16
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65535
  %46 = trunc i64 %41 to i32
  %47 = and i32 %46, 65535
  %48 = icmp ult i32 %45, %47
  %49 = zext i1 %48 to i32
  br label %303

; <label>:50:                                     ; preds = %1
  %51 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %52 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %51, i64 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %51, i64 0, i32 3
  %55 = load i64, i64* %54, align 16
  %56 = trunc i64 %55 to i32
  %57 = trunc i64 %53 to i32
  %58 = icmp ult i32 %56, %57
  %59 = zext i1 %58 to i32
  br label %303

; <label>:60:                                     ; preds = %1
  %61 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %62 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %61, i64 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %61, i64 0, i32 3
  %65 = load i64, i64* %64, align 16
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 255
  %68 = trunc i64 %63 to i32
  %69 = and i32 %68, 255
  %70 = icmp ule i32 %67, %69
  %71 = zext i1 %70 to i32
  br label %303

; <label>:72:                                     ; preds = %1
  %73 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %74 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %73, i64 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %73, i64 0, i32 3
  %77 = load i64, i64* %76, align 16
  %78 = trunc i64 %77 to i32
  %79 = and i32 %78, 65535
  %80 = trunc i64 %75 to i32
  %81 = and i32 %80, 65535
  %82 = icmp ule i32 %79, %81
  %83 = zext i1 %82 to i32
  br label %303

; <label>:84:                                     ; preds = %1
  %85 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %86 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %85, i64 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %85, i64 0, i32 3
  %89 = load i64, i64* %88, align 16
  %90 = trunc i64 %89 to i32
  %91 = trunc i64 %87 to i32
  %92 = icmp ule i32 %90, %91
  %93 = zext i1 %92 to i32
  br label %303

; <label>:94:                                     ; preds = %1
  %95 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %96 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 3
  %97 = load i64, i64* %96, align 16
  %98 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %95, i64 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %97
  %101 = trunc i64 %100 to i32
  %102 = and i32 %101, 255
  %103 = trunc i64 %99 to i32
  %104 = and i32 %103, 255
  %105 = icmp ult i32 %102, %104
  %106 = zext i1 %105 to i32
  br label %303

; <label>:107:                                    ; preds = %1
  %108 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %109 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %108, i64 0, i32 3
  %110 = load i64, i64* %109, align 16
  %111 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %108, i64 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %110
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 65535
  %116 = trunc i64 %112 to i32
  %117 = and i32 %116, 65535
  %118 = icmp ult i32 %115, %117
  %119 = zext i1 %118 to i32
  br label %303

; <label>:120:                                    ; preds = %1
  %121 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %122 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %121, i64 0, i32 3
  %123 = load i64, i64* %122, align 16
  %124 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %121, i64 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  %128 = trunc i64 %125 to i32
  %129 = icmp ult i32 %127, %128
  %130 = zext i1 %129 to i32
  br label %303

; <label>:131:                                    ; preds = %1
  %132 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %133 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %132, i64 0, i32 3
  %134 = load i64, i64* %133, align 16
  %135 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %132, i64 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %134, 1
  %138 = add i64 %137, %136
  %139 = trunc i64 %138 to i32
  %140 = and i32 %139, 255
  %141 = trunc i64 %136 to i32
  %142 = and i32 %141, 255
  %143 = icmp ule i32 %140, %142
  %144 = zext i1 %143 to i32
  br label %303

; <label>:145:                                    ; preds = %1
  %146 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %147 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %146, i64 0, i32 3
  %148 = load i64, i64* %147, align 16
  %149 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %146, i64 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %148, 1
  %152 = add i64 %151, %150
  %153 = trunc i64 %152 to i32
  %154 = and i32 %153, 65535
  %155 = trunc i64 %150 to i32
  %156 = and i32 %155, 65535
  %157 = icmp ule i32 %154, %156
  %158 = zext i1 %157 to i32
  br label %303

; <label>:159:                                    ; preds = %1
  %160 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %161 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %160, i64 0, i32 3
  %162 = load i64, i64* %161, align 16
  %163 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %160, i64 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %162, 1
  %166 = add i64 %165, %164
  %167 = trunc i64 %166 to i32
  %168 = trunc i64 %164 to i32
  %169 = icmp ule i32 %167, %168
  %170 = zext i1 %169 to i32
  br label %303

; <label>:171:                                    ; preds = %1
  %172 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %173 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %172, i64 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  br label %303

; <label>:176:                                    ; preds = %1
  %177 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %178 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %177, i64 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  br label %303

; <label>:181:                                    ; preds = %1
  %182 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %183 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %182, i64 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  br label %303

; <label>:186:                                    ; preds = %1
  %187 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %188 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %187, i64 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  br label %303

; <label>:191:                                    ; preds = %1
  %192 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %193 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %192, i64 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  br label %303

; <label>:196:                                    ; preds = %1
  %197 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %198 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %197, i64 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  br label %303

; <label>:201:                                    ; preds = %1
  %202 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %203 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %202, i64 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = lshr i64 %204, 7
  %206 = trunc i64 %205 to i32
  %207 = and i32 %206, 1
  br label %303

; <label>:208:                                    ; preds = %1
  %209 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %210 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %209, i64 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = lshr i64 %211, 15
  %213 = trunc i64 %212 to i32
  %214 = and i32 %213, 1
  br label %303

; <label>:215:                                    ; preds = %1
  %216 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %217 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %216, i64 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = lshr i64 %218, 31
  %220 = trunc i64 %219 to i32
  %221 = and i32 %220, 1
  br label %303

; <label>:222:                                    ; preds = %1
  %223 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %224 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %223, i64 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = and i32 %226, 1
  br label %303

; <label>:228:                                    ; preds = %1
  %229 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %230 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %229, i64 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = and i32 %232, 1
  br label %303

; <label>:234:                                    ; preds = %1
  %235 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %236 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %235, i64 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  %239 = and i32 %238, 1
  br label %303

; <label>:240:                                    ; preds = %1
  %241 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %242 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %241, i64 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i32
  br label %303

; <label>:246:                                    ; preds = %1
  %247 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %248 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %247, i64 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %247, i64 0, i32 3
  %251 = load i64, i64* %250, align 16
  %252 = icmp ult i64 %251, %249
  %253 = zext i1 %252 to i32
  br label %303

; <label>:254:                                    ; preds = %1
  %255 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %256 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %255, i64 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %255, i64 0, i32 3
  %259 = load i64, i64* %258, align 16
  %260 = icmp ule i64 %259, %257
  %261 = zext i1 %260 to i32
  br label %303

; <label>:262:                                    ; preds = %1
  %263 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %264 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %263, i64 0, i32 3
  %265 = load i64, i64* %264, align 16
  %266 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %263, i64 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, %265
  %269 = icmp ult i64 %268, %267
  %270 = zext i1 %269 to i32
  br label %303

; <label>:271:                                    ; preds = %1
  %272 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %273 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %272, i64 0, i32 3
  %274 = load i64, i64* %273, align 16
  %275 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %272, i64 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %274, 1
  %278 = add i64 %277, %276
  %279 = icmp ule i64 %278, %276
  %280 = zext i1 %279 to i32
  br label %303

; <label>:281:                                    ; preds = %1
  %282 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %283 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %282, i64 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = trunc i64 %284 to i32
  br label %303

; <label>:286:                                    ; preds = %1
  %287 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %288 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %287, i64 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  br label %303

; <label>:291:                                    ; preds = %1
  %292 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %293 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %292, i64 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = lshr i64 %294, 63
  %296 = trunc i64 %295 to i32
  br label %303

; <label>:297:                                    ; preds = %1
  %298 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %299 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %298, i64 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = and i32 %301, 1
  br label %303

; <label>:303:                                    ; preds = %1, %297, %291, %286, %281, %271, %262, %254, %246, %240, %234, %228, %222, %215, %208, %201, %196, %191, %186, %181, %176, %171, %159, %145, %131, %120, %107, %94, %84, %72, %60, %50, %38, %26,
  %304 = phi i32 [ %302, %297 ], [ %296, %291 ], [ %290, %286 ], [ %285, %281 ], [ %280, %271 ], [ %270, %262 ], [ %261, %254 ], [ %253, %246 ], [ %245, %240 ], [ %239, %234 ], [ %233, %228 ], [ %227, %222 ], [ %221, %215 ], [ %214, %208 ], [ %207, %201 
  ret i32 %304
}

; Function Attrs: norecurse nounwind uwtable
define i64 @helper_set_cc_op_eflags() local_unnamed_addr #1 {
  %1 = load %struct.CPUX86State*, %struct.CPUX86State** @env, align 8
  %2 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 1
  %3 = load i64, i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @helper_cc_compute_all(i32 %4)
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.CPUX86State, %struct.CPUX86State* %1, i64 0, i32 2
  store i64 %6, i64* %7, align 8
  store i64 1, i64* %2, align 16
  ret i64 0
}

; Function Attrs: norecurse nounwind readnone uwtable
define void @se_ensure_symbolic() local_unnamed_addr #11 {
  ret void
}

; Function Attrs: norecurse uwtable
define weak void @helper_se_call(i64) local_unnamed_addr #12 {
  ret void
}

; Function Attrs: norecurse uwtable
define weak void @helper_se_ret(i64) local_unnamed_addr #12 {
  ret void
}

define i1 @uadds(i16*, i16, i16) {
  %4 = add i16 %1, %2
  store i16 %4, i16* %0
  %5 = icmp ugt i16 %1, %2
  %6 = select i1 %5, i16 %1, i16 %2
  %7 = icmp ult i16 %4, %6
  ret i1 %7
}

define i1 @uadd(i32*, i32, i32) {
  %4 = add i32 %1, %2
  store i32 %4, i32* %0
  %5 = icmp ugt i32 %1, %2
  %6 = select i1 %5, i32 %1, i32 %2
  %7 = icmp ult i32 %4, %6
  ret i1 %7
}

define i1 @uaddl(i64*, i64, i64) {
  %4 = add i64 %1, %2
  store i64 %4, i64* %0
  %5 = icmp ugt i64 %1, %2
  %6 = select i1 %5, i64 %1, i64 %2
  %7 = icmp ult i64 %4, %6
  ret i1 %7
}

attributes #0 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" 
attributes #1 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signe
attributes #2 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="f
attributes #3 = { noreturn uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-b
attributes #5 = { nounwind }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-siz
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-b
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp
attributes #10 = { alwaysinline inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no
attributes #11 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false"
attributes #12 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-
attributes #13 = { noreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!1 = !{i32 1, !"PIC Level", i32 2}
!2 = !{!"branch_weights", i32 2000, i32 1}
!3 = !{!"branch_weights", i32 1, i32 2000}
