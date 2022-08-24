define i8 @cttz_i8(i8 %a) {
  %v = call i8 @llvm.cttz.i8(i8 %a)
  ret i8 %v
}

declare i8 @llvm.cttz.i8(i8)
