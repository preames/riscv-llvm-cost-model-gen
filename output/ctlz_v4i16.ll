define <4 x i16> @ctlz_v4i16(<4 x i16> %a) {
  %v = call <4 x i16> @llvm.ctlz.v4i16(<4 x i16> %a)
  ret <4 x i16> %v
}

declare <4 x i16> @llvm.ctlz.v4i16(<4 x i16>)
