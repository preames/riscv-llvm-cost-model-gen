define i32 @bitreverse_i32(i32 %a) {
  %v = call i32 @llvm.bitreverse.i32(i32 %a)
  ret i32 %v
}

declare i32 @llvm.bitreverse.i32(i32)
