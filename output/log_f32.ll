define float @log_f32(float %a) {
  %v = call float @llvm.log.f32(float %a)
  ret float %v
}

declare float @llvm.log.f32(float)
