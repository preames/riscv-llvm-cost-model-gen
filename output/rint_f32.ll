define float @rint_f32(float %a) {
  %v = call float @llvm.rint.f32(float %a)
  ret float %v
}

declare float @llvm.rint.f32(float)
