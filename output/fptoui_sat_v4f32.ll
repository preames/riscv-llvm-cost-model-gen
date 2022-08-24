define <4 x float> @fptoui_sat_v4f32(<4 x float> %a) {
  %v = call <4 x float> @llvm.fptoui_sat.v4f32(<4 x float> %a)
  ret <4 x float> %v
}

declare <4 x float> @llvm.fptoui_sat.v4f32(<4 x float>)
