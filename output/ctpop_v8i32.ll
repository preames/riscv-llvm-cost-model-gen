define <8 x i32> @ctpop_v8i32(<8 x i32> %a) {
  %v = call <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %a)
  ret <8 x i32> %v
}

declare <8 x i32> @llvm.ctpop.v8i32(<8 x i32>)
