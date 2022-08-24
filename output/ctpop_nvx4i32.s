	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctpop_nvx4i32.ll"
	.globl	ctpop_nvx4i32                   # -- Begin function ctpop_nvx4i32
	.p2align	2
	.type	ctpop_nvx4i32,@function
ctpop_nvx4i32:                          # @ctpop_nvx4i32
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e32, m2, ta, mu
	vsrl.vi	v10, v8, 1
	lui	a0, 349525
	addiw	a0, a0, 1365
	vand.vx	v10, v10, a0
	vsub.vv	v8, v8, v10
	lui	a0, 209715
	addiw	a0, a0, 819
	vand.vx	v10, v8, a0
	vsrl.vi	v8, v8, 2
	vand.vx	v8, v8, a0
	vadd.vv	v8, v10, v8
	vsrl.vi	v10, v8, 4
	vadd.vv	v8, v8, v10
	lui	a0, 61681
	addiw	a0, a0, -241
	vand.vx	v8, v8, a0
	lui	a0, 4112
	addiw	a0, a0, 257
	vmul.vx	v8, v8, a0
	vsrl.vi	v8, v8, 24
	ret
.Lfunc_end0:
	.size	ctpop_nvx4i32, .Lfunc_end0-ctpop_nvx4i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
