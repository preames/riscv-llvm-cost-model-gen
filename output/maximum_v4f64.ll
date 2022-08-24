define <4 x double> @maximum_v4f64(<4 x double> %a, <4 x double> %b) {
  %v = call <4 x double> @llvm.maximum.v4f64(<4 x double> %a, <4 x double> %b)
  ret <4 x double> %v
}

declare <4 x double> @llvm.maximum.v4f64(<4 x double>, <4 x double>)
