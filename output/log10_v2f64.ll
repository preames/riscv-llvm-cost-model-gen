define <2 x double> @log10_v2f64(<2 x double> %a) {
  %v = call <2 x double> @llvm.log10.v2f64(<2 x double> %a)
  ret <2 x double> %v
}

declare <2 x double> @llvm.log10.v2f64(<2 x double>)
