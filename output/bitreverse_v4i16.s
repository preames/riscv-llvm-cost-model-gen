	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bitreverse_v4i16.ll"
	.globl	bitreverse_v4i16                # -- Begin function bitreverse_v4i16
	.p2align	2
	.type	bitreverse_v4i16,@function
bitreverse_v4i16:                       # @bitreverse_v4i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 4, e16, mf2, ta, mu
	vsrl.vi	v9, v8, 8
	vsll.vi	v8, v8, 8
	vor.vv	v8, v8, v9
	vsrl.vi	v9, v8, 4
	lui	a0, 1
	addiw	a0, a0, -241
	vand.vx	v9, v9, a0
	vand.vx	v8, v8, a0
	vsll.vi	v8, v8, 4
	vor.vv	v8, v9, v8
	vsrl.vi	v9, v8, 2
	lui	a0, 3
	addiw	a0, a0, 819
	vand.vx	v9, v9, a0
	vand.vx	v8, v8, a0
	vsll.vi	v8, v8, 2
	vor.vv	v8, v9, v8
	vsrl.vi	v9, v8, 1
	lui	a0, 5
	addiw	a0, a0, 1365
	vand.vx	v9, v9, a0
	vand.vx	v8, v8, a0
	vadd.vv	v8, v8, v8
	vor.vv	v8, v9, v8
	ret
.Lfunc_end0:
	.size	bitreverse_v4i16, .Lfunc_end0-bitreverse_v4i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
