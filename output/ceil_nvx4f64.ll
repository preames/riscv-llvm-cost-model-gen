define <vscale x 4 x double> @ceil_nvx4f64(<vscale x 4 x double> %a) {
  %v = call <vscale x 4 x double> @llvm.ceil.nvx4f64(<vscale x 4 x double> %a)
  ret <vscale x 4 x double> %v
}

declare <vscale x 4 x double> @llvm.ceil.nvx4f64(<vscale x 4 x double>)
