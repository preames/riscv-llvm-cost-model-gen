define <vscale x 8 x i8> @abs_nvx8i8(<vscale x 8 x i8> %a) {
  %v = call <vscale x 8 x i8> @llvm.abs.nvx8i8(<vscale x 8 x i8> %a)
  ret <vscale x 8 x i8> %v
}

declare <vscale x 8 x i8> @llvm.abs.nvx8i8(<vscale x 8 x i8>)
