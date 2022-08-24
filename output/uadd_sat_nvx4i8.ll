define <vscale x 4 x i8> @uadd_sat_nvx4i8(<vscale x 4 x i8> %a, <vscale x 4 x i8> %b) {
  %v = call <vscale x 4 x i8> @llvm.uadd_sat.nvx4i8(<vscale x 4 x i8> %a, <vscale x 4 x i8> %b)
  ret <vscale x 4 x i8> %v
}

declare <vscale x 4 x i8> @llvm.uadd_sat.nvx4i8(<vscale x 4 x i8>, <vscale x 4 x i8>)
