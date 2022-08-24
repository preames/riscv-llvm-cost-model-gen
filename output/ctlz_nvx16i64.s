	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_nvx16i64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function ctlz_nvx16i64
.LCPI0_0:
	.quad	6148914691236517205             # 0x5555555555555555
.LCPI0_1:
	.quad	3689348814741910323             # 0x3333333333333333
.LCPI0_2:
	.quad	1085102592571150095             # 0xf0f0f0f0f0f0f0f
.LCPI0_3:
	.quad	72340172838076673               # 0x101010101010101
	.text
	.globl	ctlz_nvx16i64
	.p2align	2
	.type	ctlz_nvx16i64,@function
ctlz_nvx16i64:                          # @ctlz_nvx16i64
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e64, m8, ta, mu
	vsrl.vi	v24, v8, 1
	vor.vv	v8, v8, v24
	vsrl.vi	v24, v8, 2
	vor.vv	v8, v8, v24
	vsrl.vi	v24, v8, 4
	vor.vv	v8, v8, v24
	vsrl.vi	v24, v8, 8
	vor.vv	v8, v8, v24
	vsrl.vi	v24, v8, 16
	vor.vv	v8, v8, v24
	li	a0, 32
	vsrl.vx	v24, v8, a0
	vor.vv	v8, v8, v24
	vnot.v	v8, v8
	lui	a1, %hi(.LCPI0_0)
	ld	a1, %lo(.LCPI0_0)(a1)
	lui	a2, %hi(.LCPI0_1)
	ld	a2, %lo(.LCPI0_1)(a2)
	vsrl.vi	v24, v8, 1
	vand.vx	v24, v24, a1
	vsub.vv	v8, v8, v24
	vand.vx	v24, v8, a2
	vsrl.vi	v8, v8, 2
	vand.vx	v8, v8, a2
	vadd.vv	v8, v24, v8
	lui	a3, %hi(.LCPI0_2)
	ld	a3, %lo(.LCPI0_2)(a3)
	lui	a4, %hi(.LCPI0_3)
	ld	a4, %lo(.LCPI0_3)(a4)
	vsrl.vi	v24, v8, 4
	vadd.vv	v8, v8, v24
	vand.vx	v8, v8, a3
	vmul.vx	v8, v8, a4
	li	a5, 56
	vsrl.vx	v8, v8, a5
	vsrl.vi	v24, v16, 1
	vor.vv	v16, v16, v24
	vsrl.vi	v24, v16, 2
	vor.vv	v16, v16, v24
	vsrl.vi	v24, v16, 4
	vor.vv	v16, v16, v24
	vsrl.vi	v24, v16, 8
	vor.vv	v16, v16, v24
	vsrl.vi	v24, v16, 16
	vor.vv	v16, v16, v24
	vsrl.vx	v24, v16, a0
	vor.vv	v16, v16, v24
	vnot.v	v16, v16
	vsrl.vi	v24, v16, 1
	vand.vx	v24, v24, a1
	vsub.vv	v16, v16, v24
	vand.vx	v24, v16, a2
	vsrl.vi	v16, v16, 2
	vand.vx	v16, v16, a2
	vadd.vv	v16, v24, v16
	vsrl.vi	v24, v16, 4
	vadd.vv	v16, v16, v24
	vand.vx	v16, v16, a3
	vmul.vx	v16, v16, a4
	vsrl.vx	v16, v16, a5
	ret
.Lfunc_end0:
	.size	ctlz_nvx16i64, .Lfunc_end0-ctlz_nvx16i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
