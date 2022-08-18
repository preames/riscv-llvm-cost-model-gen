define float @nearbyint_f32(float %a) {
  %v = call float @llvm.nearbyint.f32(float %a)
  ret float %v
}

declare float @llvm.nearbyint.f32(float)
