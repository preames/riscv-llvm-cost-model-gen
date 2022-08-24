define <16 x i8> @bitreverse_v16i8(<16 x i8> %a) {
  %v = call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %a)
  ret <16 x i8> %v
}

declare <16 x i8> @llvm.bitreverse.v16i8(<16 x i8>)
