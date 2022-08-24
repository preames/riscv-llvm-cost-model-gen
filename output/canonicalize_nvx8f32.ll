define <vscale x 8 x float> @canonicalize_nvx8f32(<vscale x 8 x float> %a) {
  %v = call <vscale x 8 x float> @llvm.canonicalize.nvx8f32(<vscale x 8 x float> %a)
  ret <vscale x 8 x float> %v
}

declare <vscale x 8 x float> @llvm.canonicalize.nvx8f32(<vscale x 8 x float>)
