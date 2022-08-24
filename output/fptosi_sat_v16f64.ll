define <16 x double> @fptosi_sat_v16f64(<16 x double> %a) {
  %v = call <16 x double> @llvm.fptosi_sat.v16f64(<16 x double> %a)
  ret <16 x double> %v
}

declare <16 x double> @llvm.fptosi_sat.v16f64(<16 x double>)
