define i32 @abs_i32(i32 %a) {
  %v = call i32 @llvm.abs.i32(i32 %a)
  ret i32 %v
}

declare i32 @llvm.abs.i32(i32)
