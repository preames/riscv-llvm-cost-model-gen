	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_i16.ll"
	.globl	bswap_i16                       # -- Begin function bswap_i16
	.p2align	2
	.type	bswap_i16,@function
bswap_i16:                              # @bswap_i16
	.cfi_startproc
# %bb.0:
	slli	a1, a0, 8
	slli	a0, a0, 48
	srli	a0, a0, 56
	or	a0, a1, a0
	ret
.Lfunc_end0:
	.size	bswap_i16, .Lfunc_end0-bswap_i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
