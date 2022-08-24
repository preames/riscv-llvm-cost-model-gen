define i16 @smax_i16(i16 %a, i16 %b) {
  %v = call i16 @llvm.smax.i16(i16 %a, i16 %b)
  ret i16 %v
}

declare i16 @llvm.smax.i16(i16, i16)
