define i16 @bswap_i16(i16 %a) {
  %v = call i16 @llvm.bswap.i16(i16 %a)
  ret i16 %v
}

declare i16 @llvm.bswap.i16(i16)
