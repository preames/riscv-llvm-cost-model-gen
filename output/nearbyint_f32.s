	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"nearbyint_f32.ll"
	.globl	nearbyint_f32                   # -- Begin function nearbyint_f32
	.p2align	2
	.type	nearbyint_f32,@function
nearbyint_f32:                          # @nearbyint_f32
	.cfi_startproc
# %bb.0:
	tail	nearbyintf@plt
.Lfunc_end0:
	.size	nearbyint_f32, .Lfunc_end0-nearbyint_f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
