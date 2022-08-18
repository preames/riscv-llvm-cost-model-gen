define <4 x float> @floor_v4f32(<4 x float> %a) {
  %v = call <4 x float> @llvm.floor.v4f32(<4 x float> %a)
  ret <4 x float> %v
}

declare <4 x float> @llvm.floor.v4f32(<4 x float>)
