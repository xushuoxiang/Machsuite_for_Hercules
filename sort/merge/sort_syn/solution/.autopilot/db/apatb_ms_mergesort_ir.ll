; ModuleID = '/nfs/home/xushuoxiang/Machsuite_for_insertbug/Machsuite_V0.1/sort/merge/sort_syn/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.hercules_checkdata = type { i32, i32, i32, i32 }

; Function Attrs: noinline
define void @apatb_ms_mergesort_ir(i32* %a, %struct.hercules_checkdata* %checkdata, i32* %hercules_buffer_size) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8192)
  %a_copy = bitcast i8* %malloccall to [2048 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 33554432)
  %checkdata_copy = bitcast i8* %malloccall1 to [2097152 x %struct.hercules_checkdata]*
  %hercules_buffer_size_copy = alloca i32, align 512
  %0 = bitcast i32* %a to [2048 x i32]*
  %1 = bitcast %struct.hercules_checkdata* %checkdata to [2097152 x %struct.hercules_checkdata]*
  call fastcc void @copy_in([2048 x i32]* %0, [2048 x i32]* %a_copy, [2097152 x %struct.hercules_checkdata]* %1, [2097152 x %struct.hercules_checkdata]* %checkdata_copy, i32* %hercules_buffer_size, i32* nonnull align 512 %hercules_buffer_size_copy)
  %2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a_copy, i32 0, i32 0
  %3 = getelementptr inbounds [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %checkdata_copy, i32 0, i32 0
  call void @apatb_ms_mergesort_hw(i32* %2, %struct.hercules_checkdata* %3, i32* %hercules_buffer_size_copy)
  call fastcc void @copy_out([2048 x i32]* %0, [2048 x i32]* %a_copy, [2097152 x %struct.hercules_checkdata]* %1, [2097152 x %struct.hercules_checkdata]* %checkdata_copy, i32* %hercules_buffer_size, i32* nonnull align 512 %hercules_buffer_size_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([2048 x i32]* readonly, [2048 x i32]* noalias, [2097152 x %struct.hercules_checkdata]* readonly, [2097152 x %struct.hercules_checkdata]* noalias, i32* readonly, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %1, [2048 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a2097152struct.hercules_checkdata([2097152 x %struct.hercules_checkdata]* %3, [2097152 x %struct.hercules_checkdata]* %2)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %5, i32* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* noalias, [2048 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2048 x i32]* %0, null
  %3 = icmp eq [2048 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [2048 x i32], [2048 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [2048 x i32], [2048 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2048
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a2097152struct.hercules_checkdata([2097152 x %struct.hercules_checkdata]* noalias, [2097152 x %struct.hercules_checkdata]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2097152 x %struct.hercules_checkdata]* %0, null
  %3 = icmp eq [2097152 x %struct.hercules_checkdata]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx17 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.02.gep9 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %0, i64 0, i64 %for.loop.idx17, i32 0
  %5 = bitcast i32* %dst.addr.02.gep9 to i8*
  %src.addr.01.gep10 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %1, i64 0, i64 %for.loop.idx17, i32 0
  %6 = bitcast i32* %src.addr.01.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %dst.addr.14.gep11 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %0, i64 0, i64 %for.loop.idx17, i32 1
  %7 = bitcast i32* %dst.addr.14.gep11 to i8*
  %src.addr.13.gep12 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %1, i64 0, i64 %for.loop.idx17, i32 1
  %8 = bitcast i32* %src.addr.13.gep12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 4, i1 false)
  %dst.addr.26.gep13 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %0, i64 0, i64 %for.loop.idx17, i32 2
  %9 = bitcast i32* %dst.addr.26.gep13 to i8*
  %src.addr.25.gep14 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %1, i64 0, i64 %for.loop.idx17, i32 2
  %10 = bitcast i32* %src.addr.25.gep14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 4, i1 false)
  %dst.addr.38.gep15 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %0, i64 0, i64 %for.loop.idx17, i32 3
  %11 = bitcast i32* %dst.addr.38.gep15 to i8*
  %src.addr.37.gep16 = getelementptr [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %1, i64 0, i64 %for.loop.idx17, i32 3
  %12 = bitcast i32* %src.addr.37.gep16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx17, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2097152
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([2048 x i32]*, [2048 x i32]* noalias readonly, [2097152 x %struct.hercules_checkdata]*, [2097152 x %struct.hercules_checkdata]* noalias readonly, i32*, i32* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %0, [2048 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a2097152struct.hercules_checkdata([2097152 x %struct.hercules_checkdata]* %2, [2097152 x %struct.hercules_checkdata]* %3)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %4, i32* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_ms_mergesort_hw(i32*, %struct.hercules_checkdata*, i32*)

define void @ms_mergesort_hw_stub_wrapper(i32*, %struct.hercules_checkdata*, i32*) #5 {
entry:
  %3 = bitcast i32* %0 to [2048 x i32]*
  %4 = bitcast %struct.hercules_checkdata* %1 to [2097152 x %struct.hercules_checkdata]*
  call void @copy_out([2048 x i32]* null, [2048 x i32]* %3, [2097152 x %struct.hercules_checkdata]* null, [2097152 x %struct.hercules_checkdata]* %4, i32* null, i32* %2)
  %5 = bitcast [2048 x i32]* %3 to i32*
  %6 = bitcast [2097152 x %struct.hercules_checkdata]* %4 to %struct.hercules_checkdata*
  call void @ms_mergesort_hw_stub(i32* %5, %struct.hercules_checkdata* %6, i32* %2)
  call void @copy_in([2048 x i32]* null, [2048 x i32]* %3, [2097152 x %struct.hercules_checkdata]* null, [2097152 x %struct.hercules_checkdata]* %4, i32* null, i32* %2)
  ret void
}

declare void @ms_mergesort_hw_stub(i32*, %struct.hercules_checkdata*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
