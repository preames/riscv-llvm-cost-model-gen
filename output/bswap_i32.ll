define i32 @bswap_i32(i32 %a) {
  %v = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %v
}

declare i32 @llvm.bswap.i32(i32)
