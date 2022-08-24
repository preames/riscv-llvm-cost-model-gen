define <vscale x 2 x i8> @uadd_sat_nvx2i8(<vscale x 2 x i8> %a, <vscale x 2 x i8> %b) {
  %v = call <vscale x 2 x i8> @llvm.uadd_sat.nvx2i8(<vscale x 2 x i8> %a, <vscale x 2 x i8> %b)
  ret <vscale x 2 x i8> %v
}

declare <vscale x 2 x i8> @llvm.uadd_sat.nvx2i8(<vscale x 2 x i8>, <vscale x 2 x i8>)
