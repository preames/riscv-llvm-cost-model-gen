	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_nvx2i16.ll"
	.globl	bswap_nvx2i16                   # -- Begin function bswap_nvx2i16
	.p2align	2
	.type	bswap_nvx2i16,@function
bswap_nvx2i16:                          # @bswap_nvx2i16
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e16, mf2, ta, mu
	vsrl.vi	v9, v8, 8
	vsll.vi	v8, v8, 8
	vor.vv	v8, v8, v9
	ret
.Lfunc_end0:
	.size	bswap_nvx2i16, .Lfunc_end0-bswap_nvx2i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
