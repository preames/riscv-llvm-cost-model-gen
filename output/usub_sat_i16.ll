define i16 @usub_sat_i16(i16 %a, i16 %b) {
  %v = call i16 @llvm.usub_sat.i16(i16 %a, i16 %b)
  ret i16 %v
}

declare i16 @llvm.usub_sat.i16(i16, i16)
