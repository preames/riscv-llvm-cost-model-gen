define <vscale x 4 x i32> @abs_nvx4i32(<vscale x 4 x i32> %a) {
  %v = call <vscale x 4 x i32> @llvm.abs.nvx4i32(<vscale x 4 x i32> %a)
  ret <vscale x 4 x i32> %v
}

declare <vscale x 4 x i32> @llvm.abs.nvx4i32(<vscale x 4 x i32>)
