define i16 @bitreverse_i16(i16 %a) {
  %v = call i16 @llvm.bitreverse.i16(i16 %a)
  ret i16 %v
}

declare i16 @llvm.bitreverse.i16(i16)
