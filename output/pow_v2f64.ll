define <2 x double> @pow_v2f64(<2 x double> %a, <2 x double> %b) {
  %v = call <2 x double> @llvm.pow.v2f64(<2 x double> %a, <2 x double> %b)
  ret <2 x double> %v
}

declare <2 x double> @llvm.pow.v2f64(<2 x double>, <2 x double>)
