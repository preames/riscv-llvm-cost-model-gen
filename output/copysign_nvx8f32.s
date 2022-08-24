	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"copysign_nvx8f32.ll"
	.globl	copysign_nvx8f32                # -- Begin function copysign_nvx8f32
	.p2align	2
	.type	copysign_nvx8f32,@function
copysign_nvx8f32:                       # @copysign_nvx8f32
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e32, m4, ta, mu
	vfsgnj.vv	v8, v8, v12
	ret
.Lfunc_end0:
	.size	copysign_nvx8f32, .Lfunc_end0-copysign_nvx8f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
