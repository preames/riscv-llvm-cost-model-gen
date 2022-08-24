define <vscale x 2 x i32> @umax_nvx2i32(<vscale x 2 x i32> %a, <vscale x 2 x i32> %b) {
  %v = call <vscale x 2 x i32> @llvm.umax.nvx2i32(<vscale x 2 x i32> %a, <vscale x 2 x i32> %b)
  ret <vscale x 2 x i32> %v
}

declare <vscale x 2 x i32> @llvm.umax.nvx2i32(<vscale x 2 x i32>, <vscale x 2 x i32>)
