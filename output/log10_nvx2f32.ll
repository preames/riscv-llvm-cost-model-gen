define <vscale x 2 x float> @log10_nvx2f32(<vscale x 2 x float> %a) {
  %v = call <vscale x 2 x float> @llvm.log10.nvx2f32(<vscale x 2 x float> %a)
  ret <vscale x 2 x float> %v
}

declare <vscale x 2 x float> @llvm.log10.nvx2f32(<vscale x 2 x float>)
