	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_nvx2i32.ll"
	.globl	cttz_nvx2i32                    # -- Begin function cttz_nvx2i32
	.p2align	2
	.type	cttz_nvx2i32,@function
cttz_nvx2i32:                           # @cttz_nvx2i32
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e32, m1, ta, mu
	vrsub.vi	v9, v8, 0
	vand.vv	v9, v8, v9
	vfwcvt.f.xu.v	v10, v9
	li	a0, 52
	vsetvli	zero, zero, e64, m2, ta, mu
	vsrl.vx	v10, v10, a0
	vsetvli	zero, zero, e32, m1, ta, mu
	vnsrl.wi	v9, v10, 0
	li	a0, 1023
	vsub.vx	v9, v9, a0
	vmseq.vi	v0, v8, 0
	li	a0, 32
	vmerge.vxm	v8, v9, a0, v0
	ret
.Lfunc_end0:
	.size	cttz_nvx2i32, .Lfunc_end0-cttz_nvx2i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
