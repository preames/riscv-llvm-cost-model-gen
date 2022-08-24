define <8 x i8> @sadd_sat_v8i8(<8 x i8> %a, <8 x i8> %b) {
  %v = call <8 x i8> @llvm.sadd_sat.v8i8(<8 x i8> %a, <8 x i8> %b)
  ret <8 x i8> %v
}

declare <8 x i8> @llvm.sadd_sat.v8i8(<8 x i8>, <8 x i8>)
