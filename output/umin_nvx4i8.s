	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"umin_nvx4i8.ll"
	.globl	umin_nvx4i8                     # -- Begin function umin_nvx4i8
	.p2align	2
	.type	umin_nvx4i8,@function
umin_nvx4i8:                            # @umin_nvx4i8
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e8, mf2, ta, mu
	vminu.vv	v8, v8, v9
	ret
.Lfunc_end0:
	.size	umin_nvx4i8, .Lfunc_end0-umin_nvx4i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
