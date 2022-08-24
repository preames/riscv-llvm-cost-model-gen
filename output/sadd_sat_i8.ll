define i8 @sadd_sat_i8(i8 %a, i8 %b) {
  %v = call i8 @llvm.sadd_sat.i8(i8 %a, i8 %b)
  ret i8 %v
}

declare i8 @llvm.sadd_sat.i8(i8, i8)
