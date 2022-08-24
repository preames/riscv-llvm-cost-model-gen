define <8 x i16> @ssub_sat_v8i16(<8 x i16> %a, <8 x i16> %b) {
  %v = call <8 x i16> @llvm.ssub_sat.v8i16(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %v
}

declare <8 x i16> @llvm.ssub_sat.v8i16(<8 x i16>, <8 x i16>)
