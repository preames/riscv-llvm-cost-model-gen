	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"smax_v2i16.ll"
	.globl	smax_v2i16                      # -- Begin function smax_v2i16
	.p2align	2
	.type	smax_v2i16,@function
smax_v2i16:                             # @smax_v2i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 2, e16, mf4, ta, mu
	vmax.vv	v8, v8, v9
	ret
.Lfunc_end0:
	.size	smax_v2i16, .Lfunc_end0-smax_v2i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
