define <vscale x 4 x double> @pow_nvx4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b) {
  %v = call <vscale x 4 x double> @llvm.pow.nvx4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b)
  ret <vscale x 4 x double> %v
}

declare <vscale x 4 x double> @llvm.pow.nvx4f64(<vscale x 4 x double>, <vscale x 4 x double>)
