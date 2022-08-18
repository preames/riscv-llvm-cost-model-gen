define <4 x double> @trunc_v4f64(<4 x double> %a) {
  %v = call <4 x double> @llvm.trunc.v4f64(<4 x double> %a)
  ret <4 x double> %v
}

declare <4 x double> @llvm.trunc.v4f64(<4 x double>)
