define <16 x float> @round_v16f32(<16 x float> %a) {
  %v = call <16 x float> @llvm.round.v16f32(<16 x float> %a)
  ret <16 x float> %v
}

declare <16 x float> @llvm.round.v16f32(<16 x float>)
