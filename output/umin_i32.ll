define i32 @umin_i32(i32 %a, i32 %b) {
  %v = call i32 @llvm.umin.i32(i32 %a, i32 %b)
  ret i32 %v
}

declare i32 @llvm.umin.i32(i32, i32)
