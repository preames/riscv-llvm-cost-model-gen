define <vscale x 2 x double> @maximum_nvx2f64(<vscale x 2 x double> %a, <vscale x 2 x double> %b) {
  %v = call <vscale x 2 x double> @llvm.maximum.nvx2f64(<vscale x 2 x double> %a, <vscale x 2 x double> %b)
  ret <vscale x 2 x double> %v
}

declare <vscale x 2 x double> @llvm.maximum.nvx2f64(<vscale x 2 x double>, <vscale x 2 x double>)
