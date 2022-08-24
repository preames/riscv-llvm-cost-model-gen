define i64 @bswap_i64(i64 %a) {
  %v = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %v
}

declare i64 @llvm.bswap.i64(i64)
