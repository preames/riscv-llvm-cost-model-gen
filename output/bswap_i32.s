	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_i32.ll"
	.globl	bswap_i32                       # -- Begin function bswap_i32
	.p2align	2
	.type	bswap_i32,@function
bswap_i32:                              # @bswap_i32
	.cfi_startproc
# %bb.0:
	srli	a1, a0, 8
	lui	a2, 16
	addiw	a2, a2, -256
	and	a1, a1, a2
	srliw	a2, a0, 24
	or	a1, a1, a2
	slli	a2, a0, 8
	lui	a3, 4080
	and	a2, a2, a3
	slliw	a0, a0, 24
	or	a0, a0, a2
	or	a0, a0, a1
	ret
.Lfunc_end0:
	.size	bswap_i32, .Lfunc_end0-bswap_i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
