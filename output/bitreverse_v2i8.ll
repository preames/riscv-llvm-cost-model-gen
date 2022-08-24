define <2 x i8> @bitreverse_v2i8(<2 x i8> %a) {
  %v = call <2 x i8> @llvm.bitreverse.v2i8(<2 x i8> %a)
  ret <2 x i8> %v
}

declare <2 x i8> @llvm.bitreverse.v2i8(<2 x i8>)
