	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_i64.ll"
	.globl	bswap_i64                       # -- Begin function bswap_i64
	.p2align	2
	.type	bswap_i64,@function
bswap_i64:                              # @bswap_i64
	.cfi_startproc
# %bb.0:
	srli	a1, a0, 24
	lui	a2, 4080
	and	a1, a1, a2
	srli	a2, a0, 8
	li	a3, 255
	slli	a4, a3, 24
	and	a2, a2, a4
	or	a1, a2, a1
	srli	a2, a0, 40
	lui	a4, 16
	addiw	a4, a4, -256
	and	a2, a2, a4
	srli	a4, a0, 56
	or	a2, a2, a4
	or	a1, a1, a2
	slli	a2, a0, 24
	slli	a4, a3, 40
	and	a2, a2, a4
	srliw	a4, a0, 24
	slli	a4, a4, 32
	or	a2, a2, a4
	slli	a4, a0, 40
	slli	a3, a3, 48
	and	a3, a4, a3
	slli	a0, a0, 56
	or	a0, a0, a3
	or	a0, a0, a2
	or	a0, a0, a1
	ret
.Lfunc_end0:
	.size	bswap_i64, .Lfunc_end0-bswap_i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
