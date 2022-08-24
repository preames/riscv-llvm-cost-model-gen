define <vscale x 4 x i64> @smax_nvx4i64(<vscale x 4 x i64> %a, <vscale x 4 x i64> %b) {
  %v = call <vscale x 4 x i64> @llvm.smax.nvx4i64(<vscale x 4 x i64> %a, <vscale x 4 x i64> %b)
  ret <vscale x 4 x i64> %v
}

declare <vscale x 4 x i64> @llvm.smax.nvx4i64(<vscale x 4 x i64>, <vscale x 4 x i64>)
