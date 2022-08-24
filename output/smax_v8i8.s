	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"smax_v8i8.ll"
	.globl	smax_v8i8                       # -- Begin function smax_v8i8
	.p2align	2
	.type	smax_v8i8,@function
smax_v8i8:                              # @smax_v8i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e8, mf2, ta, mu
	vmax.vv	v8, v8, v9
	ret
.Lfunc_end0:
	.size	smax_v8i8, .Lfunc_end0-smax_v8i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
