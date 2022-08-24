define i64 @ctpop_i64(i64 %a) {
  %v = call i64 @llvm.ctpop.i64(i64 %a)
  ret i64 %v
}

declare i64 @llvm.ctpop.i64(i64)
