define <vscale x 8 x double> @fptoui_sat_nvx8f64(<vscale x 8 x double> %a) {
  %v = call <vscale x 8 x double> @llvm.fptoui_sat.nvx8f64(<vscale x 8 x double> %a)
  ret <vscale x 8 x double> %v
}

declare <vscale x 8 x double> @llvm.fptoui_sat.nvx8f64(<vscale x 8 x double>)
