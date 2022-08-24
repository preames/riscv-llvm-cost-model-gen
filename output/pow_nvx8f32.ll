define <vscale x 8 x float> @pow_nvx8f32(<vscale x 8 x float> %a, <vscale x 8 x float> %b) {
  %v = call <vscale x 8 x float> @llvm.pow.nvx8f32(<vscale x 8 x float> %a, <vscale x 8 x float> %b)
  ret <vscale x 8 x float> %v
}

declare <vscale x 8 x float> @llvm.pow.nvx8f32(<vscale x 8 x float>, <vscale x 8 x float>)
