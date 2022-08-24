define <vscale x 16 x i16> @sadd_sat_nvx16i16(<vscale x 16 x i16> %a, <vscale x 16 x i16> %b) {
  %v = call <vscale x 16 x i16> @llvm.sadd_sat.nvx16i16(<vscale x 16 x i16> %a, <vscale x 16 x i16> %b)
  ret <vscale x 16 x i16> %v
}

declare <vscale x 16 x i16> @llvm.sadd_sat.nvx16i16(<vscale x 16 x i16>, <vscale x 16 x i16>)
