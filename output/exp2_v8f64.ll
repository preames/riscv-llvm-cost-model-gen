define <8 x double> @exp2_v8f64(<8 x double> %a) {
  %v = call <8 x double> @llvm.exp2.v8f64(<8 x double> %a)
  ret <8 x double> %v
}

declare <8 x double> @llvm.exp2.v8f64(<8 x double>)
