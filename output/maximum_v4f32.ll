define <4 x float> @maximum_v4f32(<4 x float> %a, <4 x float> %b) {
  %v = call <4 x float> @llvm.maximum.v4f32(<4 x float> %a, <4 x float> %b)
  ret <4 x float> %v
}

declare <4 x float> @llvm.maximum.v4f32(<4 x float>, <4 x float>)
