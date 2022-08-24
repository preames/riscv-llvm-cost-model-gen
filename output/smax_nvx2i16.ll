define <vscale x 2 x i16> @smax_nvx2i16(<vscale x 2 x i16> %a, <vscale x 2 x i16> %b) {
  %v = call <vscale x 2 x i16> @llvm.smax.nvx2i16(<vscale x 2 x i16> %a, <vscale x 2 x i16> %b)
  ret <vscale x 2 x i16> %v
}

declare <vscale x 2 x i16> @llvm.smax.nvx2i16(<vscale x 2 x i16>, <vscale x 2 x i16>)
