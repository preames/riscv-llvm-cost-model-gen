	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_v4i64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function cttz_v4i64
.LCPI0_0:
	.quad	6148914691236517205             # 0x5555555555555555
.LCPI0_1:
	.quad	3689348814741910323             # 0x3333333333333333
.LCPI0_2:
	.quad	1085102592571150095             # 0xf0f0f0f0f0f0f0f
.LCPI0_3:
	.quad	72340172838076673               # 0x101010101010101
	.text
	.globl	cttz_v4i64
	.p2align	2
	.type	cttz_v4i64,@function
cttz_v4i64:                             # @cttz_v4i64
	.cfi_startproc
# %bb.0:
	li	a0, 1
	vsetivli	zero, 4, e64, m2, ta, mu
	vsub.vx	v10, v8, a0
	vnot.v	v8, v8
	vand.vv	v8, v8, v10
	lui	a0, %hi(.LCPI0_0)
	ld	a0, %lo(.LCPI0_0)(a0)
	lui	a1, %hi(.LCPI0_1)
	ld	a1, %lo(.LCPI0_1)(a1)
	vsrl.vi	v10, v8, 1
	vand.vx	v10, v10, a0
	vsub.vv	v8, v8, v10
	vand.vx	v10, v8, a1
	vsrl.vi	v8, v8, 2
	vand.vx	v8, v8, a1
	vadd.vv	v8, v10, v8
	lui	a0, %hi(.LCPI0_2)
	ld	a0, %lo(.LCPI0_2)(a0)
	lui	a1, %hi(.LCPI0_3)
	ld	a1, %lo(.LCPI0_3)(a1)
	vsrl.vi	v10, v8, 4
	vadd.vv	v8, v8, v10
	vand.vx	v8, v8, a0
	vmul.vx	v8, v8, a1
	li	a0, 56
	vsrl.vx	v8, v8, a0
	ret
.Lfunc_end0:
	.size	cttz_v4i64, .Lfunc_end0-cttz_v4i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
