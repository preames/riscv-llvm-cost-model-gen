define float @ceil_f32(float %a) {
  %v = call float @llvm.ceil.f32(float %a)
  ret float %v
}

declare float @llvm.ceil.f32(float)
