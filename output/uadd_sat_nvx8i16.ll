define <vscale x 8 x i16> @uadd_sat_nvx8i16(<vscale x 8 x i16> %a, <vscale x 8 x i16> %b) {
  %v = call <vscale x 8 x i16> @llvm.uadd_sat.nvx8i16(<vscale x 8 x i16> %a, <vscale x 8 x i16> %b)
  ret <vscale x 8 x i16> %v
}

declare <vscale x 8 x i16> @llvm.uadd_sat.nvx8i16(<vscale x 8 x i16>, <vscale x 8 x i16>)
