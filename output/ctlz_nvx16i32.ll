define <vscale x 16 x i32> @ctlz_nvx16i32(<vscale x 16 x i32> %a) {
  %v = call <vscale x 16 x i32> @llvm.ctlz.nvx16i32(<vscale x 16 x i32> %a)
  ret <vscale x 16 x i32> %v
}

declare <vscale x 16 x i32> @llvm.ctlz.nvx16i32(<vscale x 16 x i32>)
