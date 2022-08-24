define <vscale x 4 x double> @minnum_nvx4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b) {
  %v = call <vscale x 4 x double> @llvm.minnum.nvx4f64(<vscale x 4 x double> %a, <vscale x 4 x double> %b)
  ret <vscale x 4 x double> %v
}

declare <vscale x 4 x double> @llvm.minnum.nvx4f64(<vscale x 4 x double>, <vscale x 4 x double>)
