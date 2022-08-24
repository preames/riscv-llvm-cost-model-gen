	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_nvx4i8.ll"
	.globl	cttz_nvx4i8                     # -- Begin function cttz_nvx4i8
	.p2align	2
	.type	cttz_nvx4i8,@function
cttz_nvx4i8:                            # @cttz_nvx4i8
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e8, mf2, ta, mu
	vrsub.vi	v9, v8, 0
	vand.vv	v9, v8, v9
	vsetvli	zero, zero, e32, m2, ta, mu
	vzext.vf4	v10, v9
	vfcvt.f.xu.v	v10, v10
	vsetvli	zero, zero, e16, m1, ta, mu
	vnsrl.wi	v9, v10, 23
	vsetvli	zero, zero, e8, mf2, ta, mu
	vnsrl.wi	v9, v9, 0
	li	a0, 127
	vmseq.vi	v0, v8, 0
	vsub.vx	v8, v9, a0
	vmerge.vim	v8, v8, 8, v0
	ret
.Lfunc_end0:
	.size	cttz_nvx4i8, .Lfunc_end0-cttz_nvx4i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
