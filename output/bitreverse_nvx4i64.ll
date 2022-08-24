define <vscale x 4 x i64> @bitreverse_nvx4i64(<vscale x 4 x i64> %a) {
  %v = call <vscale x 4 x i64> @llvm.bitreverse.nvx4i64(<vscale x 4 x i64> %a)
  ret <vscale x 4 x i64> %v
}

declare <vscale x 4 x i64> @llvm.bitreverse.nvx4i64(<vscale x 4 x i64>)
