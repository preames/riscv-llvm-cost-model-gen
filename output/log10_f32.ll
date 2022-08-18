define float @log10_f32(float %a) {
  %v = call float @llvm.log10.f32(float %a)
  ret float %v
}

declare float @llvm.log10.f32(float)
