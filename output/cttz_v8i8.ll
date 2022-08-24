define <8 x i8> @cttz_v8i8(<8 x i8> %a) {
  %v = call <8 x i8> @llvm.cttz.v8i8(<8 x i8> %a)
  ret <8 x i8> %v
}

declare <8 x i8> @llvm.cttz.v8i8(<8 x i8>)
