	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_nvx16i32.ll"
	.globl	cttz_nvx16i32                   # -- Begin function cttz_nvx16i32
	.p2align	2
	.type	cttz_nvx16i32,@function
cttz_nvx16i32:                          # @cttz_nvx16i32
	.cfi_startproc
# %bb.0:
	li	a0, 1
	vsetvli	a1, zero, e32, m8, ta, mu
	vsub.vx	v16, v8, a0
	vnot.v	v8, v8
	vand.vv	v8, v8, v16
	vsrl.vi	v16, v8, 1
	lui	a0, 349525
	addiw	a0, a0, 1365
	vand.vx	v16, v16, a0
	vsub.vv	v8, v8, v16
	lui	a0, 209715
	addiw	a0, a0, 819
	vand.vx	v16, v8, a0
	vsrl.vi	v8, v8, 2
	vand.vx	v8, v8, a0
	vadd.vv	v8, v16, v8
	vsrl.vi	v16, v8, 4
	vadd.vv	v8, v8, v16
	lui	a0, 61681
	addiw	a0, a0, -241
	vand.vx	v8, v8, a0
	lui	a0, 4112
	addiw	a0, a0, 257
	vmul.vx	v8, v8, a0
	vsrl.vi	v8, v8, 24
	ret
.Lfunc_end0:
	.size	cttz_nvx16i32, .Lfunc_end0-cttz_nvx16i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
