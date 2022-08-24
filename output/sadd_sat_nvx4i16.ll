define <vscale x 4 x i16> @sadd_sat_nvx4i16(<vscale x 4 x i16> %a, <vscale x 4 x i16> %b) {
  %v = call <vscale x 4 x i16> @llvm.sadd_sat.nvx4i16(<vscale x 4 x i16> %a, <vscale x 4 x i16> %b)
  ret <vscale x 4 x i16> %v
}

declare <vscale x 4 x i16> @llvm.sadd_sat.nvx4i16(<vscale x 4 x i16>, <vscale x 4 x i16>)
