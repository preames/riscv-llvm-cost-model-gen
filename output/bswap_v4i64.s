	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_v4i64.ll"
	.globl	bswap_v4i64                     # -- Begin function bswap_v4i64
	.p2align	2
	.type	bswap_v4i64,@function
bswap_v4i64:                            # @bswap_v4i64
	.cfi_startproc
# %bb.0:
	li	a0, 56
	vsetivli	zero, 4, e64, m2, ta, mu
	vsrl.vx	v10, v8, a0
	li	a1, 40
	vsrl.vx	v12, v8, a1
	lui	a2, 16
	addiw	a2, a2, -256
	vand.vx	v12, v12, a2
	vor.vv	v10, v12, v10
	vsrl.vi	v12, v8, 24
	lui	a2, 4080
	vand.vx	v12, v12, a2
	vsrl.vi	v14, v8, 8
	li	a2, 255
	slli	a3, a2, 24
	vand.vx	v14, v14, a3
	vor.vv	v12, v14, v12
	vor.vv	v10, v12, v10
	vsll.vi	v12, v8, 8
	slli	a3, a2, 32
	vand.vx	v12, v12, a3
	vsll.vi	v14, v8, 24
	slli	a3, a2, 40
	vand.vx	v14, v14, a3
	vor.vv	v12, v14, v12
	vsll.vx	v14, v8, a0
	vsll.vx	v8, v8, a1
	slli	a0, a2, 48
	vand.vx	v8, v8, a0
	vor.vv	v8, v14, v8
	vor.vv	v8, v8, v12
	vor.vv	v8, v8, v10
	ret
.Lfunc_end0:
	.size	bswap_v4i64, .Lfunc_end0-bswap_v4i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
