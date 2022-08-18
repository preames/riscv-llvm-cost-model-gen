define <16 x double> @ceil_v16f64(<16 x double> %a) {
  %v = call <16 x double> @llvm.ceil.v16f64(<16 x double> %a)
  ret <16 x double> %v
}

declare <16 x double> @llvm.ceil.v16f64(<16 x double>)
