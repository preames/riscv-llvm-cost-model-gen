define <vscale x 16 x i8> @bswap_nvx16i8(<vscale x 16 x i8> %a) {
  %v = call <vscale x 16 x i8> @llvm.bswap.nvx16i8(<vscale x 16 x i8> %a)
  ret <vscale x 16 x i8> %v
}

declare <vscale x 16 x i8> @llvm.bswap.nvx16i8(<vscale x 16 x i8>)
