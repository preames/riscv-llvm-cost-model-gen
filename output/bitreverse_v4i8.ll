define <4 x i8> @bitreverse_v4i8(<4 x i8> %a) {
  %v = call <4 x i8> @llvm.bitreverse.v4i8(<4 x i8> %a)
  ret <4 x i8> %v
}

declare <4 x i8> @llvm.bitreverse.v4i8(<4 x i8>)
