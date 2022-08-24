define <2 x i8> @sadd_sat_v2i8(<2 x i8> %a, <2 x i8> %b) {
  %v = call <2 x i8> @llvm.sadd_sat.v2i8(<2 x i8> %a, <2 x i8> %b)
  ret <2 x i8> %v
}

declare <2 x i8> @llvm.sadd_sat.v2i8(<2 x i8>, <2 x i8>)
