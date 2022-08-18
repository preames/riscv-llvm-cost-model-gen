define <vscale x 2 x double> @rint_nvx2f64(<vscale x 2 x double> %a) {
  %v = call <vscale x 2 x double> @llvm.rint.nvx2f64(<vscale x 2 x double> %a)
  ret <vscale x 2 x double> %v
}

declare <vscale x 2 x double> @llvm.rint.nvx2f64(<vscale x 2 x double>)
