	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"fabs_v8f32.ll"
	.globl	fabs_v8f32                      # -- Begin function fabs_v8f32
	.p2align	2
	.type	fabs_v8f32,@function
fabs_v8f32:                             # @fabs_v8f32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e32, m2, ta, mu
	vfabs.v	v8, v8
	ret
.Lfunc_end0:
	.size	fabs_v8f32, .Lfunc_end0-fabs_v8f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
