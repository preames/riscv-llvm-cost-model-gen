	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bitreverse_v2i64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function bitreverse_v2i64
.LCPI0_0:
	.quad	1085102592571150095             # 0xf0f0f0f0f0f0f0f
.LCPI0_1:
	.quad	3689348814741910323             # 0x3333333333333333
.LCPI0_2:
	.quad	6148914691236517205             # 0x5555555555555555
	.text
	.globl	bitreverse_v2i64
	.p2align	2
	.type	bitreverse_v2i64,@function
bitreverse_v2i64:                       # @bitreverse_v2i64
	.cfi_startproc
# %bb.0:
	li	a0, 56
	vsetivli	zero, 2, e64, m1, ta, mu
	vsrl.vx	v9, v8, a0
	li	a1, 40
	vsrl.vx	v10, v8, a1
	lui	a2, 16
	addiw	a2, a2, -256
	vand.vx	v10, v10, a2
	vor.vv	v9, v10, v9
	vsrl.vi	v10, v8, 24
	lui	a2, 4080
	vand.vx	v10, v10, a2
	vsrl.vi	v11, v8, 8
	li	a2, 255
	slli	a3, a2, 24
	vand.vx	v11, v11, a3
	vor.vv	v10, v11, v10
	vor.vv	v9, v10, v9
	vsll.vi	v10, v8, 8
	slli	a3, a2, 32
	vand.vx	v10, v10, a3
	vsll.vi	v11, v8, 24
	slli	a3, a2, 40
	vand.vx	v11, v11, a3
	vor.vv	v10, v11, v10
	vsll.vx	v11, v8, a0
	vsll.vx	v8, v8, a1
	slli	a0, a2, 48
	vand.vx	v8, v8, a0
	vor.vv	v8, v11, v8
	lui	a0, %hi(.LCPI0_0)
	ld	a0, %lo(.LCPI0_0)(a0)
	vor.vv	v8, v8, v10
	vor.vv	v8, v8, v9
	vsrl.vi	v9, v8, 4
	vand.vx	v9, v9, a0
	vand.vx	v8, v8, a0
	lui	a0, %hi(.LCPI0_1)
	ld	a0, %lo(.LCPI0_1)(a0)
	vsll.vi	v8, v8, 4
	vor.vv	v8, v9, v8
	vsrl.vi	v9, v8, 2
	vand.vx	v9, v9, a0
	vand.vx	v8, v8, a0
	lui	a0, %hi(.LCPI0_2)
	ld	a0, %lo(.LCPI0_2)(a0)
	vsll.vi	v8, v8, 2
	vor.vv	v8, v9, v8
	vsrl.vi	v9, v8, 1
	vand.vx	v9, v9, a0
	vand.vx	v8, v8, a0
	vadd.vv	v8, v8, v8
	vor.vv	v8, v9, v8
	ret
.Lfunc_end0:
	.size	bitreverse_v2i64, .Lfunc_end0-bitreverse_v2i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
