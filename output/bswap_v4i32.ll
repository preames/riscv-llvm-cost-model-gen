define <4 x i32> @bswap_v4i32(<4 x i32> %a) {
  %v = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %a)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>)
