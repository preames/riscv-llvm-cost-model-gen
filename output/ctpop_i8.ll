define i8 @ctpop_i8(i8 %a) {
  %v = call i8 @llvm.ctpop.i8(i8 %a)
  ret i8 %v
}

declare i8 @llvm.ctpop.i8(i8)
