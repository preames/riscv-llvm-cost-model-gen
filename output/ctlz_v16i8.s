	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_v16i8.ll"
	.globl	ctlz_v16i8                      # -- Begin function ctlz_v16i8
	.p2align	2
	.type	ctlz_v16i8,@function
ctlz_v16i8:                             # @ctlz_v16i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e32, m4, ta, mu
	vzext.vf4	v12, v8
	vfcvt.f.xu.v	v12, v12
	vsetvli	zero, zero, e16, m2, ta, mu
	vnsrl.wi	v10, v12, 23
	vsetvli	zero, zero, e8, m1, ta, mu
	vnsrl.wi	v9, v10, 0
	li	a0, 134
	vmseq.vi	v0, v8, 0
	vrsub.vx	v8, v9, a0
	vmerge.vim	v8, v8, 8, v0
	ret
.Lfunc_end0:
	.size	ctlz_v16i8, .Lfunc_end0-ctlz_v16i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
