	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctpop_nvx2i8.ll"
	.globl	ctpop_nvx2i8                    # -- Begin function ctpop_nvx2i8
	.p2align	2
	.type	ctpop_nvx2i8,@function
ctpop_nvx2i8:                           # @ctpop_nvx2i8
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e8, mf4, ta, mu
	vsrl.vi	v9, v8, 1
	li	a0, 85
	vand.vx	v9, v9, a0
	vsub.vv	v8, v8, v9
	li	a0, 51
	vand.vx	v9, v8, a0
	vsrl.vi	v8, v8, 2
	vand.vx	v8, v8, a0
	vadd.vv	v8, v9, v8
	vsrl.vi	v9, v8, 4
	vadd.vv	v8, v8, v9
	vand.vi	v8, v8, 15
	ret
.Lfunc_end0:
	.size	ctpop_nvx2i8, .Lfunc_end0-ctpop_nvx2i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
