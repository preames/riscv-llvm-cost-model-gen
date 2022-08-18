define <vscale x 1 x double> @trunc_nvx1f64(<vscale x 1 x double> %a) {
  %v = call <vscale x 1 x double> @llvm.trunc.nvx1f64(<vscale x 1 x double> %a)
  ret <vscale x 1 x double> %v
}

declare <vscale x 1 x double> @llvm.trunc.nvx1f64(<vscale x 1 x double>)
