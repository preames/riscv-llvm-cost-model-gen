define <vscale x 1 x double> @exp_nvx1f64(<vscale x 1 x double> %a) {
  %v = call <vscale x 1 x double> @llvm.exp.nvx1f64(<vscale x 1 x double> %a)
  ret <vscale x 1 x double> %v
}

declare <vscale x 1 x double> @llvm.exp.nvx1f64(<vscale x 1 x double>)
