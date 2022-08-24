define <4 x i64> @cttz_v4i64(<4 x i64> %a) {
  %v = call <4 x i64> @llvm.cttz.v4i64(<4 x i64> %a)
  ret <4 x i64> %v
}

declare <4 x i64> @llvm.cttz.v4i64(<4 x i64>)
