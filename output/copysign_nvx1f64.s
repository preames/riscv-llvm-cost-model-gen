	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"copysign_nvx1f64.ll"
	.globl	copysign_nvx1f64                # -- Begin function copysign_nvx1f64
	.p2align	2
	.type	copysign_nvx1f64,@function
copysign_nvx1f64:                       # @copysign_nvx1f64
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e64, m1, ta, mu
	vfsgnj.vv	v8, v8, v9
	ret
.Lfunc_end0:
	.size	copysign_nvx1f64, .Lfunc_end0-copysign_nvx1f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
