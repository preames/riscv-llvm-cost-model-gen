define <vscale x 16 x i32> @sadd_sat_nvx16i32(<vscale x 16 x i32> %a, <vscale x 16 x i32> %b) {
  %v = call <vscale x 16 x i32> @llvm.sadd_sat.nvx16i32(<vscale x 16 x i32> %a, <vscale x 16 x i32> %b)
  ret <vscale x 16 x i32> %v
}

declare <vscale x 16 x i32> @llvm.sadd_sat.nvx16i32(<vscale x 16 x i32>, <vscale x 16 x i32>)
