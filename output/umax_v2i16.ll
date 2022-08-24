define <2 x i16> @umax_v2i16(<2 x i16> %a, <2 x i16> %b) {
  %v = call <2 x i16> @llvm.umax.v2i16(<2 x i16> %a, <2 x i16> %b)
  ret <2 x i16> %v
}

declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>)
