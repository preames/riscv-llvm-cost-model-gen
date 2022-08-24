define <2 x float> @fptoui_sat_v2f32(<2 x float> %a) {
  %v = call <2 x float> @llvm.fptoui_sat.v2f32(<2 x float> %a)
  ret <2 x float> %v
}

declare <2 x float> @llvm.fptoui_sat.v2f32(<2 x float>)
