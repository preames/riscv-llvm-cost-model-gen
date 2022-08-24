define i8 @bswap_i8(i8 %a) {
  %v = call i8 @llvm.bswap.i8(i8 %a)
  ret i8 %v
}

declare i8 @llvm.bswap.i8(i8)
