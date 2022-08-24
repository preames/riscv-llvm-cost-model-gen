define <vscale x 16 x i8> @ssub_sat_nvx16i8(<vscale x 16 x i8> %a, <vscale x 16 x i8> %b) {
  %v = call <vscale x 16 x i8> @llvm.ssub_sat.nvx16i8(<vscale x 16 x i8> %a, <vscale x 16 x i8> %b)
  ret <vscale x 16 x i8> %v
}

declare <vscale x 16 x i8> @llvm.ssub_sat.nvx16i8(<vscale x 16 x i8>, <vscale x 16 x i8>)
