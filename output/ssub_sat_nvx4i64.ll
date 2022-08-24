define <vscale x 4 x i64> @ssub_sat_nvx4i64(<vscale x 4 x i64> %a, <vscale x 4 x i64> %b) {
  %v = call <vscale x 4 x i64> @llvm.ssub_sat.nvx4i64(<vscale x 4 x i64> %a, <vscale x 4 x i64> %b)
  ret <vscale x 4 x i64> %v
}

declare <vscale x 4 x i64> @llvm.ssub_sat.nvx4i64(<vscale x 4 x i64>, <vscale x 4 x i64>)
