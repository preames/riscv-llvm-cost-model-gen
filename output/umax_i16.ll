define i16 @umax_i16(i16 %a, i16 %b) {
  %v = call i16 @llvm.umax.i16(i16 %a, i16 %b)
  ret i16 %v
}

declare i16 @llvm.umax.i16(i16, i16)
