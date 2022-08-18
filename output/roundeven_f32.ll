define float @roundeven_f32(float %a) {
  %v = call float @llvm.roundeven.f32(float %a)
  ret float %v
}

declare float @llvm.roundeven.f32(float)
