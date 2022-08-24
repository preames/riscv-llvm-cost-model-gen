	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_nvx4i64.ll"
	.globl	bswap_nvx4i64                   # -- Begin function bswap_nvx4i64
	.p2align	2
	.type	bswap_nvx4i64,@function
bswap_nvx4i64:                          # @bswap_nvx4i64
	.cfi_startproc
# %bb.0:
	li	a0, 56
	vsetvli	a1, zero, e64, m4, ta, mu
	vsrl.vx	v12, v8, a0
	li	a1, 40
	vsrl.vx	v16, v8, a1
	lui	a2, 16
	addiw	a2, a2, -256
	vand.vx	v16, v16, a2
	vor.vv	v12, v16, v12
	vsrl.vi	v16, v8, 24
	lui	a2, 4080
	vand.vx	v16, v16, a2
	vsrl.vi	v20, v8, 8
	li	a2, 255
	slli	a3, a2, 24
	vand.vx	v20, v20, a3
	vor.vv	v16, v20, v16
	vor.vv	v12, v16, v12
	vsll.vi	v16, v8, 8
	slli	a3, a2, 32
	vand.vx	v16, v16, a3
	vsll.vi	v20, v8, 24
	slli	a3, a2, 40
	vand.vx	v20, v20, a3
	vor.vv	v16, v20, v16
	vsll.vx	v20, v8, a0
	vsll.vx	v8, v8, a1
	slli	a0, a2, 48
	vand.vx	v8, v8, a0
	vor.vv	v8, v20, v8
	vor.vv	v8, v8, v16
	vor.vv	v8, v8, v12
	ret
.Lfunc_end0:
	.size	bswap_nvx4i64, .Lfunc_end0-bswap_nvx4i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
