define i8 @abs_i8(i8 %a) {
  %v = call i8 @llvm.abs.i8(i8 %a)
  ret i8 %v
}

declare i8 @llvm.abs.i8(i8)
