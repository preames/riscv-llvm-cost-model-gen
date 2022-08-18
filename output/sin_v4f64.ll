define <4 x double> @sin_v4f64(<4 x double> %a) {
  %v = call <4 x double> @llvm.sin.v4f64(<4 x double> %a)
  ret <4 x double> %v
}

declare <4 x double> @llvm.sin.v4f64(<4 x double>)
