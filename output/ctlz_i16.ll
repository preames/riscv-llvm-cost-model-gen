define i16 @ctlz_i16(i16 %a) {
  %v = call i16 @llvm.ctlz.i16(i16 %a)
  ret i16 %v
}

declare i16 @llvm.ctlz.i16(i16)
