define <vscale x 4 x double> @maxnum_nvx4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b) {
  %v = call <vscale x 4 x double> @llvm.maxnum.nvx4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b)
  ret <vscale x 4 x double> %v
}

declare <vscale x 4 x double> @llvm.maxnum.nvx4f64(<vscale x 4 x double>, <vscale x 4 x double>)
