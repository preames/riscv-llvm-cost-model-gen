define <vscale x 2 x i32> @bitreverse_nvx2i32(<vscale x 2 x i32> %a) {
  %v = call <vscale x 2 x i32> @llvm.bitreverse.nvx2i32(<vscale x 2 x i32> %a)
  ret <vscale x 2 x i32> %v
}

declare <vscale x 2 x i32> @llvm.bitreverse.nvx2i32(<vscale x 2 x i32>)
