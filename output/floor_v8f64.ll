define <8 x double> @floor_v8f64(<8 x double> %a) {
  %v = call <8 x double> @llvm.floor.v8f64(<8 x double> %a)
  ret <8 x double> %v
}

declare <8 x double> @llvm.floor.v8f64(<8 x double>)
