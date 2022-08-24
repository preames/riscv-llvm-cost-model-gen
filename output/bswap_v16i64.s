	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_v16i64.ll"
	.globl	bswap_v16i64                    # -- Begin function bswap_v16i64
	.p2align	2
	.type	bswap_v16i64,@function
bswap_v16i64:                           # @bswap_v16i64
	.cfi_startproc
# %bb.0:
	li	a0, 56
	vsetivli	zero, 16, e64, m8, ta, mu
	vsrl.vx	v16, v8, a0
	li	a1, 40
	vsrl.vx	v24, v8, a1
	lui	a2, 16
	addiw	a2, a2, -256
	vand.vx	v24, v24, a2
	vor.vv	v16, v24, v16
	vsrl.vi	v24, v8, 24
	lui	a2, 4080
	vand.vx	v24, v24, a2
	vsrl.vi	v0, v8, 8
	li	a2, 255
	slli	a3, a2, 24
	vand.vx	v0, v0, a3
	vor.vv	v24, v0, v24
	vor.vv	v16, v24, v16
	vsll.vi	v24, v8, 8
	slli	a3, a2, 32
	vand.vx	v24, v24, a3
	vsll.vi	v0, v8, 24
	slli	a3, a2, 40
	vand.vx	v0, v0, a3
	vor.vv	v24, v0, v24
	vsll.vx	v0, v8, a0
	vsll.vx	v8, v8, a1
	slli	a0, a2, 48
	vand.vx	v8, v8, a0
	vor.vv	v8, v0, v8
	vor.vv	v8, v8, v24
	vor.vv	v8, v8, v16
	ret
.Lfunc_end0:
	.size	bswap_v16i64, .Lfunc_end0-bswap_v16i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
