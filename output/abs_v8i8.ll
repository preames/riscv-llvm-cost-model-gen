define <8 x i8> @abs_v8i8(<8 x i8> %a) {
  %v = call <8 x i8> @llvm.abs.v8i8(<8 x i8> %a)
  ret <8 x i8> %v
}

declare <8 x i8> @llvm.abs.v8i8(<8 x i8>)
