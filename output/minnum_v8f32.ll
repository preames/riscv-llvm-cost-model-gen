define <8 x float> @minnum_v8f32(<8 x float> %a, <8 x float> %b) {
  %v = call <8 x float> @llvm.minnum.v8f32(<8 x float> %a, <8 x float> %b)
  ret <8 x float> %v
}

declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>)
