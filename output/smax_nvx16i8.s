	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"smax_nvx16i8.ll"
	.globl	smax_nvx16i8                    # -- Begin function smax_nvx16i8
	.p2align	2
	.type	smax_nvx16i8,@function
smax_nvx16i8:                           # @smax_nvx16i8
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e8, m2, ta, mu
	vmax.vv	v8, v8, v10
	ret
.Lfunc_end0:
	.size	smax_nvx16i8, .Lfunc_end0-smax_nvx16i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits