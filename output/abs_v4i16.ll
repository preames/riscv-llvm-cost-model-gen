define <4 x i16> @abs_v4i16(<4 x i16> %a) {
  %v = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %a)
  ret <4 x i16> %v
}

declare <4 x i16> @llvm.abs.v4i16(<4 x i16>)
