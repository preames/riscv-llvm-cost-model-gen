define i32 @smin_i32(i32 %a, i32 %b) {
  %v = call i32 @llvm.smin.i32(i32 %a, i32 %b)
  ret i32 %v
}

declare i32 @llvm.smin.i32(i32, i32)
