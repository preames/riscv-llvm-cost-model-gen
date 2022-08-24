define float @maximum_f32(float %a, float %b) {
  %v = call float @llvm.maximum.f32(float %a, float %b)
  ret float %v
}

declare float @llvm.maximum.f32(float, float)
