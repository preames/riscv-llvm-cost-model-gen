define <vscale x 16 x i8> @ctpop_nvx16i8(<vscale x 16 x i8> %a) {
  %v = call <vscale x 16 x i8> @llvm.ctpop.nvx16i8(<vscale x 16 x i8> %a)
  ret <vscale x 16 x i8> %v
}

declare <vscale x 16 x i8> @llvm.ctpop.nvx16i8(<vscale x 16 x i8>)
