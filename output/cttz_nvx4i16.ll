define <vscale x 4 x i16> @cttz_nvx4i16(<vscale x 4 x i16> %a) {
  %v = call <vscale x 4 x i16> @llvm.cttz.nvx4i16(<vscale x 4 x i16> %a)
  ret <vscale x 4 x i16> %v
}

declare <vscale x 4 x i16> @llvm.cttz.nvx4i16(<vscale x 4 x i16>)
