	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_v2i16.ll"
	.globl	ctlz_v2i16                      # -- Begin function ctlz_v2i16
	.p2align	2
	.type	ctlz_v2i16,@function
ctlz_v2i16:                             # @ctlz_v2i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 2, e16, mf4, ta, mu
	vfwcvt.f.xu.v	v9, v8
	vnsrl.wi	v9, v9, 23
	li	a0, 142
	vrsub.vx	v9, v9, a0
	vmseq.vi	v0, v8, 0
	li	a0, 16
	vmerge.vxm	v8, v9, a0, v0
	ret
.Lfunc_end0:
	.size	ctlz_v2i16, .Lfunc_end0-ctlz_v2i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
