define <8 x i64> @ssub_sat_v8i64(<8 x i64> %a, <8 x i64> %b) {
  %v = call <8 x i64> @llvm.ssub_sat.v8i64(<8 x i64> %a, <8 x i64> %b)
  ret <8 x i64> %v
}

declare <8 x i64> @llvm.ssub_sat.v8i64(<8 x i64>, <8 x i64>)
