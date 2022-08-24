define float @fptoui_sat_f32(float %a) {
  %v = call float @llvm.fptoui_sat.f32(float %a)
  ret float %v
}

declare float @llvm.fptoui_sat.f32(float)
