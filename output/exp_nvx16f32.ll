define <vscale x 16 x float> @exp_nvx16f32(<vscale x 16 x float> %a) {
  %v = call <vscale x 16 x float> @llvm.exp.nvx16f32(<vscale x 16 x float> %a)
  ret <vscale x 16 x float> %v
}

declare <vscale x 16 x float> @llvm.exp.nvx16f32(<vscale x 16 x float>)
