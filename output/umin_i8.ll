define i8 @umin_i8(i8 %a, i8 %b) {
  %v = call i8 @llvm.umin.i8(i8 %a, i8 %b)
  ret i8 %v
}

declare i8 @llvm.umin.i8(i8, i8)
