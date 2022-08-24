define <8 x i16> @cttz_v8i16(<8 x i16> %a) {
  %v = call <8 x i16> @llvm.cttz.v8i16(<8 x i16> %a)
  ret <8 x i16> %v
}

declare <8 x i16> @llvm.cttz.v8i16(<8 x i16>)
