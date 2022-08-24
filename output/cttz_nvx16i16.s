	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_nvx16i16.ll"
	.globl	cttz_nvx16i16                   # -- Begin function cttz_nvx16i16
	.p2align	2
	.type	cttz_nvx16i16,@function
cttz_nvx16i16:                          # @cttz_nvx16i16
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e16, m4, ta, mu
	vrsub.vi	v12, v8, 0
	vand.vv	v12, v8, v12
	vfwcvt.f.xu.v	v16, v12
	vnsrl.wi	v12, v16, 23
	li	a0, 127
	vsub.vx	v12, v12, a0
	vmseq.vi	v0, v8, 0
	li	a0, 16
	vmerge.vxm	v8, v12, a0, v0
	ret
.Lfunc_end0:
	.size	cttz_nvx16i16, .Lfunc_end0-cttz_nvx16i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
