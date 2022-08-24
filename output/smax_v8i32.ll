define <8 x i32> @smax_v8i32(<8 x i32> %a, <8 x i32> %b) {
  %v = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a, <8 x i32> %b)
  ret <8 x i32> %v
}

declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>)
