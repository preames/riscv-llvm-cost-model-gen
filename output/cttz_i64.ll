define i64 @cttz_i64(i64 %a) {
  %v = call i64 @llvm.cttz.i64(i64 %a)
  ret i64 %v
}

declare i64 @llvm.cttz.i64(i64)
