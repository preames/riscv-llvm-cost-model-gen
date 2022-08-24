define float @fptosi_sat_f32(float %a) {
  %v = call float @llvm.fptosi_sat.f32(float %a)
  ret float %v
}

declare float @llvm.fptosi_sat.f32(float)
