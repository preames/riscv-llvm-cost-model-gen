define <4 x float> @rint_v4f32(<4 x float> %a) {
  %v = call <4 x float> @llvm.rint.v4f32(<4 x float> %a)
  ret <4 x float> %v
}

declare <4 x float> @llvm.rint.v4f32(<4 x float>)
