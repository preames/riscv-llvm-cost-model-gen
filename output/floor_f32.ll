define float @floor_f32(float %a) {
  %v = call float @llvm.floor.f32(float %a)
  ret float %v
}

declare float @llvm.floor.f32(float)
