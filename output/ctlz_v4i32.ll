define <4 x i32> @ctlz_v4i32(<4 x i32> %a) {
  %v = call <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %a)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>)
