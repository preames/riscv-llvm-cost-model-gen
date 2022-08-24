define <vscale x 2 x i16> @abs_nvx2i16(<vscale x 2 x i16> %a) {
  %v = call <vscale x 2 x i16> @llvm.abs.nvx2i16(<vscale x 2 x i16> %a)
  ret <vscale x 2 x i16> %v
}

declare <vscale x 2 x i16> @llvm.abs.nvx2i16(<vscale x 2 x i16>)
