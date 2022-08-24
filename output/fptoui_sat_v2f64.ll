define <2 x double> @fptoui_sat_v2f64(<2 x double> %a) {
  %v = call <2 x double> @llvm.fptoui_sat.v2f64(<2 x double> %a)
  ret <2 x double> %v
}

declare <2 x double> @llvm.fptoui_sat.v2f64(<2 x double>)
