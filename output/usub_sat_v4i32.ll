define <4 x i32> @usub_sat_v4i32(<4 x i32> %a, <4 x i32> %b) {
  %v = call <4 x i32> @llvm.usub_sat.v4i32(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.usub_sat.v4i32(<4 x i32>, <4 x i32>)
