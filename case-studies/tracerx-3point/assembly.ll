; ModuleID = 'sut.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOUND = constant i32 1000, align 4
@WIDTH = constant i32 1000, align 4
@X1 = constant i32 644, align 4
@Y1 = constant i32 20, align 4
@B1 = constant i32 559000, align 4
@X2 = constant i32 -387, align 4
@Y2 = constant i32 -569, align 4
@B2 = constant i32 194000, align 4
@X3 = constant i32 -592, align 4
@Y3 = constant i32 361, align 4
@B3 = constant i32 804000, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"/out/tracerx-3point.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast i32* %x to i8*, !dbg !141
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0)), !dbg !141
  %3 = bitcast i32* %y to i8*, !dbg !142
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !dbg !142
  %4 = load i32* %x, align 4, !dbg !143
  %5 = icmp sle i32 -1000, %4, !dbg !143
  br i1 %5, label %6, label %69, !dbg !143

; <label>:6                                       ; preds = %0
  %7 = load i32* %x, align 4, !dbg !143
  %8 = icmp sle i32 %7, 1000, !dbg !143
  br i1 %8, label %9, label %69, !dbg !143

; <label>:9                                       ; preds = %6
  %10 = load i32* %y, align 4, !dbg !143
  %11 = icmp sle i32 -1000, %10, !dbg !143
  br i1 %11, label %12, label %69, !dbg !143

; <label>:12                                      ; preds = %9
  %13 = load i32* %y, align 4, !dbg !143
  %14 = icmp sle i32 %13, 1000, !dbg !143
  br i1 %14, label %15, label %69, !dbg !143

; <label>:15                                      ; preds = %12
  %16 = load i32* %x, align 4, !dbg !145
  %17 = sub nsw i32 %16, 644, !dbg !145
  %18 = load i32* %x, align 4, !dbg !145
  %19 = sub nsw i32 %18, 644, !dbg !145
  %20 = mul nsw i32 %17, %19, !dbg !145
  %21 = load i32* %y, align 4, !dbg !145
  %22 = sub nsw i32 %21, 20, !dbg !145
  %23 = load i32* %y, align 4, !dbg !145
  %24 = sub nsw i32 %23, 20, !dbg !145
  %25 = mul nsw i32 %22, %24, !dbg !145
  %26 = add nsw i32 %20, %25, !dbg !145
  store i32 %26, i32* %d1, align 4, !dbg !145
  %27 = load i32* %x, align 4, !dbg !147
  %28 = sub nsw i32 %27, -387, !dbg !147
  %29 = load i32* %x, align 4, !dbg !147
  %30 = sub nsw i32 %29, -387, !dbg !147
  %31 = mul nsw i32 %28, %30, !dbg !147
  %32 = load i32* %y, align 4, !dbg !147
  %33 = sub nsw i32 %32, -569, !dbg !147
  %34 = load i32* %y, align 4, !dbg !147
  %35 = sub nsw i32 %34, -569, !dbg !147
  %36 = mul nsw i32 %33, %35, !dbg !147
  %37 = add nsw i32 %31, %36, !dbg !147
  store i32 %37, i32* %d2, align 4, !dbg !147
  %38 = load i32* %x, align 4, !dbg !148
  %39 = sub nsw i32 %38, -592, !dbg !148
  %40 = load i32* %x, align 4, !dbg !148
  %41 = sub nsw i32 %40, -592, !dbg !148
  %42 = mul nsw i32 %39, %41, !dbg !148
  %43 = load i32* %y, align 4, !dbg !148
  %44 = sub nsw i32 %43, 361, !dbg !148
  %45 = load i32* %y, align 4, !dbg !148
  %46 = sub nsw i32 %45, 361, !dbg !148
  %47 = mul nsw i32 %44, %46, !dbg !148
  %48 = add nsw i32 %42, %47, !dbg !148
  store i32 %48, i32* %d3, align 4, !dbg !148
  %49 = load i32* %d1, align 4, !dbg !149
  %50 = icmp sle i32 559000, %49, !dbg !149
  br i1 %50, label %51, label %68, !dbg !149

