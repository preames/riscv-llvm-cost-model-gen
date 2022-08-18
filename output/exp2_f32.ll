define float @exp2_f32(float %a) {
  %v = call float @llvm.exp2.f32(float %a)
  ret float %v
}

declare float @llvm.exp2.f32(float)
