	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_nvx8i16.ll"
	.globl	cttz_nvx8i16                    # -- Begin function cttz_nvx8i16
	.p2align	2
	.type	cttz_nvx8i16,@function
cttz_nvx8i16:                           # @cttz_nvx8i16
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e16, m2, ta, mu
	vrsub.vi	v10, v8, 0
	vand.vv	v10, v8, v10
	vfwcvt.f.xu.v	v12, v10
	vnsrl.wi	v10, v12, 23
	li	a0, 127
	vsub.vx	v10, v10, a0
	vmseq.vi	v0, v8, 0
	li	a0, 16
	vmerge.vxm	v8, v10, a0, v0
	ret
.Lfunc_end0:
	.size	cttz_nvx8i16, .Lfunc_end0-cttz_nvx8i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
