define <16 x i64> @umax_v16i64(<16 x i64> %a, <16 x i64> %b) {
  %v = call <16 x i64> @llvm.umax.v16i64(<16 x i64> %a, <16 x i64> %b)
  ret <16 x i64> %v
}

declare <16 x i64> @llvm.umax.v16i64(<16 x i64>, <16 x i64>)
