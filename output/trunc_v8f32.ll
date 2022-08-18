define <8 x float> @trunc_v8f32(<8 x float> %a) {
  %v = call <8 x float> @llvm.trunc.v8f32(<8 x float> %a)
  ret <8 x float> %v
}

declare <8 x float> @llvm.trunc.v8f32(<8 x float>)
