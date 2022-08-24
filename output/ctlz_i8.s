	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_i8.ll"
	.globl	ctlz_i8                         # -- Begin function ctlz_i8
	.p2align	2
	.type	ctlz_i8,@function
ctlz_i8:                                # @ctlz_i8
	.cfi_startproc
# %bb.0:
	andi	a1, a0, 255
	beqz	a1, .LBB0_2
# %bb.1:                                # %cond.false
	slli	a1, a0, 56
	srli	a1, a1, 57
	or	a0, a0, a1
	slli	a1, a0, 56
	srli	a1, a1, 58
	or	a0, a0, a1
	slli	a1, a0, 56
	srli	a1, a1, 60
	or	a0, a0, a1
	not	a0, a0
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
.LBB0_2:
	li	a0, 8
	ret
.Lfunc_end0:
	.size	ctlz_i8, .Lfunc_end0-ctlz_i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
