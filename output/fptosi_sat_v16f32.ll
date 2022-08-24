define <16 x float> @fptosi_sat_v16f32(<16 x float> %a) {
  %v = call <16 x float> @llvm.fptosi_sat.v16f32(<16 x float> %a)
  ret <16 x float> %v
}

declare <16 x float> @llvm.fptosi_sat.v16f32(<16 x float>)
