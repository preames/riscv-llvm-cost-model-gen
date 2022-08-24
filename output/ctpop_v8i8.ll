define <8 x i8> @ctpop_v8i8(<8 x i8> %a) {
  %v = call <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %a)
  ret <8 x i8> %v
}

declare <8 x i8> @llvm.ctpop.v8i8(<8 x i8>)
