define <vscale x 4 x i8> @usub_sat_nvx4i8(<vscale x 4 x i8> %a, <vscale x 4 x i8> %b) {
  %v = call <vscale x 4 x i8> @llvm.usub_sat.nvx4i8(<vscale x 4 x i8> %a, <vscale x 4 x i8> %b)
  ret <vscale x 4 x i8> %v
}

declare <vscale x 4 x i8> @llvm.usub_sat.nvx4i8(<vscale x 4 x i8>, <vscale x 4 x i8>)
