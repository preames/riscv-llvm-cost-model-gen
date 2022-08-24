define i16 @cttz_i16(i16 %a) {
  %v = call i16 @llvm.cttz.i16(i16 %a)
  ret i16 %v
}

declare i16 @llvm.cttz.i16(i16)
