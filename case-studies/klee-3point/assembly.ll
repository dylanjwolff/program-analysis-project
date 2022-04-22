; ModuleID = 'sut.bc'
source_filename = "/out/klee-3point.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOUND = constant i32 1000, align 4, !dbg !0
@WIDTH = constant i32 1000, align 4, !dbg !6
@X1 = constant i32 644, align 4, !dbg !10
@Y1 = constant i32 20, align 4, !dbg !12
@B1 = constant i32 559000, align 4, !dbg !14
@X2 = constant i32 -387, align 4, !dbg !16
@Y2 = constant i32 -569, align 4, !dbg !18
@B2 = constant i32 194000, align 4, !dbg !20
@X3 = constant i32 -592, align 4, !dbg !22
@Y3 = constant i32 361, align 4, !dbg !24
@B3 = constant i32 804000, align 4, !dbg !26
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/out/klee-3point.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %d1, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %d2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %d3, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %x, metadata !41, metadata !DIExpression()), !dbg !42
  %0 = bitcast i32* %x to i8*, !dbg !43
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %y, metadata !45, metadata !DIExpression()), !dbg !46
  %1 = bitcast i32* %y to i8*, !dbg !47
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !48
  %2 = load i32, i32* %x, align 4, !dbg !49
  %cmp = icmp sle i32 -1000, %2, !dbg !51
  %3 = load i32, i32* %x, align 4, !dbg !52
  %cmp1 = icmp sle i32 %3, 1000, !dbg !53
  %or.cond = and i1 %cmp, %cmp1, !dbg !54
  %4 = load i32, i32* %y, align 4, !dbg !55
  %cmp3 = icmp sle i32 -1000, %4, !dbg !56
  %or.cond1 = and i1 %or.cond, %cmp3, !dbg !54
  %5 = load i32, i32* %y, align 4, !dbg !57
  %cmp5 = icmp sle i32 %5, 1000, !dbg !58
  %or.cond2 = and i1 %or.cond1, %cmp5, !dbg !54
  br i1 %or.cond2, label %if.then, label %if.end36, !dbg !54

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %x, align 4, !dbg !59
  %sub = sub nsw i32 %6, 644, !dbg !61
  %7 = load i32, i32* %x, align 4, !dbg !62
  %sub6 = sub nsw i32 %7, 644, !dbg !63
  %mul = mul nsw i32 %sub, %sub6, !dbg !64
  %8 = load i32, i32* %y, align 4, !dbg !65
  %sub7 = sub nsw i32 %8, 20, !dbg !66
  %9 = load i32, i32* %y, align 4, !dbg !67
  %sub8 = sub nsw i32 %9, 20, !dbg !68
  %mul9 = mul nsw i32 %sub7, %sub8, !dbg !69
  %add = add nsw i32 %mul, %mul9, !dbg !70
  store i32 %add, i32* %d1, align 4, !dbg !71
  %10 = load i32, i32* %x, align 4, !dbg !72
  %sub10 = sub nsw i32 %10, -387, !dbg !73
  %11 = load i32, i32* %x, align 4, !dbg !74
  %sub11 = sub nsw i32 %11, -387, !dbg !75
  %mul12 = mul nsw i32 %sub10, %sub11, !dbg !76
  %12 = load i32, i32* %y, align 4, !dbg !77
  %sub13 = sub nsw i32 %12, -569, !dbg !78
  %13 = load i32, i32* %y, align 4, !dbg !79
  %sub14 = sub nsw i32 %13, -569, !dbg !80
  %mul15 = mul nsw i32 %sub13, %sub14, !dbg !81
  %add16 = add nsw i32 %mul12, %mul15, !dbg !82
  store i32 %add16, i32* %d2, align 4, !dbg !83
  %14 = load i32, i32* %x, align 4, !dbg !84
  %sub17 = sub nsw i32 %14, -592, !dbg !85
  %15 = load i32, i32* %x, align 4, !dbg !86
  %sub18 = sub nsw i32 %15, -592, !dbg !87
  %mul19 = mul nsw i32 %sub17, %sub18, !dbg !88
  %16 = load i32, i32* %y, align 4, !dbg !89
  %sub20 = sub nsw i32 %16, 361, !dbg !90
  %17 = load i32, i32* %y, align 4, !dbg !91
  %sub21 = sub nsw i32 %17, 361, !dbg !92
  %mul22 = mul nsw i32 %sub20, %sub21, !dbg !93
  %add23 = add nsw i32 %mul19, %mul22, !dbg !94
  store i32 %add23, i32* %d3, align 4, !dbg !95
  %18 = load i32, i32* %d1, align 4, !dbg !96
  %cmp24 = icmp sle i32 559000, %18, !dbg !98
  %19 = load i32, i32* %d1, align 4, !dbg !99
  %cmp26 = icmp sle i32 %19, 560000, !dbg !100
  %or.cond3 = and i1 %cmp24, %cmp26, !dbg !101
  %20 = load i32, i32* %d2, align 4, !dbg !102
  %cmp28 = icmp sle i32 194000, %20, !dbg !103
  %or.cond4 = and i1 %or.cond3, %cmp28, !dbg !101
  %21 = load i32, i32* %d2, align 4, !dbg !104
  %cmp30 = icmp sle i32 %21, 195000, !dbg !105
  %or.cond5 = and i1 %or.cond4, %cmp30, !dbg !101
  %22 = load i32, i32* %d3, align 4, !dbg !106
  %cmp32 = icmp sle i32 804000, %22, !dbg !107
  %or.cond6 = and i1 %or.cond5, %cmp32, !dbg !101
  %23 = load i32, i32* %d3, align 4, !dbg !108
  %cmp34 = icmp sle i32 %23, 805000, !dbg !109
  %or.cond7 = and i1 %or.cond6, %cmp34, !dbg !101
  br i1 %or.cond7, label %if.then35, label %if.end36, !dbg !101

