define <2 x i32> @abs_v2i32(<2 x i32> %a) {
  %v = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %a)
  ret <2 x i32> %v
}

declare <2 x i32> @llvm.abs.v2i32(<2 x i32>)
