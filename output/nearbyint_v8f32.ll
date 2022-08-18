define <8 x float> @nearbyint_v8f32(<8 x float> %a) {
  %v = call <8 x float> @llvm.nearbyint.v8f32(<8 x float> %a)
  ret <8 x float> %v
}

declare <8 x float> @llvm.nearbyint.v8f32(<8 x float>)
