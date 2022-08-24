	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_i16.ll"
	.globl	ctlz_i16                        # -- Begin function ctlz_i16
	.p2align	2
	.type	ctlz_i16,@function
ctlz_i16:                               # @ctlz_i16
	.cfi_startproc
# %bb.0:
	slli	a1, a0, 48
	srli	a2, a1, 48
	beqz	a2, .LBB0_2
# %bb.1:                                # %cond.false
	srli	a1, a1, 49
	or	a0, a0, a1
	slli	a1, a0, 48
	srli	a1, a1, 50
	or	a0, a0, a1
	slli	a1, a0, 48
	srli	a1, a1, 52
	or	a0, a0, a1
	slli	a1, a0, 48
	srli	a1, a1, 56
	or	a0, a0, a1
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 5
	addiw	a2, a2, 1365
	and	a1, a1, a2
	sub	a0, a0, a1
	lui	a1, 3
	addiw	a1, a1, 819
	and	a2, a0, a1
	srli	a0, a0, 2
	and	a0, a0, a1
	add	a0, a2, a0
	srli	a1, a0, 4
	addw	a0, a0, a1
	andi	a1, a0, 15
	slli	a0, a0, 52
	srli	a0, a0, 60
	add	a0, a1, a0
	ret
.LBB0_2:
	li	a0, 16
	ret
.Lfunc_end0:
	.size	ctlz_i16, .Lfunc_end0-ctlz_i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