if.then35:                                        ; preds = %if.then
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)), !dbg !110
  br label %if.end36, !dbg !112

if.end36:                                         ; preds = %if.then, %if.then35, %entry
  ret i32 0, !dbg !113
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
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "BOUND", scope: !2, file: !3, line: 7, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/out/klee-3point.c", directory: "/home/klee")
!4 = !{}
!5 = !{!0, !6, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "WIDTH", scope: !2, file: !3, line: 8, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "X1", scope: !2, file: !3, line: 10, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "Y1", scope: !2, file: !3, line: 11, type: !8, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "B1", scope: !2, file: !3, line: 12, type: !8, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "X2", scope: !2, file: !3, line: 14, type: !8, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "Y2", scope: !2, file: !3, line: 15, type: !8, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "B2", scope: !2, file: !3, line: 16, type: !8, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "X3", scope: !2, file: !3, line: 18, type: !8, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "Y3", scope: !2, file: !3, line: 19, type: !8, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "B3", scope: !2, file: !3, line: 20, type: !8, isLocal: false, isDefinition: true)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 6.0.1 "}
!32 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 22, type: !33, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!33 = !DISubroutineType(types: !34)
!34 = !{!9}
!35 = !DILocalVariable(name: "d1", scope: !32, file: !3, line: 23, type: !9)
!36 = !DILocation(line: 23, column: 9, scope: !32)
!37 = !DILocalVariable(name: "d2", scope: !32, file: !3, line: 23, type: !9)
!38 = !DILocation(line: 23, column: 17, scope: !32)
!39 = !DILocalVariable(name: "d3", scope: !32, file: !3, line: 23, type: !9)
!40 = !DILocation(line: 23, column: 25, scope: !32)
!41 = !DILocalVariable(name: "x", scope: !32, file: !3, line: 25, type: !9)
!42 = !DILocation(line: 25, column: 9, scope: !32)
!43 = !DILocation(line: 25, column: 32, scope: !32)
!44 = !DILocation(line: 25, column: 12, scope: !32)
!45 = !DILocalVariable(name: "y", scope: !32, file: !3, line: 26, type: !9)
!46 = !DILocation(line: 26, column: 9, scope: !32)
!47 = !DILocation(line: 26, column: 32, scope: !32)
!48 = !DILocation(line: 26, column: 12, scope: !32)
!49 = !DILocation(line: 28, column: 20, scope: !50)
!50 = distinct !DILexicalBlock(scope: !32, file: !3, line: 28, column: 9)
!51 = !DILocation(line: 28, column: 17, scope: !50)
!52 = !DILocation(line: 28, column: 27, scope: !50)
!53 = !DILocation(line: 28, column: 29, scope: !50)
!54 = !DILocation(line: 28, column: 23, scope: !50)
!55 = !DILocation(line: 28, column: 53, scope: !50)
!56 = !DILocation(line: 28, column: 50, scope: !50)
!57 = !DILocation(line: 28, column: 60, scope: !50)
!58 = !DILocation(line: 28, column: 62, scope: !50)
!59 = !DILocation(line: 29, column: 15, scope: !60)
!60 = distinct !DILexicalBlock(scope: !50, file: !3, line: 28, column: 73)
!61 = !DILocation(line: 29, column: 17, scope: !60)
!62 = !DILocation(line: 29, column: 26, scope: !60)
!63 = !DILocation(line: 29, column: 28, scope: !60)
!64 = !DILocation(line: 29, column: 23, scope: !60)
!65 = !DILocation(line: 29, column: 37, scope: !60)
!66 = !DILocation(line: 29, column: 39, scope: !60)
!67 = !DILocation(line: 29, column: 48, scope: !60)
!68 = !DILocation(line: 29, column: 50, scope: !60)
!69 = !DILocation(line: 29, column: 45, scope: !60)
!70 = !DILocation(line: 29, column: 34, scope: !60)
!71 = !DILocation(line: 29, column: 12, scope: !60)
!72 = !DILocation(line: 30, column: 15, scope: !60)
!73 = !DILocation(line: 30, column: 17, scope: !60)
!74 = !DILocation(line: 30, column: 26, scope: !60)
!75 = !DILocation(line: 30, column: 28, scope: !60)
!76 = !DILocation(line: 30, column: 23, scope: !60)
!77 = !DILocation(line: 30, column: 37, scope: !60)
!78 = !DILocation(line: 30, column: 39, scope: !60)
!79 = !DILocation(line: 30, column: 48, scope: !60)
!80 = !DILocation(line: 30, column: 50, scope: !60)
!81 = !DILocation(line: 30, column: 45, scope: !60)
!82 = !DILocation(line: 30, column: 34, scope: !60)
!83 = !DILocation(line: 30, column: 12, scope: !60)
!84 = !DILocation(line: 31, column: 15, scope: !60)
!85 = !DILocation(line: 31, column: 17, scope: !60)
!86 = !DILocation(line: 31, column: 26, scope: !60)
!87 = !DILocation(line: 31, column: 28, scope: !60)
!88 = !DILocation(line: 31, column: 23, scope: !60)
!89 = !DILocation(line: 31, column: 37, scope: !60)
!90 = !DILocation(line: 31, column: 39, scope: !60)
!91 = !DILocation(line: 31, column: 48, scope: !60)
!92 = !DILocation(line: 31, column: 50, scope: !60)
!93 = !DILocation(line: 31, column: 45, scope: !60)
!94 = !DILocation(line: 31, column: 34, scope: !60)
!95 = !DILocation(line: 31, column: 12, scope: !60)
!96 = !DILocation(line: 32, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !60, file: !3, line: 32, column: 13)
!98 = !DILocation(line: 32, column: 17, scope: !97)
!99 = !DILocation(line: 32, column: 28, scope: !97)
!100 = !DILocation(line: 32, column: 31, scope: !97)
!101 = !DILocation(line: 32, column: 24, scope: !97)
!102 = !DILocation(line: 33, column: 20, scope: !97)
!103 = !DILocation(line: 33, column: 17, scope: !97)
!104 = !DILocation(line: 33, column: 28, scope: !97)
!105 = !DILocation(line: 33, column: 31, scope: !97)
!106 = !DILocation(line: 34, column: 20, scope: !97)
!107 = !DILocation(line: 34, column: 17, scope: !97)
!108 = !DILocation(line: 34, column: 28, scope: !97)
!109 = !DILocation(line: 34, column: 31, scope: !97)
!110 = !DILocation(line: 36, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !97, file: !3, line: 34, column: 47)
!112 = !DILocation(line: 37, column: 9, scope: !111)
!113 = !DILocation(line: 40, column: 5, scope: !32)
