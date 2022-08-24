define <2 x i8> @ctlz_v2i8(<2 x i8> %a) {
  %v = call <2 x i8> @llvm.ctlz.v2i8(<2 x i8> %a)
  ret <2 x i8> %v
}

declare <2 x i8> @llvm.ctlz.v2i8(<2 x i8>)
