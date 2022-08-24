define i64 @abs_i64(i64 %a) {
  %v = call i64 @llvm.abs.i64(i64 %a)
  ret i64 %v
}

declare i64 @llvm.abs.i64(i64)
