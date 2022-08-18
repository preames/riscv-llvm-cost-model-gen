define <8 x double> @round_v8f64(<8 x double> %a) {
  %v = call <8 x double> @llvm.round.v8f64(<8 x double> %a)
  ret <8 x double> %v
}

declare <8 x double> @llvm.round.v8f64(<8 x double>)
