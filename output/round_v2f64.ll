define <2 x double> @round_v2f64(<2 x double> %a) {
  %v = call <2 x double> @llvm.round.v2f64(<2 x double> %a)
  ret <2 x double> %v
}

declare <2 x double> @llvm.round.v2f64(<2 x double>)
