	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctpop_i16.ll"
	.globl	ctpop_i16                       # -- Begin function ctpop_i16
	.p2align	2
	.type	ctpop_i16,@function
ctpop_i16:                              # @ctpop_i16
	.cfi_startproc
# %bb.0:
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
.Lfunc_end0:
	.size	ctpop_i16, .Lfunc_end0-ctpop_i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
