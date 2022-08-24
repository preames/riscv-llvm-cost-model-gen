define <4 x double> @pow_v4f64(<4 x double> %a, <4 x double> %b) {
  %v = call <4 x double> @llvm.pow.v4f64(<4 x double> %a, <4 x double> %b)
  ret <4 x double> %v
}

declare <4 x double> @llvm.pow.v4f64(<4 x double>, <4 x double>)
