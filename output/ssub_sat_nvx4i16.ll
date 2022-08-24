define <vscale x 4 x i16> @ssub_sat_nvx4i16(<vscale x 4 x i16> %a, <vscale x 4 x i16> %b) {
  %v = call <vscale x 4 x i16> @llvm.ssub_sat.nvx4i16(<vscale x 4 x i16> %a, <vscale x 4 x i16> %b)
  ret <vscale x 4 x i16> %v
}

declare <vscale x 4 x i16> @llvm.ssub_sat.nvx4i16(<vscale x 4 x i16>, <vscale x 4 x i16>)
