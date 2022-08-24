	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"copysign_f64.ll"
	.globl	copysign_f64                    # -- Begin function copysign_f64
	.p2align	2
	.type	copysign_f64,@function
copysign_f64:                           # @copysign_f64
	.cfi_startproc
# %bb.0:
	fsgnj.d	fa0, fa0, fa1
	ret
.Lfunc_end0:
	.size	copysign_f64, .Lfunc_end0-copysign_f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
