define <16 x float> @pow_v16f32(<16 x float> %a, <16 x float> %b) {
  %v = call <16 x float> @llvm.pow.v16f32(<16 x float> %a, <16 x float> %b)
  ret <16 x float> %v
}

declare <16 x float> @llvm.pow.v16f32(<16 x float>, <16 x float>)
