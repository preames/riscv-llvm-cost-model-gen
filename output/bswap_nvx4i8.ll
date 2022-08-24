define <vscale x 4 x i8> @bswap_nvx4i8(<vscale x 4 x i8> %a) {
  %v = call <vscale x 4 x i8> @llvm.bswap.nvx4i8(<vscale x 4 x i8> %a)
  ret <vscale x 4 x i8> %v
}

declare <vscale x 4 x i8> @llvm.bswap.nvx4i8(<vscale x 4 x i8>)
