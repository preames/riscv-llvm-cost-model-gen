define <vscale x 4 x float> @canonicalize_nvx4f32(<vscale x 4 x float> %a) {
  %v = call <vscale x 4 x float> @llvm.canonicalize.nvx4f32(<vscale x 4 x float> %a)
  ret <vscale x 4 x float> %v
}

declare <vscale x 4 x float> @llvm.canonicalize.nvx4f32(<vscale x 4 x float>)
