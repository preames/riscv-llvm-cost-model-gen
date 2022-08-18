define <2 x float> @cos_v2f32(<2 x float> %a) {
  %v = call <2 x float> @llvm.cos.v2f32(<2 x float> %a)
  ret <2 x float> %v
}

declare <2 x float> @llvm.cos.v2f32(<2 x float>)
