	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_v16i32.ll"
	.globl	ctlz_v16i32                     # -- Begin function ctlz_v16i32
	.p2align	2
	.type	ctlz_v16i32,@function
ctlz_v16i32:                            # @ctlz_v16i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e32, m4, ta, mu
	vfwcvt.f.xu.v	v16, v8
	li	a0, 52
	vnsrl.wx	v12, v16, a0
	li	a0, 1054
	vrsub.vx	v12, v12, a0
	vmseq.vi	v0, v8, 0
	li	a0, 32
	vmerge.vxm	v8, v12, a0, v0
	ret
.Lfunc_end0:
	.size	ctlz_v16i32, .Lfunc_end0-ctlz_v16i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
