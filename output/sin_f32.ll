define float @sin_f32(float %a) {
  %v = call float @llvm.sin.f32(float %a)
  ret float %v
}

declare float @llvm.sin.f32(float)
