define <4 x i16> @usub_sat_v4i16(<4 x i16> %a, <4 x i16> %b) {
  %v = call <4 x i16> @llvm.usub_sat.v4i16(<4 x i16> %a, <4 x i16> %b)
  ret <4 x i16> %v
}

declare <4 x i16> @llvm.usub_sat.v4i16(<4 x i16>, <4 x i16>)
