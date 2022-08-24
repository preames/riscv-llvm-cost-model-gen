define <vscale x 2 x i32> @usub_sat_nvx2i32(<vscale x 2 x i32> %a, <vscale x 2 x i32> %b) {
  %v = call <vscale x 2 x i32> @llvm.usub_sat.nvx2i32(<vscale x 2 x i32> %a, <vscale x 2 x i32> %b)
  ret <vscale x 2 x i32> %v
}

declare <vscale x 2 x i32> @llvm.usub_sat.nvx2i32(<vscale x 2 x i32>, <vscale x 2 x i32>)
