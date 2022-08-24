	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"smin_i32.ll"
	.globl	smin_i32                        # -- Begin function smin_i32
	.p2align	2
	.type	smin_i32,@function
smin_i32:                               # @smin_i32
	.cfi_startproc
# %bb.0:
	sext.w	a1, a1
	sext.w	a0, a0
	blt	a0, a1, .LBB0_2
# %bb.1:
	mv	a0, a1
.LBB0_2:
	ret
.Lfunc_end0:
	.size	smin_i32, .Lfunc_end0-smin_i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
