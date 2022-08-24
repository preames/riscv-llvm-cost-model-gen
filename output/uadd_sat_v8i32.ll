define <8 x i32> @uadd_sat_v8i32(<8 x i32> %a, <8 x i32> %b) {
  %v = call <8 x i32> @llvm.uadd_sat.v8i32(<8 x i32> %a, <8 x i32> %b)
  ret <8 x i32> %v
}

declare <8 x i32> @llvm.uadd_sat.v8i32(<8 x i32>, <8 x i32>)
