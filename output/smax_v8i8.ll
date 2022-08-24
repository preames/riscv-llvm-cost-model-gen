define <8 x i8> @smax_v8i8(<8 x i8> %a, <8 x i8> %b) {
  %v = call <8 x i8> @llvm.smax.v8i8(<8 x i8> %a, <8 x i8> %b)
  ret <8 x i8> %v
}

declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>)
