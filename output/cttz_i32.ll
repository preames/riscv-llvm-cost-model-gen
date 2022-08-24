define i32 @cttz_i32(i32 %a) {
  %v = call i32 @llvm.cttz.i32(i32 %a)
  ret i32 %v
}

declare i32 @llvm.cttz.i32(i32)
