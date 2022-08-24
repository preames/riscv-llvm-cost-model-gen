define <2 x i64> @usub_sat_v2i64(<2 x i64> %a, <2 x i64> %b) {
  %v = call <2 x i64> @llvm.usub_sat.v2i64(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %v
}

declare <2 x i64> @llvm.usub_sat.v2i64(<2 x i64>, <2 x i64>)
