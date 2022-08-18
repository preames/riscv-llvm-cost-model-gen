define <vscale x 2 x double> @log_nvx2f64(<vscale x 2 x double> %a) {
  %v = call <vscale x 2 x double> @llvm.log.nvx2f64(<vscale x 2 x double> %a)
  ret <vscale x 2 x double> %v
}

declare <vscale x 2 x double> @llvm.log.nvx2f64(<vscale x 2 x double>)
