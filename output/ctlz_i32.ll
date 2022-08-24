define i32 @ctlz_i32(i32 %a) {
  %v = call i32 @llvm.ctlz.i32(i32 %a)
  ret i32 %v
}

declare i32 @llvm.ctlz.i32(i32)
