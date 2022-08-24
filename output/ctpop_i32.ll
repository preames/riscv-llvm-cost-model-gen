define i32 @ctpop_i32(i32 %a) {
  %v = call i32 @llvm.ctpop.i32(i32 %a)
  ret i32 %v
}

declare i32 @llvm.ctpop.i32(i32)
