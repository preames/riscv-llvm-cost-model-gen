define <2 x i64> @smax_v2i64(<2 x i64> %a, <2 x i64> %b) {
  %v = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %v
}

declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>)
