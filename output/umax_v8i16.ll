define <8 x i16> @umax_v8i16(<8 x i16> %a, <8 x i16> %b) {
  %v = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %v
}

declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>)
