	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_v8i16.ll"
	.globl	cttz_v8i16                      # -- Begin function cttz_v8i16
	.p2align	2
	.type	cttz_v8i16,@function
cttz_v8i16:                             # @cttz_v8i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e16, m1, ta, mu
	vrsub.vi	v9, v8, 0
	vand.vv	v9, v8, v9
	vfwcvt.f.xu.v	v10, v9
	vnsrl.wi	v9, v10, 23
	li	a0, 127
	vsub.vx	v9, v9, a0
	vmseq.vi	v0, v8, 0
	li	a0, 16
	vmerge.vxm	v8, v9, a0, v0
	ret
.Lfunc_end0:
	.size	cttz_v8i16, .Lfunc_end0-cttz_v8i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
