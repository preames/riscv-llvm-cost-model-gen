define <vscale x 8 x double> @copysign_nvx8f64(<vscale x 8 x double> %a, <vscale x 8 x double> %b) {
  %v = call <vscale x 8 x double> @llvm.copysign.nvx8f64(<vscale x 8 x double> %a, <vscale x 8 x double> %b)
  ret <vscale x 8 x double> %v
}

declare <vscale x 8 x double> @llvm.copysign.nvx8f64(<vscale x 8 x double>, <vscale x 8 x double>)
