define <2 x double> @maxnum_v2f64(<2 x double> %a, <2 x double> %b) {
  %v = call <2 x double> @llvm.maxnum.v2f64(<2 x double> %a, <2 x double> %b)
  ret <2 x double> %v
}

declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>)
