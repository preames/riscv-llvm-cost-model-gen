define <vscale x 8 x i32> @umin_nvx8i32(<vscale x 8 x i32> %a, <vscale x 8 x i32> %b) {
  %v = call <vscale x 8 x i32> @llvm.umin.nvx8i32(<vscale x 8 x i32> %a, <vscale x 8 x i32> %b)
  ret <vscale x 8 x i32> %v
}

declare <vscale x 8 x i32> @llvm.umin.nvx8i32(<vscale x 8 x i32>, <vscale x 8 x i32>)
