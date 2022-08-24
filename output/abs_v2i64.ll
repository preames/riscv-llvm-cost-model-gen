define <2 x i64> @abs_v2i64(<2 x i64> %a) {
  %v = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %a)
  ret <2 x i64> %v
}

declare <2 x i64> @llvm.abs.v2i64(<2 x i64>)
