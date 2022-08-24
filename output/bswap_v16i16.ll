define <16 x i16> @bswap_v16i16(<16 x i16> %a) {
  %v = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %a)
  ret <16 x i16> %v
}

declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>)
