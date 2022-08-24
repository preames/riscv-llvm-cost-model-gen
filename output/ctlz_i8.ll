define i8 @ctlz_i8(i8 %a) {
  %v = call i8 @llvm.ctlz.i8(i8 %a)
  ret i8 %v
}

declare i8 @llvm.ctlz.i8(i8)
