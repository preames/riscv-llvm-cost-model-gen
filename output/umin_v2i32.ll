define <2 x i32> @umin_v2i32(<2 x i32> %a, <2 x i32> %b) {
  %v = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %a, <2 x i32> %b)
  ret <2 x i32> %v
}

declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>)
