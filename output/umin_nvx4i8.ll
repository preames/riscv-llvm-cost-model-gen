define <vscale x 4 x i8> @umin_nvx4i8(<vscale x 4 x i8> %a, <vscale x 4 x i8> %b) {
  %v = call <vscale x 4 x i8> @llvm.umin.nvx4i8(<vscale x 4 x i8> %a, <vscale x 4 x i8> %b)
  ret <vscale x 4 x i8> %v
}

declare <vscale x 4 x i8> @llvm.umin.nvx4i8(<vscale x 4 x i8>, <vscale x 4 x i8>)
