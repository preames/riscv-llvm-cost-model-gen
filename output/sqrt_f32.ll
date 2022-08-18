define float @sqrt_f32(float %a) {
  %v = call float @llvm.sqrt.f32(float %a)
  ret float %v
}

declare float @llvm.sqrt.f32(float)
