define <8 x i64> @bswap_v8i64(<8 x i64> %a) {
  %v = call <8 x i64> @llvm.bswap.v8i64(<8 x i64> %a)
  ret <8 x i64> %v
}

declare <8 x i64> @llvm.bswap.v8i64(<8 x i64>)
