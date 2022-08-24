define <vscale x 2 x float> @canonicalize_nvx2f32(<vscale x 2 x float> %a) {
  %v = call <vscale x 2 x float> @llvm.canonicalize.nvx2f32(<vscale x 2 x float> %a)
  ret <vscale x 2 x float> %v
}

declare <vscale x 2 x float> @llvm.canonicalize.nvx2f32(<vscale x 2 x float>)
