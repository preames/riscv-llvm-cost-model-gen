define float @cos_f32(float %a) {
  %v = call float @llvm.cos.f32(float %a)
  ret float %v
}

declare float @llvm.cos.f32(float)
