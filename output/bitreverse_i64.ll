define i64 @bitreverse_i64(i64 %a) {
  %v = call i64 @llvm.bitreverse.i64(i64 %a)
  ret i64 %v
}

declare i64 @llvm.bitreverse.i64(i64)
