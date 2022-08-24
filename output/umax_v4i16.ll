define <4 x i16> @umax_v4i16(<4 x i16> %a, <4 x i16> %b) {
  %v = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %a, <4 x i16> %b)
  ret <4 x i16> %v
}

declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>)
