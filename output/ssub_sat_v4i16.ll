define <4 x i16> @ssub_sat_v4i16(<4 x i16> %a, <4 x i16> %b) {
  %v = call <4 x i16> @llvm.ssub_sat.v4i16(<4 x i16> %a, <4 x i16> %b)
  ret <4 x i16> %v
}

declare <4 x i16> @llvm.ssub_sat.v4i16(<4 x i16>, <4 x i16>)
