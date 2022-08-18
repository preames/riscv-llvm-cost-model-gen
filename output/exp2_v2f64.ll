define <2 x double> @exp2_v2f64(<2 x double> %a) {
  %v = call <2 x double> @llvm.exp2.v2f64(<2 x double> %a)
  ret <2 x double> %v
}

declare <2 x double> @llvm.exp2.v2f64(<2 x double>)
