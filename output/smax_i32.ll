define i32 @smax_i32(i32 %a, i32 %b) {
  %v = call i32 @llvm.smax.i32(i32 %a, i32 %b)
  ret i32 %v
}

declare i32 @llvm.smax.i32(i32, i32)
