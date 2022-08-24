define <2 x i32> @ctpop_v2i32(<2 x i32> %a) {
  %v = call <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %a)
  ret <2 x i32> %v
}

declare <2 x i32> @llvm.ctpop.v2i32(<2 x i32>)
