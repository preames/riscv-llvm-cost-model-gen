define float @round_f32(float %a) {
  %v = call float @llvm.round.f32(float %a)
  ret float %v
}

declare float @llvm.round.f32(float)
