define <2 x i64> @cttz_v2i64(<2 x i64> %a) {
  %v = call <2 x i64> @llvm.cttz.v2i64(<2 x i64> %a)
  ret <2 x i64> %v
}

declare <2 x i64> @llvm.cttz.v2i64(<2 x i64>)
