define <2 x i16> @bitreverse_v2i16(<2 x i16> %a) {
  %v = call <2 x i16> @llvm.bitreverse.v2i16(<2 x i16> %a)
  ret <2 x i16> %v
}

declare <2 x i16> @llvm.bitreverse.v2i16(<2 x i16>)
