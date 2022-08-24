define float @copysign_f32(float %a, float %b) {
  %v = call float @llvm.copysign.f32(float %a, float %b)
  ret float %v
}

declare float @llvm.copysign.f32(float, float)
