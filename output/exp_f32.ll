define float @exp_f32(float %a) {
  %v = call float @llvm.exp.f32(float %a)
  ret float %v
}

declare float @llvm.exp.f32(float)
