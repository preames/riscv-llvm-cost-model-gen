define <2 x i8> @abs_v2i8(<2 x i8> %a) {
  %v = call <2 x i8> @llvm.abs.v2i8(<2 x i8> %a)
  ret <2 x i8> %v
}

declare <2 x i8> @llvm.abs.v2i8(<2 x i8>)