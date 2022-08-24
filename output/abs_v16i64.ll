define <16 x i64> @abs_v16i64(<16 x i64> %a) {
  %v = call <16 x i64> @llvm.abs.v16i64(<16 x i64> %a)
  ret <16 x i64> %v
}

declare <16 x i64> @llvm.abs.v16i64(<16 x i64>)
