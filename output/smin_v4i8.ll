define <4 x i8> @smin_v4i8(<4 x i8> %a, <4 x i8> %b) {
  %v = call <4 x i8> @llvm.smin.v4i8(<4 x i8> %a, <4 x i8> %b)
  ret <4 x i8> %v
}

declare <4 x i8> @llvm.smin.v4i8(<4 x i8>, <4 x i8>)
