define <4 x float> @log2_v4f32(<4 x float> %a) {
  %v = call <4 x float> @llvm.log2.v4f32(<4 x float> %a)
  ret <4 x float> %v
}

declare <4 x float> @llvm.log2.v4f32(<4 x float>)
