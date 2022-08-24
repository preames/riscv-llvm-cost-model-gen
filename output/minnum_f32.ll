define float @minnum_f32(float %a, float %b) {
  %v = call float @llvm.minnum.f32(float %a, float %b)
  ret float %v
}

declare float @llvm.minnum.f32(float, float)
