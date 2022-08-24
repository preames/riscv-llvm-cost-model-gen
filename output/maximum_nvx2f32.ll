define <vscale x 2 x float> @maximum_nvx2f32(<vscale x 2 x float> %a, <vscale x 2 x float> %b) {
  %v = call <vscale x 2 x float> @llvm.maximum.nvx2f32(<vscale x 2 x float> %a, <vscale x 2 x float> %b)
  ret <vscale x 2 x float> %v
}

declare <vscale x 2 x float> @llvm.maximum.nvx2f32(<vscale x 2 x float>, <vscale x 2 x float>)
