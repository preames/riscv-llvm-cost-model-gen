define i32 @uadd_sat_i32(i32 %a, i32 %b) {
  %v = call i32 @llvm.uadd_sat.i32(i32 %a, i32 %b)
  ret i32 %v
}

declare i32 @llvm.uadd_sat.i32(i32, i32)
