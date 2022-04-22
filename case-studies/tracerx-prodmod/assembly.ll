; ModuleID = 'sut.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOUND = constant i32 2000, align 4
@PRIME = constant i32 10007, align 4
@XY = constant i32 6773, align 4
@XZ = constant i32 1921, align 4
@YZ = constant i32 203, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"/out/tracerx-prodmod.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str27 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str38 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast i32* %x to i8*, !dbg !135
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0)), !dbg !135
  %3 = bitcast i32* %y to i8*, !dbg !136
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !dbg !136
  %4 = bitcast i32* %z to i8*, !dbg !137
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !137
  %5 = load i32* %x, align 4, !dbg !138
  %6 = icmp sle i32 1, %5, !dbg !138
  br i1 %6, label %7, label %43, !dbg !138

; <label>:7                                       ; preds = %0
  %8 = load i32* %x, align 4, !dbg !138
  %9 = icmp sle i32 %8, 2000, !dbg !138
  br i1 %9, label %10, label %43, !dbg !138

; <label>:10                                      ; preds = %7
  %11 = load i32* %y, align 4, !dbg !138
  %12 = icmp sle i32 1, %11, !dbg !138
  br i1 %12, label %13, label %43, !dbg !138

; <label>:13                                      ; preds = %10
  %14 = load i32* %y, align 4, !dbg !138
  %15 = icmp sle i32 %14, 2000, !dbg !138
  br i1 %15, label %16, label %43, !dbg !138

; <label>:16                                      ; preds = %13
  %17 = load i32* %z, align 4, !dbg !138
  %18 = icmp sle i32 1, %17, !dbg !138
  br i1 %18, label %19, label %43, !dbg !138

; <label>:19                                      ; preds = %16
  %20 = load i32* %z, align 4, !dbg !138
  %21 = icmp sle i32 %20, 2000, !dbg !138
  br i1 %21, label %22, label %43, !dbg !138

; <label>:22                                      ; preds = %19
  %23 = load i32* %x, align 4, !dbg !140
  %24 = load i32* %y, align 4, !dbg !140
  %25 = mul nsw i32 %23, %24, !dbg !140
  %int_cast_to_i64 = zext i32 10007 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !140
  %26 = srem i32 %25, 10007, !dbg !140
  %27 = icmp eq i32 %26, 6773, !dbg !140
  br i1 %27, label %28, label %42, !dbg !140

; <label>:28                                      ; preds = %22
  %29 = load i32* %x, align 4, !dbg !140
  %30 = load i32* %z, align 4, !dbg !140
  %31 = mul nsw i32 %29, %30, !dbg !140
  %int_cast_to_i641 = zext i32 10007 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !140
  %32 = srem i32 %31, 10007, !dbg !140
  %33 = icmp eq i32 %32, 1921, !dbg !140
  br i1 %33, label %34, label %42, !dbg !140

; <label>:34                                      ; preds = %28
  %35 = load i32* %y, align 4, !dbg !140
  %36 = load i32* %z, align 4, !dbg !140
  %37 = mul nsw i32 %35, %36, !dbg !140
  %int_cast_to_i642 = zext i32 10007 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !140
  %38 = srem i32 %37, 10007, !dbg !140
  %39 = icmp eq i32 %38, 203, !dbg !140
  br i1 %39, label %40, label %42, !dbg !140

; <label>:40                                      ; preds = %34
  %41 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0), i32 21, i8* getel
  br label %42, !dbg !145

; <label>:42                                      ; preds = %40, %34, %28, %22
  br label %43, !dbg !146

; <label>:43                                      ; preds = %42, %19, %16, %13, %10, %7, %0
  ret i32 0, !dbg !147
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !148
  br i1 %1, label %2, label %3, !dbg !148

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str27, i64 0, i64 0)) #7, !dbg !150
  unreachable, !dbg !150

; <label>:3                                       ; preds = %0
  ret void, !dbg !151
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !152
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !152
  %2 = load i32* %x, align 4, !dbg !153, !tbaa !154
  ret i32 %2, !dbg !153
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !158
  br i1 %1, label %3, label %2, !dbg !158

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str38, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !160
  unreachable, !dbg !160

