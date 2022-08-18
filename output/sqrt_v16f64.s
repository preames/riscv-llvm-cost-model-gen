	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"sqrt_v16f64.ll"
	.globl	sqrt_v16f64                     # -- Begin function sqrt_v16f64
	.p2align	2
	.type	sqrt_v16f64,@function
sqrt_v16f64:                            # @sqrt_v16f64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e64, m8, ta, mu
	vfsqrt.v	v8, v8
	ret
.Lfunc_end0:
	.size	sqrt_v16f64, .Lfunc_end0-sqrt_v16f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
