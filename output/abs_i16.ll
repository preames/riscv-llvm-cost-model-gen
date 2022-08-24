define i16 @abs_i16(i16 %a) {
  %v = call i16 @llvm.abs.i16(i16 %a)
  ret i16 %v
}

declare i16 @llvm.abs.i16(i16)
