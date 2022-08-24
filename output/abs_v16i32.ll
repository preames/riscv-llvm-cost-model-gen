define <16 x i32> @abs_v16i32(<16 x i32> %a) {
  %v = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %a)
  ret <16 x i32> %v
}

declare <16 x i32> @llvm.abs.v16i32(<16 x i32>)
