	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_nvx16i32.ll"
	.globl	bswap_nvx16i32                  # -- Begin function bswap_nvx16i32
	.p2align	2
	.type	bswap_nvx16i32,@function
bswap_nvx16i32:                         # @bswap_nvx16i32
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e32, m8, ta, mu
	vsrl.vi	v16, v8, 8
	lui	a0, 16
	addiw	a0, a0, -256
	vand.vx	v16, v16, a0
	vsrl.vi	v24, v8, 24
	vor.vv	v16, v16, v24
	vsll.vi	v24, v8, 8
	lui	a0, 4080
	vand.vx	v24, v24, a0
	vsll.vi	v8, v8, 24
	vor.vv	v8, v8, v24
	vor.vv	v8, v8, v16
	ret
.Lfunc_end0:
	.size	bswap_nvx16i32, .Lfunc_end0-bswap_nvx16i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
