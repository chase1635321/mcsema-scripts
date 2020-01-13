; ModuleID = 'struct.c'
source_filename = "struct.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Books = type { [50 x i8], [50 x i8], [100 x i8], i32 }

@.str = private unnamed_addr constant [14 x i8] c"C Programming\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Nuha Ali\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"C Programming Tutorial\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Book 1 title : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Book 1 author : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Book 1 subject : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Book 1 book_id : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.Books, align 4
  %2 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 0
  %3 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %4 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #3
  %5 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 1
  %6 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %7 = call i8* @strcpy(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #3
  %8 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 2
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)) #3
  %11 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 3
  store i32 6495407, i32* %11, align 4
  %12 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 0
  %13 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 1
  %16 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 2
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds %struct.Books, %struct.Books* %1, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0-2 (tags/RELEASE_900/final)"}
