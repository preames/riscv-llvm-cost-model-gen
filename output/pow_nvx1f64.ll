define <vscale x 1 x double> @pow_nvx1f64(<vscale x 1 x double> %a, <vscale x 1 x double> %b) {
  %v = call <vscale x 1 x double> @llvm.pow.nvx1f64(<vscale x 1 x double> %a, <vscale x 1 x double> %b)
  ret <vscale x 1 x double> %v
}

declare <vscale x 1 x double> @llvm.pow.nvx1f64(<vscale x 1 x double>, <vscale x 1 x double>)
