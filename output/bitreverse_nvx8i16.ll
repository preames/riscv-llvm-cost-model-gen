define <vscale x 8 x i16> @bitreverse_nvx8i16(<vscale x 8 x i16> %a) {
  %v = call <vscale x 8 x i16> @llvm.bitreverse.nvx8i16(<vscale x 8 x i16> %a)
  ret <vscale x 8 x i16> %v
}

declare <vscale x 8 x i16> @llvm.bitreverse.nvx8i16(<vscale x 8 x i16>)
