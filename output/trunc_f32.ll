define float @trunc_f32(float %a) {
  %v = call float @llvm.trunc.f32(float %a)
  ret float %v
}

declare float @llvm.trunc.f32(float)
