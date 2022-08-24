define <8 x i32> @bitreverse_v8i32(<8 x i32> %a) {
  %v = call <8 x i32> @llvm.bitreverse.v8i32(<8 x i32> %a)
  ret <8 x i32> %v
}

declare <8 x i32> @llvm.bitreverse.v8i32(<8 x i32>)
