	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"umax_i8.ll"
	.globl	umax_i8                         # -- Begin function umax_i8
	.p2align	2
	.type	umax_i8,@function
umax_i8:                                # @umax_i8
	.cfi_startproc
# %bb.0:
	andi	a0, a0, 255
	andi	a1, a1, 255
	bltu	a1, a0, .LBB0_2
# %bb.1:
	mv	a0, a1
.LBB0_2:
	ret
.Lfunc_end0:
	.size	umax_i8, .Lfunc_end0-umax_i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
