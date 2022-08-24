define i64 @ctlz_i64(i64 %a) {
  %v = call i64 @llvm.ctlz.i64(i64 %a)
  ret i64 %v
}

declare i64 @llvm.ctlz.i64(i64)
