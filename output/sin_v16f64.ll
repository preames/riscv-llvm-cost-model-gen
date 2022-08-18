define <16 x double> @sin_v16f64(<16 x double> %a) {
  %v = call <16 x double> @llvm.sin.v16f64(<16 x double> %a)
  ret <16 x double> %v
}

declare <16 x double> @llvm.sin.v16f64(<16 x double>)
