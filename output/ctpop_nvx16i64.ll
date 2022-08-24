define <vscale x 16 x i64> @ctpop_nvx16i64(<vscale x 16 x i64> %a) {
  %v = call <vscale x 16 x i64> @llvm.ctpop.nvx16i64(<vscale x 16 x i64> %a)
  ret <vscale x 16 x i64> %v
}

declare <vscale x 16 x i64> @llvm.ctpop.nvx16i64(<vscale x 16 x i64>)
