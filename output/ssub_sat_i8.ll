define i8 @ssub_sat_i8(i8 %a, i8 %b) {
  %v = call i8 @llvm.ssub_sat.i8(i8 %a, i8 %b)
  ret i8 %v
}

declare i8 @llvm.ssub_sat.i8(i8, i8)
