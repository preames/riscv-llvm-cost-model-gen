define <vscale x 8 x i64> @sadd_sat_nvx8i64(<vscale x 8 x i64> %a, <vscale x 8 x i64> %b) {
  %v = call <vscale x 8 x i64> @llvm.sadd_sat.nvx8i64(<vscale x 8 x i64> %a, <vscale x 8 x i64> %b)
  ret <vscale x 8 x i64> %v
}

declare <vscale x 8 x i64> @llvm.sadd_sat.nvx8i64(<vscale x 8 x i64>, <vscale x 8 x i64>)
