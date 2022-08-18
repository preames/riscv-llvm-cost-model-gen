define <vscale x 8 x float> @exp2_nvx8f32(<vscale x 8 x float> %a) {
  %v = call <vscale x 8 x float> @llvm.exp2.nvx8f32(<vscale x 8 x float> %a)
  ret <vscale x 8 x float> %v
}

declare <vscale x 8 x float> @llvm.exp2.nvx8f32(<vscale x 8 x float>)
