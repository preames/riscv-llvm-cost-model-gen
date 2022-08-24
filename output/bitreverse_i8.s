	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bitreverse_i8.ll"
	.globl	bitreverse_i8                   # -- Begin function bitreverse_i8
	.p2align	2
	.type	bitreverse_i8,@function
bitreverse_i8:                          # @bitreverse_i8
	.cfi_startproc
# %bb.0:
	andi	a1, a0, 15
	slli	a1, a1, 4
	slli	a0, a0, 56
	srli	a0, a0, 60
	or	a0, a0, a1
	andi	a1, a0, 51
	slli	a1, a1, 2
	srli	a0, a0, 2
	andi	a0, a0, 51
	or	a0, a0, a1
	andi	a1, a0, 85
	slli	a1, a1, 1
	srli	a0, a0, 1
	andi	a0, a0, 85
	or	a0, a0, a1
	ret
.Lfunc_end0:
	.size	bitreverse_i8, .Lfunc_end0-bitreverse_i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
