define <2 x float> @copysign_v2f32(<2 x float> %a, <2 x float> %b) {
  %v = call <2 x float> @llvm.copysign.v2f32(<2 x float> %a, <2 x float> %b)
  ret <2 x float> %v
}

declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>)
