define <16 x double> @minnum_v16f64(<16 x double> %a, <16 x double> %b) {
  %v = call <16 x double> @llvm.minnum.v16f64(<16 x double> %a, <16 x double> %b)
  ret <16 x double> %v
}

declare <16 x double> @llvm.minnum.v16f64(<16 x double>, <16 x double>)
