define i32 @sadd_sat_i32(i32 %a, i32 %b) {
  %v = call i32 @llvm.sadd_sat.i32(i32 %a, i32 %b)
  ret i32 %v
}

declare i32 @llvm.sadd_sat.i32(i32, i32)
