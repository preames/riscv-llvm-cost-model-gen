define <vscale x 8 x i16> @ssub_sat_nvx8i16(<vscale x 8 x i16> %a, <vscale x 8 x i16> %b) {
  %v = call <vscale x 8 x i16> @llvm.ssub_sat.nvx8i16(<vscale x 8 x i16> %a, <vscale x 8 x i16> %b)
  ret <vscale x 8 x i16> %v
}

declare <vscale x 8 x i16> @llvm.ssub_sat.nvx8i16(<vscale x 8 x i16>, <vscale x 8 x i16>)
