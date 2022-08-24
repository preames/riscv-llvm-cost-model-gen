define <16 x i64> @sadd_sat_v16i64(<16 x i64> %a, <16 x i64> %b) {
  %v = call <16 x i64> @llvm.sadd_sat.v16i64(<16 x i64> %a, <16 x i64> %b)
  ret <16 x i64> %v
}

declare <16 x i64> @llvm.sadd_sat.v16i64(<16 x i64>, <16 x i64>)