; <label>:51                                      ; preds = %15
  %52 = load i32* %d1, align 4, !dbg !149
  %53 = icmp sle i32 %52, 560000, !dbg !149
  br i1 %53, label %54, label %68, !dbg !149

; <label>:54                                      ; preds = %51
  %55 = load i32* %d2, align 4, !dbg !149
  %56 = icmp sle i32 194000, %55, !dbg !149
  br i1 %56, label %57, label %68, !dbg !149

; <label>:57                                      ; preds = %54
  %58 = load i32* %d2, align 4, !dbg !149
  %59 = icmp sle i32 %58, 195000, !dbg !149
  br i1 %59, label %60, label %68, !dbg !149

; <label>:60                                      ; preds = %57
  %61 = load i32* %d3, align 4, !dbg !149
  %62 = icmp sle i32 804000, %61, !dbg !149
  br i1 %62, label %63, label %68, !dbg !149

; <label>:63                                      ; preds = %60
  %64 = load i32* %d3, align 4, !dbg !149
  %65 = icmp sle i32 %64, 805000, !dbg !149
  br i1 %65, label %66, label %68, !dbg !149

; <label>:66                                      ; preds = %63
  %67 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0), i32 36, i8* getel
  br label %68, !dbg !153

; <label>:68                                      ; preds = %66, %63, %60, %57, %54, %51, %15
  br label %69, !dbg !154

; <label>:69                                      ; preds = %68, %12, %9, %6, %0
  ret i32 0, !dbg !155
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !156
  br i1 %1, label %2, label %3, !dbg !156

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !158
  unreachable, !dbg !158

; <label>:3                                       ; preds = %0
  ret void, !dbg !159
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !160
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !160
  %2 = load i32* %x, align 4, !dbg !161, !tbaa !162
  ret i32 %2, !dbg !161
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !166
  br i1 %1, label %3, label %2, !dbg !166

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !168
  unreachable, !dbg !168

