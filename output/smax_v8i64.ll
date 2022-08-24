define <8 x i64> @smax_v8i64(<8 x i64> %a, <8 x i64> %b) {
  %v = call <8 x i64> @llvm.smax.v8i64(<8 x i64> %a, <8 x i64> %b)
  ret <8 x i64> %v
}

declare <8 x i64> @llvm.smax.v8i64(<8 x i64>, <8 x i64>)
