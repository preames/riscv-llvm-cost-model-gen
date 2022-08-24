define <vscale x 8 x i8> @smax_nvx8i8(<vscale x 8 x i8> %a, <vscale x 8 x i8> %b) {
  %v = call <vscale x 8 x i8> @llvm.smax.nvx8i8(<vscale x 8 x i8> %a, <vscale x 8 x i8> %b)
  ret <vscale x 8 x i8> %v
}

declare <vscale x 8 x i8> @llvm.smax.nvx8i8(<vscale x 8 x i8>, <vscale x 8 x i8>)
