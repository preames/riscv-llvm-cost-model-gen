define <vscale x 4 x double> @fptosi_sat_nvx4f64(<vscale x 4 x double> %a) {
  %v = call <vscale x 4 x double> @llvm.fptosi_sat.nvx4f64(<vscale x 4 x double> %a)
  ret <vscale x 4 x double> %v
}

declare <vscale x 4 x double> @llvm.fptosi_sat.nvx4f64(<vscale x 4 x double>)
