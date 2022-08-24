define <16 x i8> @ssub_sat_v16i8(<16 x i8> %a, <16 x i8> %b) {
  %v = call <16 x i8> @llvm.ssub_sat.v16i8(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %v
}

declare <16 x i8> @llvm.ssub_sat.v16i8(<16 x i8>, <16 x i8>)
