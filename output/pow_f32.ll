define float @pow_f32(float %a, float %b) {
  %v = call float @llvm.pow.f32(float %a, float %b)
  ret float %v
}

declare float @llvm.pow.f32(float, float)
