define <vscale x 8 x i64> @abs_nvx8i64(<vscale x 8 x i64> %a) {
  %v = call <vscale x 8 x i64> @llvm.abs.nvx8i64(<vscale x 8 x i64> %a)
  ret <vscale x 8 x i64> %v
}

declare <vscale x 8 x i64> @llvm.abs.nvx8i64(<vscale x 8 x i64>)
