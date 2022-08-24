define <vscale x 2 x i8> @smin_nvx2i8(<vscale x 2 x i8> %a, <vscale x 2 x i8> %b) {
  %v = call <vscale x 2 x i8> @llvm.smin.nvx2i8(<vscale x 2 x i8> %a, <vscale x 2 x i8> %b)
  ret <vscale x 2 x i8> %v
}

declare <vscale x 2 x i8> @llvm.smin.nvx2i8(<vscale x 2 x i8>, <vscale x 2 x i8>)
