define i16 @ctpop_i16(i16 %a) {
  %v = call i16 @llvm.ctpop.i16(i16 %a)
  ret i16 %v
}

declare i16 @llvm.ctpop.i16(i16)
