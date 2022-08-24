define <2 x float> @fptosi_sat_v2f32(<2 x float> %a) {
  %v = call <2 x float> @llvm.fptosi_sat.v2f32(<2 x float> %a)
  ret <2 x float> %v
}

declare <2 x float> @llvm.fptosi_sat.v2f32(<2 x float>)
