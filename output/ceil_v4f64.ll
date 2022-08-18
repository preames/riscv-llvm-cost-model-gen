define <4 x double> @ceil_v4f64(<4 x double> %a) {
  %v = call <4 x double> @llvm.ceil.v4f64(<4 x double> %a)
  ret <4 x double> %v
}

declare <4 x double> @llvm.ceil.v4f64(<4 x double>)
