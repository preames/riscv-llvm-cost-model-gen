define <vscale x 2 x i64> @bitreverse_nvx2i64(<vscale x 2 x i64> %a) {
  %v = call <vscale x 2 x i64> @llvm.bitreverse.nvx2i64(<vscale x 2 x i64> %a)
  ret <vscale x 2 x i64> %v
}

declare <vscale x 2 x i64> @llvm.bitreverse.nvx2i64(<vscale x 2 x i64>)
