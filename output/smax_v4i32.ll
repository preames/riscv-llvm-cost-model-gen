define <4 x i32> @smax_v4i32(<4 x i32> %a, <4 x i32> %b) {
  %v = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>)
