define <vscale x 16 x i16> @ctlz_nvx16i16(<vscale x 16 x i16> %a) {
  %v = call <vscale x 16 x i16> @llvm.ctlz.nvx16i16(<vscale x 16 x i16> %a)
  ret <vscale x 16 x i16> %v
}

declare <vscale x 16 x i16> @llvm.ctlz.nvx16i16(<vscale x 16 x i16>)
