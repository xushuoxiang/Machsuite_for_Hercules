; ModuleID = '/nfs/home/xushuoxiang/Machsuite_for_insertbug/Machsuite_V0.1/bfs/bulk/bfs_syn/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.node_t_struct = type { i64, i64 }
%struct.edge_t_struct = type { i64 }
%struct.hercules_checkdata = type { i32, i32, i32, i32 }

; Function Attrs: noinline
define void @apatb_bfs_ir(%struct.node_t_struct* %nodes, %struct.edge_t_struct* %edges, i64 %starting_node, i8* %level, i64* %level_counts, %struct.hercules_checkdata* %checkdata, i32* %hercules_buffer_size) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %nodes_copy = bitcast i8* %malloccall to [256 x %struct.node_t_struct]*
  %malloccall1 = tail call i8* @malloc(i64 32768)
  %edges_copy = bitcast i8* %malloccall1 to [4096 x %struct.edge_t_struct]*
  %level_copy = alloca [256 x i8], align 512
  %level_counts_copy = alloca [10 x i64], align 512
  %malloccall2 = tail call i8* @malloc(i64 33554432)
  %checkdata_copy = bitcast i8* %malloccall2 to [2097152 x %struct.hercules_checkdata]*
  %hercules_buffer_size_copy = alloca i32, align 512
  %0 = bitcast %struct.node_t_struct* %nodes to [256 x %struct.node_t_struct]*
  %1 = bitcast %struct.edge_t_struct* %edges to [4096 x %struct.edge_t_struct]*
  %2 = bitcast i8* %level to [256 x i8]*
  %3 = bitcast i64* %level_counts to [10 x i64]*
  %4 = bitcast %struct.hercules_checkdata* %checkdata to [2097152 x %struct.hercules_checkdata]*
  call fastcc void @copy_in([256 x %struct.node_t_struct]* %0, [256 x %struct.node_t_struct]* %nodes_copy, [4096 x %struct.edge_t_struct]* %1, [4096 x %struct.edge_t_struct]* %edges_copy, [256 x i8]* %2, [256 x i8]* nonnull align 512 %level_copy, [10 x i64]* %3, [10 x i64]* nonnull align 512 %level_counts_copy, [2097152 x %struct.hercules_checkdata]* %4, [2097152 x %struct.hercules_checkdata]* %checkdata_copy, i32* %hercules_buffer_size, i32* nonnull align 512 %hercules_buffer_size_copy)
  %5 = getelementptr inbounds [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %nodes_copy, i32 0, i32 0
  %6 = getelementptr inbounds [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %edges_copy, i32 0, i32 0
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %level_copy, i32 0, i32 0
  %8 = getelementptr inbounds [10 x i64], [10 x i64]* %level_counts_copy, i32 0, i32 0
  %9 = getelementptr inbounds [2097152 x %struct.hercules_checkdata], [2097152 x %struct.hercules_checkdata]* %checkdata_copy, i32 0, i32 0
  call void @apatb_bfs_hw(%struct.node_t_struct* %5, %struct.edge_t_struct* %6, i64 %starting_node, i8* %7, i64* %8, %struct.hercules_checkdata* %9, i32* %hercules_buffer_size_copy)
  call fastcc void @copy_out([256 x %struct.node_t_struct]* %0, [256 x %struct.node_t_struct]* %nodes_copy, [4096 x %struct.edge_t_struct]* %1, [4096 x %struct.edge_t_struct]* %edges_copy, [256 x i8]* %2, [256 x i8]* nonnull align 512 %level_copy, [10 x i64]* %3, [10 x i64]* nonnull align 512 %level_counts_copy, [2097152 x %struct.hercules_checkdata]* %4, [2097152 x %struct.hercules_checkdata]* %checkdata_copy, i32* %hercules_buffer_size, i32* nonnull align 512 %hercules_buffer_size_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: noinline
define internal fastcc void @copy_in([256 x %struct.node_t_struct]* readonly, [256 x %struct.node_t_struct]* noalias, [4096 x %struct.edge_t_struct]*, [4096 x %struct.edge_t_struct]* noalias, [256 x i8]* readonly, [256 x i8]* noalias align 512, [10 x i64]* readonly, [10 x i64]* noalias align 512, [2097152 x %struct.hercules_checkdata]* readonly, [2097152 x %struct.hercules_checkdata]* noalias, i32* readonly, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct([256 x %struct.node_t_struct]* %1, [256 x %struct.node_t_struct]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct([4096 x %struct.edge_t_struct]* %3, [4096 x %struct.edge_t_struct]* %2)
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* align 512 %5, [256 x i8]* %4)
  call fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* align 512 %7, [10 x i64]* %6)
  call fastcc void @onebyonecpy_hls.p0a2097152struct.hercules_checkdata([2097152 x %struct.hercules_checkdata]* %9, [2097152 x %struct.hercules_checkdata]* %8)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %11, i32* %10)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct([256 x %struct.node_t_struct]* noalias, [256 x %struct.node_t_struct]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x %struct.node_t_struct]* %0, null
  %3 = icmp eq [256 x %struct.node_t_struct]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.02.gep5 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %5 = bitcast i64* %dst.addr.02.gep5 to i8*
  %src.addr.01.gep6 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %6 = bitcast i64* %src.addr.01.gep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %dst.addr.14.gep7 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %0, i64 0, i64 %for.loop.idx9, i32 1
  %7 = bitcast i64* %dst.addr.14.gep7 to i8*
  %src.addr.13.gep8 = getelementptr [256 x %struct.node_t_struct], [256 x %struct.node_t_struct]* %1, i64 0, i64 %for.loop.idx9, i32 1
  %8 = bitcast i64* %src.addr.13.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct([4096 x %struct.edge_t_struct]* noalias, [4096 x %struct.edge_t_struct]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [4096 x %struct.edge_t_struct]* %0, null
  %3 = icmp eq [4096 x %struct.edge_t_struct]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx5 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %0, i64 0, i64 %for.loop.idx5
  %src.addr = getelementptr [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %1, i64 0, i64 %for.loop.idx5
  %5 = bitcast %struct.edge_t_struct* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_8(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.edge_t_struct(%struct.edge_t_struct* %dst.addr, %struct.edge_t_struct* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %dst.addr.02.gep3 = getelementptr [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %0, i64 0, i64 %for.loop.idx5, i32 0
  %9 = bitcast i64* %dst.addr.02.gep3 to i8*
  %src.addr.01.gep4 = getelementptr [4096 x %struct.edge_t_struct], [4096 x %struct.edge_t_struct]* %1, i64 0, i64 %for.loop.idx5, i32 0
  %10 = bitcast i64* %src.addr.01.gep4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 8, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %8, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx5, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.edge_t_struct(%struct.edge_t_struct* noalias nocapture, %struct.edge_t_struct* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.edge_t_struct
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.edge_t_struct* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.edge_t_struct* %2 to i8*
  %6 = bitcast %struct.edge_t_struct* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.edge_t_struct, %struct.edge_t_struct* %2
  %8 = bitcast %struct.edge_t_struct* %2 to i8*
  %9 = bitcast %struct.edge_t_struct* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.edge_t_struct* %1 to i8*
  %11 = bitcast %struct.edge_t_struct* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* noalias align 512, [256 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x i8]* %0, null
  %3 = icmp eq [256 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x i8], [256 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [256 x i8], [256 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* noalias align 512, [10 x i64]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x i64]* %0, null
  %3 = icmp eq [10 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i64* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i64* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

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

; Function Attrs: noinline
define internal fastcc void @copy_out([256 x %struct.node_t_struct]*, [256 x %struct.node_t_struct]* noalias readonly, [4096 x %struct.edge_t_struct]*, [4096 x %struct.edge_t_struct]* noalias, [256 x i8]*, [256 x i8]* noalias readonly align 512, [10 x i64]*, [10 x i64]* noalias readonly align 512, [2097152 x %struct.hercules_checkdata]*, [2097152 x %struct.hercules_checkdata]* noalias readonly, i32*, i32* noalias readonly align 512) unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256struct.node_t_struct([256 x %struct.node_t_struct]* %0, [256 x %struct.node_t_struct]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096struct.edge_t_struct([4096 x %struct.edge_t_struct]* %2, [4096 x %struct.edge_t_struct]* %3)
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* %4, [256 x i8]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a10i64([10 x i64]* %6, [10 x i64]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a2097152struct.hercules_checkdata([2097152 x %struct.hercules_checkdata]* %8, [2097152 x %struct.hercules_checkdata]* %9)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %10, i32* align 512 %11)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_bfs_hw(%struct.node_t_struct*, %struct.edge_t_struct*, i64, i8*, i64*, %struct.hercules_checkdata*, i32*)

define void @bfs_hw_stub_wrapper(%struct.node_t_struct*, %struct.edge_t_struct*, i64, i8*, i64*, %struct.hercules_checkdata*, i32*) #7 {
entry:
  %7 = bitcast %struct.node_t_struct* %0 to [256 x %struct.node_t_struct]*
  %8 = bitcast %struct.edge_t_struct* %1 to [4096 x %struct.edge_t_struct]*
  %9 = bitcast i8* %3 to [256 x i8]*
  %10 = bitcast i64* %4 to [10 x i64]*
  %11 = bitcast %struct.hercules_checkdata* %5 to [2097152 x %struct.hercules_checkdata]*
  call void @copy_out([256 x %struct.node_t_struct]* null, [256 x %struct.node_t_struct]* %7, [4096 x %struct.edge_t_struct]* null, [4096 x %struct.edge_t_struct]* %8, [256 x i8]* null, [256 x i8]* %9, [10 x i64]* null, [10 x i64]* %10, [2097152 x %struct.hercules_checkdata]* null, [2097152 x %struct.hercules_checkdata]* %11, i32* null, i32* %6)
  %12 = bitcast [256 x %struct.node_t_struct]* %7 to %struct.node_t_struct*
  %13 = bitcast [4096 x %struct.edge_t_struct]* %8 to %struct.edge_t_struct*
  %14 = bitcast [256 x i8]* %9 to i8*
  %15 = bitcast [10 x i64]* %10 to i64*
  %16 = bitcast [2097152 x %struct.hercules_checkdata]* %11 to %struct.hercules_checkdata*
  call void @bfs_hw_stub(%struct.node_t_struct* %12, %struct.edge_t_struct* %13, i64 %2, i8* %14, i64* %15, %struct.hercules_checkdata* %16, i32* %6)
  call void @copy_in([256 x %struct.node_t_struct]* null, [256 x %struct.node_t_struct]* %7, [4096 x %struct.edge_t_struct]* null, [4096 x %struct.edge_t_struct]* %8, [256 x i8]* null, [256 x i8]* %9, [10 x i64]* null, [10 x i64]* %10, [2097152 x %struct.hercules_checkdata]* null, [2097152 x %struct.hercules_checkdata]* %11, i32* null, i32* %6)
  ret void
}

declare void @bfs_hw_stub(%struct.node_t_struct*, %struct.edge_t_struct*, i64, i8*, i64*, %struct.hercules_checkdata*, i32*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
