define <vscale x 2 x i8> @cttz_nvx2i8(<vscale x 2 x i8> %a) {
  %v = call <vscale x 2 x i8> @llvm.cttz.nvx2i8(<vscale x 2 x i8> %a)
  ret <vscale x 2 x i8> %v
}

declare <vscale x 2 x i8> @llvm.cttz.nvx2i8(<vscale x 2 x i8>)
