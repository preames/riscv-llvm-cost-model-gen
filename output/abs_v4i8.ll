define <4 x i8> @abs_v4i8(<4 x i8> %a) {
  %v = call <4 x i8> @llvm.abs.v4i8(<4 x i8> %a)
  ret <4 x i8> %v
}

declare <4 x i8> @llvm.abs.v4i8(<4 x i8>)
