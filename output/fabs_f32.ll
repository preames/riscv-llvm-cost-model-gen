define float @fabs_f32(float %a) {
  %v = call float @llvm.fabs.f32(float %a)
  ret float %v
}

declare float @llvm.fabs.f32(float)
