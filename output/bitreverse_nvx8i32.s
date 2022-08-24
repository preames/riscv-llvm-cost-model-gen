	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bitreverse_nvx8i32.ll"
	.globl	bitreverse_nvx8i32              # -- Begin function bitreverse_nvx8i32
	.p2align	2
	.type	bitreverse_nvx8i32,@function
bitreverse_nvx8i32:                     # @bitreverse_nvx8i32
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e32, m4, ta, mu
	vsrl.vi	v12, v8, 8
	lui	a0, 16
	addiw	a0, a0, -256
	vand.vx	v12, v12, a0
	vsrl.vi	v16, v8, 24
	vor.vv	v12, v12, v16
	vsll.vi	v16, v8, 8
	lui	a0, 4080
	vand.vx	v16, v16, a0
	vsll.vi	v8, v8, 24
	vor.vv	v8, v8, v16
	vor.vv	v8, v8, v12
	vsrl.vi	v12, v8, 4
	lui	a0, 61681
	addiw	a0, a0, -241
	vand.vx	v12, v12, a0
	vand.vx	v8, v8, a0
	vsll.vi	v8, v8, 4
	vor.vv	v8, v12, v8
	vsrl.vi	v12, v8, 2
	lui	a0, 209715
	addiw	a0, a0, 819
	vand.vx	v12, v12, a0
	vand.vx	v8, v8, a0
	vsll.vi	v8, v8, 2
	vor.vv	v8, v12, v8
	vsrl.vi	v12, v8, 1
	lui	a0, 349525
	addiw	a0, a0, 1365
	vand.vx	v12, v12, a0
	vand.vx	v8, v8, a0
	vadd.vv	v8, v8, v8
	vor.vv	v8, v12, v8
	ret
.Lfunc_end0:
	.size	bitreverse_nvx8i32, .Lfunc_end0-bitreverse_nvx8i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
