define <16 x double> @sqrt_v16f64(<16 x double> %a) {
  %v = call <16 x double> @llvm.sqrt.v16f64(<16 x double> %a)
  ret <16 x double> %v
}

declare <16 x double> @llvm.sqrt.v16f64(<16 x double>)