; <label>:3                                       ; preds = %0
  ret void, !dbg !170
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !171
  br i1 %1, label %3, label %2, !dbg !171

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !173
  unreachable, !dbg !173

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !174
  %5 = icmp eq i32 %4, %end, !dbg !174
  br i1 %5, label %21, label %6, !dbg !174

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !176
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !176
  %8 = icmp eq i32 %start, 0, !dbg !178
  %9 = load i32* %x, align 4, !dbg !180, !tbaa !162
  br i1 %8, label %10, label %13, !dbg !178

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !180
  %12 = zext i1 %11 to i64, !dbg !180
  call void @klee_assume(i64 %12) #8, !dbg !180
  br label %19, !dbg !182

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !183
  %15 = zext i1 %14 to i64, !dbg !183
  call void @klee_assume(i64 %15) #8, !dbg !183
  %16 = load i32* %x, align 4, !dbg !185, !tbaa !162
  %17 = icmp slt i32 %16, %end, !dbg !185
  %18 = zext i1 %17 to i64, !dbg !185
  call void @klee_assume(i64 %18) #8, !dbg !185
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !186, !tbaa !162
  br label %21, !dbg !186

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !187
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !188
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !188

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !189
  %wide.load = load <16 x i8>* %3, align 1, !dbg !189
  %next.gep.sum279 = or i64 %index, 16, !dbg !189
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !189
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !189
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !189
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !189
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !189
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !189
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !189
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !189
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !190

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
  %10 = add i64 %.01, -1, !dbg !188
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !189
  %12 = load i8* %src.03, align 1, !dbg !189, !tbaa !193
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !189
  store i8 %12, i8* %dest.02, align 1, !dbg !189, !tbaa !193
  %14 = icmp eq i64 %10, 0, !dbg !188
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !188, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !195
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !196
  br i1 %1, label %.loopexit, label %2, !dbg !196

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !198
  br i1 %3, label %.preheader, label %18, !dbg !198

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !200
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !200

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !200
  %wide.load = load <16 x i8>* %6, align 1, !dbg !200
  %next.gep.sum586 = or i64 %index, 16, !dbg !200
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !200
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !200
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !200
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !200
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !200
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !200
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !200
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !200
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !202

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
  %13 = add i64 %.02, -1, !dbg !200
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !200
  %15 = load i8* %b.04, align 1, !dbg !200, !tbaa !193
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !200
  store i8 %15, i8* %a.03, align 1, !dbg !200, !tbaa !193
  %17 = icmp eq i64 %13, 0, !dbg !200
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !200, !llvm.loop !203

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !204
  %20 = icmp eq i64 %count, 0, !dbg !206
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !206

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !207
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !204
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !206
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !206
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !206
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !206
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !206
  %.sum505 = add i64 %.sum440, -31, !dbg !206
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !206
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !206
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !206
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !206
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !206
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !206
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !206
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !206
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !206
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !206
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !206
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !206
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !208

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
  %32 = add i64 %.16, -1, !dbg !206
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !206
  %34 = load i8* %b.18, align 1, !dbg !206, !tbaa !193
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !206
  store i8 %34, i8* %a.17, align 1, !dbg !206, !tbaa !193
  %36 = icmp eq i64 %32, 0, !dbg !206
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !206, !llvm.loop !209

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !210
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !211
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !211

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !212
  %wide.load = load <16 x i8>* %3, align 1, !dbg !212
  %next.gep.sum280 = or i64 %index, 16, !dbg !212
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !212
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !212
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !212
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !212
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !212
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !212
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !212
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !212
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !213

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
  %10 = add i64 %.01, -1, !dbg !211
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !212
  %12 = load i8* %src.03, align 1, !dbg !212, !tbaa !193
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !212
  store i8 %12, i8* %dest.02, align 1, !dbg !212, !tbaa !193
  %14 = icmp eq i64 %10, 0, !dbg !211
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !211, !llvm.loop !214

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !211

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !215
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !216
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !216

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !217
  br label %3, !dbg !216

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !216
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !217
  store volatile i8 %2, i8* %a.02, align 1, !dbg !217, !tbaa !193
  %6 = icmp eq i64 %4, 0, !dbg !216
  br i1 %6, label %._crit_edge, label %3, !dbg !216

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !218
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

