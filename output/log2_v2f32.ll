define <2 x float> @log2_v2f32(<2 x float> %a) {
  %v = call <2 x float> @llvm.log2.v2f32(<2 x float> %a)
  ret <2 x float> %v
}

declare <2 x float> @llvm.log2.v2f32(<2 x float>)
