define <vscale x 16 x i8> @bitreverse_nvx16i8(<vscale x 16 x i8> %a) {
  %v = call <vscale x 16 x i8> @llvm.bitreverse.nvx16i8(<vscale x 16 x i8> %a)
  ret <vscale x 16 x i8> %v
}

declare <vscale x 16 x i8> @llvm.bitreverse.nvx16i8(<vscale x 16 x i8>)
