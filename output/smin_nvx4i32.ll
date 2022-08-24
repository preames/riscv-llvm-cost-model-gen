define <vscale x 4 x i32> @smin_nvx4i32(<vscale x 4 x i32> %a, <vscale x 4 x i32> %b) {
  %v = call <vscale x 4 x i32> @llvm.smin.nvx4i32(<vscale x 4 x i32> %a, <vscale x 4 x i32> %b)
  ret <vscale x 4 x i32> %v
}

declare <vscale x 4 x i32> @llvm.smin.nvx4i32(<vscale x 4 x i32>, <vscale x 4 x i32>)
