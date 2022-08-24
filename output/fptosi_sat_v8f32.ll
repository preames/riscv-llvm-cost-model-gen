define <8 x float> @fptosi_sat_v8f32(<8 x float> %a) {
  %v = call <8 x float> @llvm.fptosi_sat.v8f32(<8 x float> %a)
  ret <8 x float> %v
}

declare <8 x float> @llvm.fptosi_sat.v8f32(<8 x float>)
