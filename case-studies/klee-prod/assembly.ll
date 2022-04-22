; ModuleID = 'sut.bc'
source_filename = "/out/klee-prod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOUND = constant i32 2000, align 4, !dbg !0
@XY = constant i32 797326, align 4, !dbg !6
@XZ = constant i32 632362, align 4, !dbg !10
@YZ = constant i32 2321827, align 4, !dbg !12
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"/out/klee-prod.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = bitcast i32* %x to i8*, !dbg !23
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %y, metadata !25, metadata !DIExpression()), !dbg !26
  %1 = bitcast i32* %y to i8*, !dbg !27
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %z, metadata !29, metadata !DIExpression()), !dbg !30
  %2 = bitcast i32* %z to i8*, !dbg !31
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !32
  %3 = load i32, i32* %x, align 4, !dbg !33
  %cmp = icmp sle i32 1, %3, !dbg !35
  %4 = load i32, i32* %x, align 4, !dbg !36
  %cmp1 = icmp sle i32 %4, 2000, !dbg !37
  %or.cond = and i1 %cmp, %cmp1, !dbg !38
  %5 = load i32, i32* %y, align 4, !dbg !39
  %cmp3 = icmp sle i32 1, %5, !dbg !40
  %or.cond1 = and i1 %or.cond, %cmp3, !dbg !38
  %6 = load i32, i32* %y, align 4, !dbg !41
  %cmp5 = icmp sle i32 %6, 2000, !dbg !42
  %or.cond2 = and i1 %or.cond1, %cmp5, !dbg !38
  %7 = load i32, i32* %z, align 4, !dbg !43
  %cmp7 = icmp sle i32 1, %7, !dbg !44
  %or.cond3 = and i1 %or.cond2, %cmp7, !dbg !38
  %8 = load i32, i32* %z, align 4, !dbg !45
  %cmp9 = icmp sle i32 %8, 2000, !dbg !46
  %or.cond4 = and i1 %or.cond3, %cmp9, !dbg !38
  br i1 %or.cond4, label %if.then, label %if.end18, !dbg !38

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %x, align 4, !dbg !47
  %10 = load i32, i32* %y, align 4, !dbg !50
  %mul = mul nsw i32 %9, %10, !dbg !51
  %cmp10 = icmp eq i32 %mul, 797326, !dbg !52
  br i1 %cmp10, label %land.lhs.true11, label %if.end18, !dbg !53

land.lhs.true11:                                  ; preds = %if.then
  %11 = load i32, i32* %x, align 4, !dbg !54
  %12 = load i32, i32* %z, align 4, !dbg !55
  %mul12 = mul nsw i32 %11, %12, !dbg !56
  %cmp13 = icmp eq i32 %mul12, 632362, !dbg !57
  br i1 %cmp13, label %land.lhs.true14, label %if.end18, !dbg !58

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %13 = load i32, i32* %y, align 4, !dbg !59
  %14 = load i32, i32* %z, align 4, !dbg !60
  %mul15 = mul nsw i32 %13, %14, !dbg !61
  %cmp16 = icmp eq i32 %mul15, 2321827, !dbg !62
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !63

if.then17:                                        ; preds = %land.lhs.true14
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)), !dbg !64
  br label %if.end18, !dbg !66

if.end18:                                         ; preds = %if.then, %land.lhs.true11, %land.lhs.true14, %if.then17, %entry
  ret i32 0, !dbg !67
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "BOUND", scope: !2, file: !3, line: 7, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/out/klee-prod.c", directory: "/home/klee")
!4 = !{}
!5 = !{!0, !6, !10, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "XY", scope: !2, file: !3, line: 8, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "XZ", scope: !2, file: !3, line: 9, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "YZ", scope: !2, file: !3, line: 10, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 6.0.1 "}
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 12, type: !19, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!9}
!21 = !DILocalVariable(name: "x", scope: !18, file: !3, line: 13, type: !9)
!22 = !DILocation(line: 13, column: 9, scope: !18)
!23 = !DILocation(line: 13, column: 32, scope: !18)
!24 = !DILocation(line: 13, column: 12, scope: !18)
!25 = !DILocalVariable(name: "y", scope: !18, file: !3, line: 14, type: !9)
!26 = !DILocation(line: 14, column: 9, scope: !18)
!27 = !DILocation(line: 14, column: 32, scope: !18)
!28 = !DILocation(line: 14, column: 12, scope: !18)
!29 = !DILocalVariable(name: "z", scope: !18, file: !3, line: 15, type: !9)
!30 = !DILocation(line: 15, column: 9, scope: !18)
!31 = !DILocation(line: 15, column: 32, scope: !18)
!32 = !DILocation(line: 15, column: 12, scope: !18)
!33 = !DILocation(line: 17, column: 15, scope: !34)
!34 = distinct !DILexicalBlock(scope: !18, file: !3, line: 17, column: 9)
!35 = !DILocation(line: 17, column: 12, scope: !34)
!36 = !DILocation(line: 17, column: 22, scope: !34)
!37 = !DILocation(line: 17, column: 24, scope: !34)
!38 = !DILocation(line: 17, column: 18, scope: !34)
!39 = !DILocation(line: 17, column: 43, scope: !34)
!40 = !DILocation(line: 17, column: 40, scope: !34)
!41 = !DILocation(line: 17, column: 50, scope: !34)
!42 = !DILocation(line: 17, column: 52, scope: !34)
!43 = !DILocation(line: 17, column: 71, scope: !34)
!44 = !DILocation(line: 17, column: 68, scope: !34)
!45 = !DILocation(line: 17, column: 78, scope: !34)
!46 = !DILocation(line: 17, column: 80, scope: !34)
!47 = !DILocation(line: 18, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 18, column: 13)
!49 = distinct !DILexicalBlock(scope: !34, file: !3, line: 17, column: 91)
!50 = !DILocation(line: 18, column: 18, scope: !48)
!51 = !DILocation(line: 18, column: 16, scope: !48)
!52 = !DILocation(line: 18, column: 20, scope: !48)
!53 = !DILocation(line: 18, column: 27, scope: !48)
!54 = !DILocation(line: 18, column: 31, scope: !48)
!55 = !DILocation(line: 18, column: 35, scope: !48)
!56 = !DILocation(line: 18, column: 33, scope: !48)
!57 = !DILocation(line: 18, column: 37, scope: !48)
!58 = !DILocation(line: 18, column: 44, scope: !48)
!59 = !DILocation(line: 18, column: 48, scope: !48)
!60 = !DILocation(line: 18, column: 52, scope: !48)
!61 = !DILocation(line: 18, column: 50, scope: !48)
!62 = !DILocation(line: 18, column: 54, scope: !48)
!63 = !DILocation(line: 18, column: 13, scope: !49)
!64 = !DILocation(line: 20, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !48, file: !3, line: 18, column: 62)
!66 = !DILocation(line: 21, column: 9, scope: !65)
!67 = !DILocation(line: 24, column: 5, scope: !18)
