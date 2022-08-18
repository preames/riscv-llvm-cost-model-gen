define <4 x double> @exp2_v4f64(<4 x double> %a) {
  %v = call <4 x double> @llvm.exp2.v4f64(<4 x double> %a)
  ret <4 x double> %v
}

declare <4 x double> @llvm.exp2.v4f64(<4 x double>)
