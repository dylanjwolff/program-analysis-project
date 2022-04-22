; ModuleID = 'sut.bc'
source_filename = "/out/klee-prodmod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOUND = constant i32 2000, align 4, !dbg !0
@PRIME = constant i32 10007, align 4, !dbg !6
@XY = constant i32 6773, align 4, !dbg !10
@XZ = constant i32 1921, align 4, !dbg !12
@YZ = constant i32 203, align 4, !dbg !14
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"/out/klee-prodmod.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = bitcast i32* %x to i8*, !dbg !25
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %y, metadata !27, metadata !DIExpression()), !dbg !28
  %1 = bitcast i32* %y to i8*, !dbg !29
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %z, metadata !31, metadata !DIExpression()), !dbg !32
  %2 = bitcast i32* %z to i8*, !dbg !33
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !34
  %3 = load i32, i32* %x, align 4, !dbg !35
  %cmp = icmp sle i32 1, %3, !dbg !37
  %4 = load i32, i32* %x, align 4, !dbg !38
  %cmp1 = icmp sle i32 %4, 2000, !dbg !39
  %or.cond = and i1 %cmp, %cmp1, !dbg !40
  %5 = load i32, i32* %y, align 4, !dbg !41
  %cmp3 = icmp sle i32 1, %5, !dbg !42
  %or.cond1 = and i1 %or.cond, %cmp3, !dbg !40
  %6 = load i32, i32* %y, align 4, !dbg !43
  %cmp5 = icmp sle i32 %6, 2000, !dbg !44
  %or.cond2 = and i1 %or.cond1, %cmp5, !dbg !40
  %7 = load i32, i32* %z, align 4, !dbg !45
  %cmp7 = icmp sle i32 1, %7, !dbg !46
  %or.cond3 = and i1 %or.cond2, %cmp7, !dbg !40
  %8 = load i32, i32* %z, align 4, !dbg !47
  %cmp9 = icmp sle i32 %8, 2000, !dbg !48
  %or.cond4 = and i1 %or.cond3, %cmp9, !dbg !40
  br i1 %or.cond4, label %if.then, label %if.end20, !dbg !40

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %x, align 4, !dbg !49
  %10 = load i32, i32* %y, align 4, !dbg !52
  %mul = mul nsw i32 %9, %10, !dbg !53
  %rem = srem i32 %mul, 10007, !dbg !54
  %cmp10 = icmp eq i32 %rem, 6773, !dbg !55
  br i1 %cmp10, label %land.lhs.true11, label %if.end20, !dbg !56

land.lhs.true11:                                  ; preds = %if.then
  %11 = load i32, i32* %x, align 4, !dbg !57
  %12 = load i32, i32* %z, align 4, !dbg !58
  %mul12 = mul nsw i32 %11, %12, !dbg !59
  %rem13 = srem i32 %mul12, 10007, !dbg !60
  %cmp14 = icmp eq i32 %rem13, 1921, !dbg !61
  br i1 %cmp14, label %land.lhs.true15, label %if.end20, !dbg !62

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %13 = load i32, i32* %y, align 4, !dbg !63
  %14 = load i32, i32* %z, align 4, !dbg !64
  %mul16 = mul nsw i32 %13, %14, !dbg !65
  %rem17 = srem i32 %mul16, 10007, !dbg !66
  %cmp18 = icmp eq i32 %rem17, 203, !dbg !67
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !68

if.then19:                                        ; preds = %land.lhs.true15
  %call = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)), !dbg !69
  br label %if.end20, !dbg !71

if.end20:                                         ; preds = %if.then, %land.lhs.true11, %land.lhs.true15, %if.then19, %entry
  ret i32 0, !dbg !72
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
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "BOUND", scope: !2, file: !3, line: 7, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/out/klee-prodmod.c", directory: "/home/klee")
!4 = !{}
!5 = !{!0, !6, !10, !12, !14}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "PRIME", scope: !2, file: !3, line: 8, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "XY", scope: !2, file: !3, line: 9, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "XZ", scope: !2, file: !3, line: 10, type: !8, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "YZ", scope: !2, file: !3, line: 11, type: !8, isLocal: false, isDefinition: true)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 6.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 13, type: !21, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!9}
!23 = !DILocalVariable(name: "x", scope: !20, file: !3, line: 14, type: !9)
!24 = !DILocation(line: 14, column: 9, scope: !20)
!25 = !DILocation(line: 14, column: 32, scope: !20)
!26 = !DILocation(line: 14, column: 12, scope: !20)
!27 = !DILocalVariable(name: "y", scope: !20, file: !3, line: 15, type: !9)
!28 = !DILocation(line: 15, column: 9, scope: !20)
!29 = !DILocation(line: 15, column: 32, scope: !20)
!30 = !DILocation(line: 15, column: 12, scope: !20)
!31 = !DILocalVariable(name: "z", scope: !20, file: !3, line: 16, type: !9)
!32 = !DILocation(line: 16, column: 9, scope: !20)
!33 = !DILocation(line: 16, column: 32, scope: !20)
!34 = !DILocation(line: 16, column: 12, scope: !20)
!35 = !DILocation(line: 18, column: 15, scope: !36)
!36 = distinct !DILexicalBlock(scope: !20, file: !3, line: 18, column: 9)
!37 = !DILocation(line: 18, column: 12, scope: !36)
!38 = !DILocation(line: 18, column: 22, scope: !36)
!39 = !DILocation(line: 18, column: 24, scope: !36)
!40 = !DILocation(line: 18, column: 18, scope: !36)
!41 = !DILocation(line: 18, column: 43, scope: !36)
!42 = !DILocation(line: 18, column: 40, scope: !36)
!43 = !DILocation(line: 18, column: 50, scope: !36)
!44 = !DILocation(line: 18, column: 52, scope: !36)
!45 = !DILocation(line: 18, column: 71, scope: !36)
!46 = !DILocation(line: 18, column: 68, scope: !36)
!47 = !DILocation(line: 18, column: 78, scope: !36)
!48 = !DILocation(line: 18, column: 80, scope: !36)
!49 = !DILocation(line: 19, column: 15, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 19, column: 13)
!51 = distinct !DILexicalBlock(scope: !36, file: !3, line: 18, column: 91)
!52 = !DILocation(line: 19, column: 19, scope: !50)
!53 = !DILocation(line: 19, column: 17, scope: !50)
!54 = !DILocation(line: 19, column: 22, scope: !50)
!55 = !DILocation(line: 19, column: 30, scope: !50)
!56 = !DILocation(line: 19, column: 37, scope: !50)
!57 = !DILocation(line: 19, column: 42, scope: !50)
!58 = !DILocation(line: 19, column: 46, scope: !50)
!59 = !DILocation(line: 19, column: 44, scope: !50)
!60 = !DILocation(line: 19, column: 49, scope: !50)
!61 = !DILocation(line: 19, column: 57, scope: !50)
!62 = !DILocation(line: 19, column: 64, scope: !50)
!63 = !DILocation(line: 19, column: 69, scope: !50)
!64 = !DILocation(line: 19, column: 73, scope: !50)
!65 = !DILocation(line: 19, column: 71, scope: !50)
!66 = !DILocation(line: 19, column: 76, scope: !50)
!67 = !DILocation(line: 19, column: 84, scope: !50)
!68 = !DILocation(line: 19, column: 13, scope: !51)
!69 = !DILocation(line: 21, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !50, file: !3, line: 19, column: 92)
!71 = !DILocation(line: 22, column: 9, scope: !70)
!72 = !DILocation(line: 25, column: 5, scope: !20)
