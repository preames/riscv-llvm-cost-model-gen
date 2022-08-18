define <2 x float> @exp2_v2f32(<2 x float> %a) {
  %v = call <2 x float> @llvm.exp2.v2f32(<2 x float> %a)
  ret <2 x float> %v
}

declare <2 x float> @llvm.exp2.v2f32(<2 x float>)
