define <vscale x 2 x i64> @umin_nvx2i64(<vscale x 2 x i64> %a, <vscale x 2 x i64> %b) {
  %v = call <vscale x 2 x i64> @llvm.umin.nvx2i64(<vscale x 2 x i64> %a, <vscale x 2 x i64> %b)
  ret <vscale x 2 x i64> %v
}

declare <vscale x 2 x i64> @llvm.umin.nvx2i64(<vscale x 2 x i64>, <vscale x 2 x i64>)
