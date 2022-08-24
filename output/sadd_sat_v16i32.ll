define <16 x i32> @sadd_sat_v16i32(<16 x i32> %a, <16 x i32> %b) {
  %v = call <16 x i32> @llvm.sadd_sat.v16i32(<16 x i32> %a, <16 x i32> %b)
  ret <16 x i32> %v
}

declare <16 x i32> @llvm.sadd_sat.v16i32(<16 x i32>, <16 x i32>)
