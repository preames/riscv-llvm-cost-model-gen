define <vscale x 16 x float> @minimum_nvx16f32(<vscale x 16 x float> %a, <vscale x 16 x float> %b) {
  %v = call <vscale x 16 x float> @llvm.minimum.nvx16f32(<vscale x 16 x float> %a, <vscale x 16 x float> %b)
  ret <vscale x 16 x float> %v
}

declare <vscale x 16 x float> @llvm.minimum.nvx16f32(<vscale x 16 x float>, <vscale x 16 x float>)
