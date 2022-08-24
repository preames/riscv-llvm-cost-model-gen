define <vscale x 8 x i32> @bswap_nvx8i32(<vscale x 8 x i32> %a) {
  %v = call <vscale x 8 x i32> @llvm.bswap.nvx8i32(<vscale x 8 x i32> %a)
  ret <vscale x 8 x i32> %v
}

declare <vscale x 8 x i32> @llvm.bswap.nvx8i32(<vscale x 8 x i32>)
