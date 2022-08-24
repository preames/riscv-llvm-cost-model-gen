define <4 x i32> @bitreverse_v4i32(<4 x i32> %a) {
  %v = call <4 x i32> @llvm.bitreverse.v4i32(<4 x i32> %a)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.bitreverse.v4i32(<4 x i32>)
