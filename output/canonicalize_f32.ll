define float @canonicalize_f32(float %a) {
  %v = call float @llvm.canonicalize.f32(float %a)
  ret float %v
}

declare float @llvm.canonicalize.f32(float)
