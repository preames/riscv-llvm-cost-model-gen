define <2 x float> @maximum_v2f32(<2 x float> %a, <2 x float> %b) {
  %v = call <2 x float> @llvm.maximum.v2f32(<2 x float> %a, <2 x float> %b)
  ret <2 x float> %v
}

declare <2 x float> @llvm.maximum.v2f32(<2 x float>, <2 x float>)
