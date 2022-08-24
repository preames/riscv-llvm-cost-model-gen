	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctpop_i8.ll"
	.globl	ctpop_i8                        # -- Begin function ctpop_i8
	.p2align	2
	.type	ctpop_i8,@function
ctpop_i8:                               # @ctpop_i8
	.cfi_startproc
# %bb.0:
	srli	a1, a0, 1
	andi	a1, a1, 85
	sub	a0, a0, a1
	andi	a1, a0, 51
	srli	a0, a0, 2
	andi	a0, a0, 51
	add	a0, a1, a0
	srli	a1, a0, 4
	addw	a0, a0, a1
	andi	a0, a0, 15
	ret
.Lfunc_end0:
	.size	ctpop_i8, .Lfunc_end0-ctpop_i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
