	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"smin_i16.ll"
	.globl	smin_i16                        # -- Begin function smin_i16
	.p2align	2
	.type	smin_i16,@function
smin_i16:                               # @smin_i16
	.cfi_startproc
# %bb.0:
	slli	a1, a1, 48
	srai	a1, a1, 48
	slli	a0, a0, 48
	srai	a0, a0, 48
	blt	a0, a1, .LBB0_2
# %bb.1:
	mv	a0, a1
.LBB0_2:
	ret
.Lfunc_end0:
	.size	smin_i16, .Lfunc_end0-smin_i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
