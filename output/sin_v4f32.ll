define <4 x float> @sin_v4f32(<4 x float> %a) {
  %v = call <4 x float> @llvm.sin.v4f32(<4 x float> %a)
  ret <4 x float> %v
}

declare <4 x float> @llvm.sin.v4f32(<4 x float>)
