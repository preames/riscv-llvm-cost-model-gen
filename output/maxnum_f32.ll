define float @maxnum_f32(float %a, float %b) {
  %v = call float @llvm.maxnum.f32(float %a, float %b)
  ret float %v
}

declare float @llvm.maxnum.f32(float, float)
