define <8 x i8> @bswap_v8i8(<8 x i8> %a) {
  %v = call <8 x i8> @llvm.bswap.v8i8(<8 x i8> %a)
  ret <8 x i8> %v
}

declare <8 x i8> @llvm.bswap.v8i8(<8 x i8>)
