define <2 x double> @nearbyint_v2f64(<2 x double> %a) {
  %v = call <2 x double> @llvm.nearbyint.v2f64(<2 x double> %a)
  ret <2 x double> %v
}

declare <2 x double> @llvm.nearbyint.v2f64(<2 x double>)
