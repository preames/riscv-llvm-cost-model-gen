	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bitreverse_i16.ll"
	.globl	bitreverse_i16                  # -- Begin function bitreverse_i16
	.p2align	2
	.type	bitreverse_i16,@function
bitreverse_i16:                         # @bitreverse_i16
	.cfi_startproc
# %bb.0:
	slli	a1, a0, 8
	slli	a0, a0, 48
	srli	a0, a0, 56
	or	a0, a1, a0
	srli	a1, a0, 4
	lui	a2, 1
	addiw	a2, a2, -241
	and	a1, a1, a2
	and	a0, a0, a2
	slli	a0, a0, 4
	or	a0, a1, a0
	srli	a1, a0, 2
	lui	a2, 3
	addiw	a2, a2, 819
	and	a1, a1, a2
	and	a0, a0, a2
	slli	a0, a0, 2
	or	a0, a1, a0
	srli	a1, a0, 1
	lui	a2, 5
	addiw	a2, a2, 1365
	and	a1, a1, a2
	and	a0, a0, a2
	slli	a0, a0, 1
	or	a0, a1, a0
	ret
.Lfunc_end0:
	.size	bitreverse_i16, .Lfunc_end0-bitreverse_i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
