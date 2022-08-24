define i8 @bitreverse_i8(i8 %a) {
  %v = call i8 @llvm.bitreverse.i8(i8 %a)
  ret i8 %v
}

declare i8 @llvm.bitreverse.i8(i8)
