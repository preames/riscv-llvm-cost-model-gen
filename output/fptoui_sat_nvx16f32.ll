define <vscale x 16 x float> @fptoui_sat_nvx16f32(<vscale x 16 x float> %a) {
  %v = call <vscale x 16 x float> @llvm.fptoui_sat.nvx16f32(<vscale x 16 x float> %a)
  ret <vscale x 16 x float> %v
}

declare <vscale x 16 x float> @llvm.fptoui_sat.nvx16f32(<vscale x 16 x float>)
