define i64 @ssub_sat_i64(i64 %a, i64 %b) {
  %v = call i64 @llvm.ssub_sat.i64(i64 %a, i64 %b)
  ret i64 %v
}

declare i64 @llvm.ssub_sat.i64(i64, i64)
