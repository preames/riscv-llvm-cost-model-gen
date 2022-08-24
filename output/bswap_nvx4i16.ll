define <vscale x 4 x i16> @bswap_nvx4i16(<vscale x 4 x i16> %a) {
  %v = call <vscale x 4 x i16> @llvm.bswap.nvx4i16(<vscale x 4 x i16> %a)
  ret <vscale x 4 x i16> %v
}

declare <vscale x 4 x i16> @llvm.bswap.nvx4i16(<vscale x 4 x i16>)
