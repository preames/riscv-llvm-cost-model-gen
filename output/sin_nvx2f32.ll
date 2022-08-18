define <vscale x 2 x float> @sin_nvx2f32(<vscale x 2 x float> %a) {
  %v = call <vscale x 2 x float> @llvm.sin.nvx2f32(<vscale x 2 x float> %a)
  ret <vscale x 2 x float> %v
}

declare <vscale x 2 x float> @llvm.sin.nvx2f32(<vscale x 2 x float>)
