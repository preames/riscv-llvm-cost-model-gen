define <vscale x 4 x i32> @ctpop_nvx4i32(<vscale x 4 x i32> %a) {
  %v = call <vscale x 4 x i32> @llvm.ctpop.nvx4i32(<vscale x 4 x i32> %a)
  ret <vscale x 4 x i32> %v
}

declare <vscale x 4 x i32> @llvm.ctpop.nvx4i32(<vscale x 4 x i32>)
