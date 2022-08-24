define <16 x i8> @ctpop_v16i8(<16 x i8> %a) {
  %v = call <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %a)
  ret <16 x i8> %v
}

declare <16 x i8> @llvm.ctpop.v16i8(<16 x i8>)
