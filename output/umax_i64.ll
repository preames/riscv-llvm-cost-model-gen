define i64 @umax_i64(i64 %a, i64 %b) {
  %v = call i64 @llvm.umax.i64(i64 %a, i64 %b)
  ret i64 %v
}

declare i64 @llvm.umax.i64(i64, i64)
