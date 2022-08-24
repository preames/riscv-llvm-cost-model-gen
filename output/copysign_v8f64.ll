define <8 x double> @copysign_v8f64(<8 x double> %a, <8 x double> %b) {
  %v = call <8 x double> @llvm.copysign.v8f64(<8 x double> %a, <8 x double> %b)
  ret <8 x double> %v
}

declare <8 x double> @llvm.copysign.v8f64(<8 x double>, <8 x double>)
