define <4 x i64> @umin_v4i64(<4 x i64> %a, <4 x i64> %b) {
  %v = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %a, <4 x i64> %b)
  ret <4 x i64> %v
}

declare <4 x i64> @llvm.umin.v4i64(<4 x i64>, <4 x i64>)
