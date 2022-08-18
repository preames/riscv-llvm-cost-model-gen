define <vscale x 4 x double> @roundeven_nvx4f64(<vscale x 4 x double> %a) {
  %v = call <vscale x 4 x double> @llvm.roundeven.nvx4f64(<vscale x 4 x double> %a)
  ret <vscale x 4 x double> %v
}

declare <vscale x 4 x double> @llvm.roundeven.nvx4f64(<vscale x 4 x double>)
