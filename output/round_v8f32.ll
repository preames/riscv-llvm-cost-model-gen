define <8 x float> @round_v8f32(<8 x float> %a) {
  %v = call <8 x float> @llvm.round.v8f32(<8 x float> %a)
  ret <8 x float> %v
}

declare <8 x float> @llvm.round.v8f32(<8 x float>)
