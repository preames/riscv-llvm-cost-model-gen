define i16 @umin_i16(i16 %a, i16 %b) {
  %v = call i16 @llvm.umin.i16(i16 %a, i16 %b)
  ret i16 %v
}

declare i16 @llvm.umin.i16(i16, i16)
