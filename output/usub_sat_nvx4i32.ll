define <vscale x 4 x i32> @usub_sat_nvx4i32(<vscale x 4 x i32> %a, <vscale x 4 x i32> %b) {
  %v = call <vscale x 4 x i32> @llvm.usub_sat.nvx4i32(<vscale x 4 x i32> %a, <vscale x 4 x i32> %b)
  ret <vscale x 4 x i32> %v
}

declare <vscale x 4 x i32> @llvm.usub_sat.nvx4i32(<vscale x 4 x i32>, <vscale x 4 x i32>)