; <label>:3                                       ; preds = %0
  ret void, !dbg !162
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !163
  br i1 %1, label %3, label %2, !dbg !163

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !165
  unreachable, !dbg !165

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !166
  %5 = icmp eq i32 %4, %end, !dbg !166
  br i1 %5, label %21, label %6, !dbg !166

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !168
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !168
  %8 = icmp eq i32 %start, 0, !dbg !170
  %9 = load i32* %x, align 4, !dbg !172, !tbaa !154
  br i1 %8, label %10, label %13, !dbg !170

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !172
  %12 = zext i1 %11 to i64, !dbg !172
  call void @klee_assume(i64 %12) #8, !dbg !172
  br label %19, !dbg !174

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !175
  %15 = zext i1 %14 to i64, !dbg !175
  call void @klee_assume(i64 %15) #8, !dbg !175
  %16 = load i32* %x, align 4, !dbg !177, !tbaa !154
  %17 = icmp slt i32 %16, %end, !dbg !177
  %18 = zext i1 %17 to i64, !dbg !177
  call void @klee_assume(i64 %18) #8, !dbg !177
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !178, !tbaa !154
  br label %21, !dbg !178

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !179
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !180
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !180

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep4 = getelementptr i8* %srcaddr, i64 %2
  %scevgep = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep4, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end6 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep103 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !181
  %wide.load = load <16 x i8>* %3, align 1, !dbg !181
  %next.gep.sum279 = or i64 %index, 16, !dbg !181
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !181
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !181
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !181
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !181
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !181
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !181
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !181
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !181
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val5 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end6, %vector.body ]
  %resume.val7 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val5, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val7, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !180
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !181
  %12 = load i8* %src.03, align 1, !dbg !181, !tbaa !185
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !181
  store i8 %12, i8* %dest.02, align 1, !dbg !181, !tbaa !185
  %14 = icmp eq i64 %10, 0, !dbg !180
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !180, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !187
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !188
  br i1 %1, label %.loopexit, label %2, !dbg !188

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !190
  br i1 %3, label %.preheader, label %18, !dbg !190

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !192
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !192

