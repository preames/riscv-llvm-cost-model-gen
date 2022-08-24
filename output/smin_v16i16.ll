define <16 x i16> @smin_v16i16(<16 x i16> %a, <16 x i16> %b) {
  %v = call <16 x i16> @llvm.smin.v16i16(<16 x i16> %a, <16 x i16> %b)
  ret <16 x i16> %v
}

declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>)
