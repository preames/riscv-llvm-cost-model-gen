define float @minimum_f32(float %a, float %b) {
  %v = call float @llvm.minimum.f32(float %a, float %b)
  ret float %v
}

declare float @llvm.minimum.f32(float, float)
