define float @log2_f32(float %a) {
  %v = call float @llvm.log2.f32(float %a)
  ret float %v
}

declare float @llvm.log2.f32(float)