.lr.ph.preheader:                                 ; preds = %.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %5 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep11 = getelementptr i8* %src, i64 %5
  %scevgep = getelementptr i8* %dst, i64 %5
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep11, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end13 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep110 = getelementptr i8* %dst, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !192
  %wide.load = load <16 x i8>* %6, align 1, !dbg !192
  %next.gep.sum586 = or i64 %index, 16, !dbg !192
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !192
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !192
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !192
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !192
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !192
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !192
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !192
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !192
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %src, %.lr.ph.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val12 = phi i8* [ %dst, %.lr.ph.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end13, %vector.body ]
  %resume.val14 = phi i64 [ %count, %.lr.ph.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %b.04 = phi i8* [ %14, %.lr.ph ], [ %resume.val, %middle.block ]
  %a.03 = phi i8* [ %16, %.lr.ph ], [ %resume.val12, %middle.block ]
  %.02 = phi i64 [ %13, %.lr.ph ], [ %resume.val14, %middle.block ]
  %13 = add i64 %.02, -1, !dbg !192
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !192
  %15 = load i8* %b.04, align 1, !dbg !192, !tbaa !185
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !192
  store i8 %15, i8* %a.03, align 1, !dbg !192, !tbaa !185
  %17 = icmp eq i64 %13, 0, !dbg !192
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !192, !llvm.loop !195

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !196
  %20 = icmp eq i64 %count, 0, !dbg !198
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !198

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !199
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !196
  %n.vec215 = and i64 %count, -32
  %cmp.zero217 = icmp eq i64 %n.vec215, 0
  br i1 %cmp.zero217, label %middle.block210, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph9
  %bound1221 = icmp ule i8* %21, %dst
  %bound0220 = icmp ule i8* %22, %src
  %memcheck.conflict223 = and i1 %bound0220, %bound1221
  %.sum = sub i64 %19, %n.vec215
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %.sum
  %rev.ptr.ind.end229 = getelementptr i8* %dst, i64 %.sum
  %rev.ind.end231 = sub i64 %count, %n.vec215
  br i1 %memcheck.conflict223, label %middle.block210, label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.memcheck224
  %index212 = phi i64 [ %index.next234, %vector.body209 ], [ 0, %vector.memcheck224 ]
  %.sum440 = sub i64 %19, %index212
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !198
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !198
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !198
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !198
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !198
  %.sum505 = add i64 %.sum440, -31, !dbg !198
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !198
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !198
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !198
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !198
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !198
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !198
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !198
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !198
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !198
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !198
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !198
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !198
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !200

middle.block210:                                  ; preds = %vector.body209, %vector.memcheck224, %.lr.ph9
  %resume.val225 = phi i8* [ %21, %.lr.ph9 ], [ %21, %vector.memcheck224 ], [ %rev.ptr.ind.end, %vector.body209 ]
  %resume.val227 = phi i8* [ %22, %.lr.ph9 ], [ %22, %vector.memcheck224 ], [ %rev.ptr.ind.end229, %vector.body209 ]
  %resume.val230 = phi i64 [ %count, %.lr.ph9 ], [ %count, %vector.memcheck224 ], [ %rev.ind.end231, %vector.body209 ]
  %new.indc.resume.val232 = phi i64 [ 0, %.lr.ph9 ], [ 0, %vector.memcheck224 ], [ %n.vec215, %vector.body209 ]
  %cmp.n233 = icmp eq i64 %new.indc.resume.val232, %count
  br i1 %cmp.n233, label %.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211, %middle.block210
  %b.18 = phi i8* [ %33, %scalar.ph211 ], [ %resume.val225, %middle.block210 ]
  %a.17 = phi i8* [ %35, %scalar.ph211 ], [ %resume.val227, %middle.block210 ]
  %.16 = phi i64 [ %32, %scalar.ph211 ], [ %resume.val230, %middle.block210 ]
  %32 = add i64 %.16, -1, !dbg !198
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !198
  %34 = load i8* %b.18, align 1, !dbg !198, !tbaa !185
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !198
  store i8 %34, i8* %a.17, align 1, !dbg !198, !tbaa !185
  %36 = icmp eq i64 %32, 0, !dbg !198
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !198, !llvm.loop !201

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !202
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !203
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !203

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep5 = getelementptr i8* %srcaddr, i64 %2
  %scevgep4 = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep4, %srcaddr
  %bound0 = icmp uge i8* %scevgep5, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end7 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep104 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !204
  %wide.load = load <16 x i8>* %3, align 1, !dbg !204
  %next.gep.sum280 = or i64 %index, 16, !dbg !204
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !204
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !204
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !204
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !204
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !204
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !204
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !204
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !204
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val6 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end7, %vector.body ]
  %resume.val8 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val6, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val8, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !203
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !204
  %12 = load i8* %src.03, align 1, !dbg !204, !tbaa !185
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !204
  store i8 %12, i8* %dest.02, align 1, !dbg !204, !tbaa !185
  %14 = icmp eq i64 %10, 0, !dbg !203
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !203, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !203

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !207
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !208
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !208

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !209
  br label %3, !dbg !208

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !208
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !209
  store volatile i8 %2, i8* %a.02, align 1, !dbg !209, !tbaa !185
  %6 = icmp eq i64 %4, 0, !dbg !208
  br i1 %6, label %._crit_edge, label %3, !dbg !208

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !210
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !16, !27, !41, !53, !66, !86, !101, !116}
!llvm.module.flags = !{!132, !133}
!llvm.ident = !{!134, !134, !134, !134, !134, !134, !134, !134, !134}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !9, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt//
!1 = metadata !{metadata !"/out/tracerx-prodmod.c", metadata !"/opt"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/opt//out/tracerx-prodmod.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !12, metadata !13, metadata !14, metadata !15}
!10 = metadata !{i32 786484, i32 0, null, metadata !"BOUND", metadata !"BOUND", metadata !"", metadata !5, i32 7, metadata !11, i32 0, i32 1, i32* @BOUND, null} ; [ DW_TAG_variable ] [BOUND] [line 7] [def]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!12 = metadata !{i32 786484, i32 0, null, metadata !"PRIME", metadata !"PRIME", metadata !"", metadata !5, i32 8, metadata !11, i32 0, i32 1, i32* @PRIME, null} ; [ DW_TAG_variable ] [PRIME] [line 8] [def]
!13 = metadata !{i32 786484, i32 0, null, metadata !"XY", metadata !"XY", metadata !"", metadata !5, i32 9, metadata !11, i32 0, i32 1, i32* @XY, null} ; [ DW_TAG_variable ] [XY] [line 9] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"XZ", metadata !"XZ", metadata !"", metadata !5, i32 10, metadata !11, i32 0, i32 1, i32* @XZ, null} ; [ DW_TAG_variable ] [XZ] [line 10] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"YZ", metadata !"YZ", metadata !"", metadata !5, i32 11, metadata !11, i32 0, i32 1, i32* @YZ, null} ; [ DW_TAG_variable ] [YZ] [line 11] [def]
!16 = metadata !{i32 786449, metadata !17, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !18, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!17 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786478, metadata !20, metadata !21, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!20 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!21 = metadata !{i32 786473, metadata !20}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_div_zero_check.c]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786689, metadata !19, metadata !"z", metadata !21, i32 16777228, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!27 = metadata !{i32 786449, metadata !28, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !29, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!28 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_int.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786478, metadata !31, metadata !32, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !38, i32 13} ; [ 
!31 = metadata !{metadata !"klee_int.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!32 = metadata !{i32 786473, metadata !31}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_int.c]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !8, metadata !35}
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 786689, metadata !30, metadata !"name", metadata !32, i32 16777229, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!40 = metadata !{i32 786688, metadata !30, metadata !"x", metadata !32, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!41 = metadata !{i32 786449, metadata !42, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !43, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!42 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786478, metadata !45, metadata !46, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!45 = metadata !{metadata !"klee_overshift_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!46 = metadata !{i32 786473, metadata !45}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c]
!47 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !49, metadata !49}
!49 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786689, metadata !44, metadata !"bitWidth", metadata !46, i32 16777236, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!52 = metadata !{i32 786689, metadata !44, metadata !"shift", metadata !46, i32 33554452, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!53 = metadata !{i32 786449, metadata !54, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !55, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!54 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_range.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786478, metadata !57, metadata !58, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!57 = metadata !{metadata !"klee_range.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!58 = metadata !{i32 786473, metadata !57}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!59 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !8, metadata !8, metadata !8, metadata !35}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65}
!62 = metadata !{i32 786689, metadata !56, metadata !"start", metadata !58, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!63 = metadata !{i32 786689, metadata !56, metadata !"end", metadata !58, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!64 = metadata !{i32 786689, metadata !56, metadata !"name", metadata !58, i32 50331661, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!65 = metadata !{i32 786688, metadata !56, metadata !"x", metadata !58, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!66 = metadata !{i32 786449, metadata !67, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !68, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!67 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/memcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786478, metadata !70, metadata !71, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !79, i32 12} 
!70 = metadata !{metadata !"memcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!71 = metadata !{i32 786473, metadata !70}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/memcpy.c]
!72 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !74, metadata !75, metadata !77}
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{i32 786454, metadata !70, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!78 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !85}
!80 = metadata !{i32 786689, metadata !69, metadata !"destaddr", metadata !71, i32 16777228, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!81 = metadata !{i32 786689, metadata !69, metadata !"srcaddr", metadata !71, i32 33554444, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!82 = metadata !{i32 786689, metadata !69, metadata !"len", metadata !71, i32 50331660, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!83 = metadata !{i32 786688, metadata !69, metadata !"dest", metadata !71, i32 13, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!85 = metadata !{i32 786688, metadata !69, metadata !"src", metadata !71, i32 14, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!86 = metadata !{i32 786449, metadata !87, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !88, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!87 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/memmove.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786478, metadata !90, metadata !91, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !95, i32 1
!90 = metadata !{metadata !"memmove.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!91 = metadata !{i32 786473, metadata !90}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!92 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !74, metadata !74, metadata !75, metadata !94}
!94 = metadata !{i32 786454, metadata !90, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99, metadata !100}
!96 = metadata !{i32 786689, metadata !89, metadata !"dst", metadata !91, i32 16777228, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!97 = metadata !{i32 786689, metadata !89, metadata !"src", metadata !91, i32 33554444, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!98 = metadata !{i32 786689, metadata !89, metadata !"count", metadata !91, i32 50331660, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!99 = metadata !{i32 786688, metadata !89, metadata !"a", metadata !91, i32 13, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!100 = metadata !{i32 786688, metadata !89, metadata !"b", metadata !91, i32 14, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!101 = metadata !{i32 786449, metadata !102, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !103, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/o
!102 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/mempcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786478, metadata !105, metadata !106, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !110, 
!105 = metadata !{metadata !"mempcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!106 = metadata !{i32 786473, metadata !105}      ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/mempcpy.c]
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !74, metadata !74, metadata !75, metadata !109}
!109 = metadata !{i32 786454, metadata !105, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!111 = metadata !{i32 786689, metadata !104, metadata !"destaddr", metadata !106, i32 16777227, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!112 = metadata !{i32 786689, metadata !104, metadata !"srcaddr", metadata !106, i32 33554443, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!113 = metadata !{i32 786689, metadata !104, metadata !"len", metadata !106, i32 50331659, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!114 = metadata !{i32 786688, metadata !104, metadata !"dest", metadata !106, i32 12, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!115 = metadata !{i32 786688, metadata !104, metadata !"src", metadata !106, i32 13, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!116 = metadata !{i32 786449, metadata !117, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !118, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/o
!117 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/memset.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786478, metadata !120, metadata !121, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !125, i32
!120 = metadata !{metadata !"memset.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!121 = metadata !{i32 786473, metadata !120}      ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/memset.c]
!122 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !74, metadata !74, metadata !8, metadata !124}
!124 = metadata !{i32 786454, metadata !120, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129}
!126 = metadata !{i32 786689, metadata !119, metadata !"dst", metadata !121, i32 16777227, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!127 = metadata !{i32 786689, metadata !119, metadata !"s", metadata !121, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!128 = metadata !{i32 786689, metadata !119, metadata !"count", metadata !121, i32 50331659, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!129 = metadata !{i32 786688, metadata !119, metadata !"a", metadata !121, i32 12, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!132 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!133 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!134 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!135 = metadata !{i32 14, i32 0, metadata !4, null}
!136 = metadata !{i32 15, i32 0, metadata !4, null}
!137 = metadata !{i32 16, i32 0, metadata !4, null}
!138 = metadata !{i32 18, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-prodmod.c]
!140 = metadata !{i32 19, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !142, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-prodmod.c]
!142 = metadata !{i32 786443, metadata !1, metadata !139, i32 18, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-prodmod.c]
!143 = metadata !{i32 21, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !141, i32 19, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-prodmod.c]
!145 = metadata !{i32 22, i32 0, metadata !144, null}
!146 = metadata !{i32 23, i32 0, metadata !142, null}
!147 = metadata !{i32 25, i32 0, metadata !4, null}
!148 = metadata !{i32 13, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !20, metadata !19, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_div_zero_check.c]
!150 = metadata !{i32 14, i32 0, metadata !149, null}
!151 = metadata !{i32 15, i32 0, metadata !19, null}
!152 = metadata !{i32 15, i32 0, metadata !30, null}
!153 = metadata !{i32 16, i32 0, metadata !30, null}
!154 = metadata !{metadata !155, metadata !155, i64 0}
!155 = metadata !{metadata !"int", metadata !156, i64 0}
!156 = metadata !{metadata !"omnipotent char", metadata !157, i64 0}
!157 = metadata !{metadata !"Simple C/C++ TBAA"}
!158 = metadata !{i32 21, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !45, metadata !44, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c]
!160 = metadata !{i32 27, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !45, metadata !159, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c]
!162 = metadata !{i32 29, i32 0, metadata !44, null}
!163 = metadata !{i32 16, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !57, metadata !56, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!165 = metadata !{i32 17, i32 0, metadata !164, null}
!166 = metadata !{i32 19, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !57, metadata !56, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!168 = metadata !{i32 22, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !57, metadata !167, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!170 = metadata !{i32 25, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !57, metadata !169, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!172 = metadata !{i32 26, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !57, metadata !171, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!174 = metadata !{i32 27, i32 0, metadata !173, null}
!175 = metadata !{i32 28, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !57, metadata !171, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!177 = metadata !{i32 29, i32 0, metadata !176, null}
!178 = metadata !{i32 32, i32 0, metadata !169, null}
!179 = metadata !{i32 34, i32 0, metadata !56, null}
!180 = metadata !{i32 16, i32 0, metadata !69, null}
!181 = metadata !{i32 17, i32 0, metadata !69, null}
!182 = metadata !{metadata !182, metadata !183, metadata !184}
!183 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!184 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!185 = metadata !{metadata !156, metadata !156, i64 0}
!186 = metadata !{metadata !186, metadata !183, metadata !184}
!187 = metadata !{i32 18, i32 0, metadata !69, null}
!188 = metadata !{i32 16, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !90, metadata !89, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!190 = metadata !{i32 19, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !90, metadata !89, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!192 = metadata !{i32 20, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !90, metadata !191, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!194 = metadata !{metadata !194, metadata !183, metadata !184}
!195 = metadata !{metadata !195, metadata !183, metadata !184}
!196 = metadata !{i32 22, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !90, metadata !191, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!198 = metadata !{i32 24, i32 0, metadata !197, null}
!199 = metadata !{i32 23, i32 0, metadata !197, null}
!200 = metadata !{metadata !200, metadata !183, metadata !184}
!201 = metadata !{metadata !201, metadata !183, metadata !184}
!202 = metadata !{i32 28, i32 0, metadata !89, null}
!203 = metadata !{i32 15, i32 0, metadata !104, null}
!204 = metadata !{i32 16, i32 0, metadata !104, null}
!205 = metadata !{metadata !205, metadata !183, metadata !184}
!206 = metadata !{metadata !206, metadata !183, metadata !184}
!207 = metadata !{i32 17, i32 0, metadata !104, null}
!208 = metadata !{i32 13, i32 0, metadata !119, null}
!209 = metadata !{i32 14, i32 0, metadata !119, null}
!210 = metadata !{i32 15, i32 0, metadata !119, null}
