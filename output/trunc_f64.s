	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"trunc_f64.ll"
	.globl	trunc_f64                       # -- Begin function trunc_f64
	.p2align	2
	.type	trunc_f64,@function
trunc_f64:                              # @trunc_f64
	.cfi_startproc
# %bb.0:
	tail	trunc@plt
.Lfunc_end0:
	.size	trunc_f64, .Lfunc_end0-trunc_f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
