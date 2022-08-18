define <vscale x 8 x double> @log_nvx8f64(<vscale x 8 x double> %a) {
  %v = call <vscale x 8 x double> @llvm.log.nvx8f64(<vscale x 8 x double> %a)
  ret <vscale x 8 x double> %v
}

declare <vscale x 8 x double> @llvm.log.nvx8f64(<vscale x 8 x double>)