!llvm.dbg.cu = !{!0, !22, !33, !47, !59, !72, !92, !107, !122}
!llvm.module.flags = !{!138, !139}
!llvm.ident = !{!140, !140, !140, !140, !140, !140, !140, !140, !140}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !9, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt//
!1 = metadata !{metadata !"/out/tracerx-3point.c", metadata !"/opt"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/opt//out/tracerx-3point.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!10 = metadata !{i32 786484, i32 0, null, metadata !"BOUND", metadata !"BOUND", metadata !"", metadata !5, i32 7, metadata !11, i32 0, i32 1, i32* @BOUND, null} ; [ DW_TAG_variable ] [BOUND] [line 7] [def]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!12 = metadata !{i32 786484, i32 0, null, metadata !"WIDTH", metadata !"WIDTH", metadata !"", metadata !5, i32 8, metadata !11, i32 0, i32 1, i32* @WIDTH, null} ; [ DW_TAG_variable ] [WIDTH] [line 8] [def]
!13 = metadata !{i32 786484, i32 0, null, metadata !"X1", metadata !"X1", metadata !"", metadata !5, i32 10, metadata !11, i32 0, i32 1, i32* @X1, null} ; [ DW_TAG_variable ] [X1] [line 10] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"Y1", metadata !"Y1", metadata !"", metadata !5, i32 11, metadata !11, i32 0, i32 1, i32* @Y1, null} ; [ DW_TAG_variable ] [Y1] [line 11] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"B1", metadata !"B1", metadata !"", metadata !5, i32 12, metadata !11, i32 0, i32 1, i32* @B1, null} ; [ DW_TAG_variable ] [B1] [line 12] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"X2", metadata !"X2", metadata !"", metadata !5, i32 14, metadata !11, i32 0, i32 1, i32* @X2, null} ; [ DW_TAG_variable ] [X2] [line 14] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"Y2", metadata !"Y2", metadata !"", metadata !5, i32 15, metadata !11, i32 0, i32 1, i32* @Y2, null} ; [ DW_TAG_variable ] [Y2] [line 15] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"B2", metadata !"B2", metadata !"", metadata !5, i32 16, metadata !11, i32 0, i32 1, i32* @B2, null} ; [ DW_TAG_variable ] [B2] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"X3", metadata !"X3", metadata !"", metadata !5, i32 18, metadata !11, i32 0, i32 1, i32* @X3, null} ; [ DW_TAG_variable ] [X3] [line 18] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"Y3", metadata !"Y3", metadata !"", metadata !5, i32 19, metadata !11, i32 0, i32 1, i32* @Y3, null} ; [ DW_TAG_variable ] [Y3] [line 19] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"B3", metadata !"B3", metadata !"", metadata !5, i32 20, metadata !11, i32 0, i32 1, i32* @B3, null} ; [ DW_TAG_variable ] [B3] [line 20] [def]
!22 = metadata !{i32 786449, metadata !23, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !24, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!23 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786478, metadata !26, metadata !27, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!26 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!27 = metadata !{i32 786473, metadata !26}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_div_zero_check.c]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786689, metadata !25, metadata !"z", metadata !27, i32 16777228, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!33 = metadata !{i32 786449, metadata !34, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !35, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!34 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_int.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786478, metadata !37, metadata !38, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !44, i32 13} ; [ 
!37 = metadata !{metadata !"klee_int.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!38 = metadata !{i32 786473, metadata !37}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_int.c]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !8, metadata !41}
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!43 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786689, metadata !36, metadata !"name", metadata !38, i32 16777229, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!46 = metadata !{i32 786688, metadata !36, metadata !"x", metadata !38, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!47 = metadata !{i32 786449, metadata !48, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !49, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!48 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786478, metadata !51, metadata !52, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!51 = metadata !{metadata !"klee_overshift_check.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!52 = metadata !{i32 786473, metadata !51}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c]
!53 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !55, metadata !55}
!55 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786689, metadata !50, metadata !"bitWidth", metadata !52, i32 16777236, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!58 = metadata !{i32 786689, metadata !50, metadata !"shift", metadata !52, i32 33554452, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!59 = metadata !{i32 786449, metadata !60, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !61, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!60 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/klee_range.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786478, metadata !63, metadata !64, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!63 = metadata !{metadata !"klee_range.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!64 = metadata !{i32 786473, metadata !63}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !8, metadata !8, metadata !8, metadata !41}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71}
!68 = metadata !{i32 786689, metadata !62, metadata !"start", metadata !64, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!69 = metadata !{i32 786689, metadata !62, metadata !"end", metadata !64, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!70 = metadata !{i32 786689, metadata !62, metadata !"name", metadata !64, i32 50331661, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!71 = metadata !{i32 786688, metadata !62, metadata !"x", metadata !64, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!72 = metadata !{i32 786449, metadata !73, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !74, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!73 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/memcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786478, metadata !76, metadata !77, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !85, i32 12} 
!76 = metadata !{metadata !"memcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!77 = metadata !{i32 786473, metadata !76}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/memcpy.c]
!78 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !80, metadata !81, metadata !83}
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!82 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{i32 786454, metadata !76, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!84 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !91}
!86 = metadata !{i32 786689, metadata !75, metadata !"destaddr", metadata !77, i32 16777228, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!87 = metadata !{i32 786689, metadata !75, metadata !"srcaddr", metadata !77, i32 33554444, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!88 = metadata !{i32 786689, metadata !75, metadata !"len", metadata !77, i32 50331660, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!89 = metadata !{i32 786688, metadata !75, metadata !"dest", metadata !77, i32 13, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!91 = metadata !{i32 786688, metadata !75, metadata !"src", metadata !77, i32 14, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!92 = metadata !{i32 786449, metadata !93, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !94, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/opt/
!93 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/memmove.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786478, metadata !96, metadata !97, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !101, i32 
!96 = metadata !{metadata !"memmove.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!97 = metadata !{i32 786473, metadata !96}        ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!98 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{metadata !80, metadata !80, metadata !81, metadata !100}
!100 = metadata !{i32 786454, metadata !96, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!102 = metadata !{i32 786689, metadata !95, metadata !"dst", metadata !97, i32 16777228, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!103 = metadata !{i32 786689, metadata !95, metadata !"src", metadata !97, i32 33554444, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!104 = metadata !{i32 786689, metadata !95, metadata !"count", metadata !97, i32 50331660, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!105 = metadata !{i32 786688, metadata !95, metadata !"a", metadata !97, i32 13, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!106 = metadata !{i32 786688, metadata !95, metadata !"b", metadata !97, i32 14, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!107 = metadata !{i32 786449, metadata !108, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !109, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/o
!108 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/mempcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786478, metadata !111, metadata !112, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !116, 
!111 = metadata !{metadata !"mempcpy.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!112 = metadata !{i32 786473, metadata !111}      ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/mempcpy.c]
!113 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{metadata !80, metadata !80, metadata !81, metadata !115}
!115 = metadata !{i32 786454, metadata !111, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!117 = metadata !{i32 786689, metadata !110, metadata !"destaddr", metadata !112, i32 16777227, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!118 = metadata !{i32 786689, metadata !110, metadata !"srcaddr", metadata !112, i32 33554443, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!119 = metadata !{i32 786689, metadata !110, metadata !"len", metadata !112, i32 50331659, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!120 = metadata !{i32 786688, metadata !110, metadata !"dest", metadata !112, i32 12, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!121 = metadata !{i32 786688, metadata !110, metadata !"src", metadata !112, i32 13, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!122 = metadata !{i32 786449, metadata !123, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !124, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/o
!123 = metadata !{metadata !"/opt/tracerx/runtime/Intrinsic/memset.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 786478, metadata !126, metadata !127, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !131, i32
!126 = metadata !{metadata !"memset.c", metadata !"/opt/tracerx/runtime/Intrinsic"}
!127 = metadata !{i32 786473, metadata !126}      ; [ DW_TAG_file_type ] [/opt/tracerx/runtime/Intrinsic/memset.c]
!128 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !80, metadata !80, metadata !8, metadata !130}
!130 = metadata !{i32 786454, metadata !126, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135}
!132 = metadata !{i32 786689, metadata !125, metadata !"dst", metadata !127, i32 16777227, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!133 = metadata !{i32 786689, metadata !125, metadata !"s", metadata !127, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!134 = metadata !{i32 786689, metadata !125, metadata !"count", metadata !127, i32 50331659, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!135 = metadata !{i32 786688, metadata !125, metadata !"a", metadata !127, i32 12, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!138 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!139 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!140 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!141 = metadata !{i32 25, i32 0, metadata !4, null}
!142 = metadata !{i32 26, i32 0, metadata !4, null}
!143 = metadata !{i32 28, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-3point.c]
!145 = metadata !{i32 29, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !144, i32 28, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-3point.c]
!147 = metadata !{i32 30, i32 0, metadata !146, null}
!148 = metadata !{i32 31, i32 0, metadata !146, null}
!149 = metadata !{i32 32, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !146, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-3point.c]
!151 = metadata !{i32 36, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !150, i32 34, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/opt//out/tracerx-3point.c]
!153 = metadata !{i32 37, i32 0, metadata !152, null}
!154 = metadata !{i32 38, i32 0, metadata !146, null}
!155 = metadata !{i32 40, i32 0, metadata !4, null}
!156 = metadata !{i32 13, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !26, metadata !25, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_div_zero_check.c]
!158 = metadata !{i32 14, i32 0, metadata !157, null}
!159 = metadata !{i32 15, i32 0, metadata !25, null}
!160 = metadata !{i32 15, i32 0, metadata !36, null}
!161 = metadata !{i32 16, i32 0, metadata !36, null}
!162 = metadata !{metadata !163, metadata !163, i64 0}
!163 = metadata !{metadata !"int", metadata !164, i64 0}
!164 = metadata !{metadata !"omnipotent char", metadata !165, i64 0}
!165 = metadata !{metadata !"Simple C/C++ TBAA"}
!166 = metadata !{i32 21, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !51, metadata !50, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c]
!168 = metadata !{i32 27, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !51, metadata !167, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_overshift_check.c]
!170 = metadata !{i32 29, i32 0, metadata !50, null}
!171 = metadata !{i32 16, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !63, metadata !62, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!173 = metadata !{i32 17, i32 0, metadata !172, null}
!174 = metadata !{i32 19, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !63, metadata !62, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!176 = metadata !{i32 22, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !63, metadata !175, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!178 = metadata !{i32 25, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !63, metadata !177, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!180 = metadata !{i32 26, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !63, metadata !179, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!182 = metadata !{i32 27, i32 0, metadata !181, null}
!183 = metadata !{i32 28, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !63, metadata !179, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/klee_range.c]
!185 = metadata !{i32 29, i32 0, metadata !184, null}
!186 = metadata !{i32 32, i32 0, metadata !177, null}
!187 = metadata !{i32 34, i32 0, metadata !62, null}
!188 = metadata !{i32 16, i32 0, metadata !75, null}
!189 = metadata !{i32 17, i32 0, metadata !75, null}
!190 = metadata !{metadata !190, metadata !191, metadata !192}
!191 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!192 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!193 = metadata !{metadata !164, metadata !164, i64 0}
!194 = metadata !{metadata !194, metadata !191, metadata !192}
!195 = metadata !{i32 18, i32 0, metadata !75, null}
!196 = metadata !{i32 16, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !96, metadata !95, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!198 = metadata !{i32 19, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !96, metadata !95, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!200 = metadata !{i32 20, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !96, metadata !199, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!202 = metadata !{metadata !202, metadata !191, metadata !192}
!203 = metadata !{metadata !203, metadata !191, metadata !192}
!204 = metadata !{i32 22, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !96, metadata !199, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/opt/tracerx/runtime/Intrinsic/memmove.c]
!206 = metadata !{i32 24, i32 0, metadata !205, null}
!207 = metadata !{i32 23, i32 0, metadata !205, null}
!208 = metadata !{metadata !208, metadata !191, metadata !192}
!209 = metadata !{metadata !209, metadata !191, metadata !192}
!210 = metadata !{i32 28, i32 0, metadata !95, null}
!211 = metadata !{i32 15, i32 0, metadata !110, null}
!212 = metadata !{i32 16, i32 0, metadata !110, null}
!213 = metadata !{metadata !213, metadata !191, metadata !192}
!214 = metadata !{metadata !214, metadata !191, metadata !192}
!215 = metadata !{i32 17, i32 0, metadata !110, null}
!216 = metadata !{i32 13, i32 0, metadata !125, null}
!217 = metadata !{i32 14, i32 0, metadata !125, null}
!218 = metadata !{i32 15, i32 0, metadata !125, null}
