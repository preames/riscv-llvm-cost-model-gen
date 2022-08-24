define <vscale x 4 x float> @pow_nvx4f32(<vscale x 4 x float> %a, <vscale x 4 x float> %b) {
  %v = call <vscale x 4 x float> @llvm.pow.nvx4f32(<vscale x 4 x float> %a, <vscale x 4 x float> %b)
  ret <vscale x 4 x float> %v
}

declare <vscale x 4 x float> @llvm.pow.nvx4f32(<vscale x 4 x float>, <vscale x 4 x float>)
