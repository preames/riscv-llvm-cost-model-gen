	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"minnum_v4f64.ll"
	.globl	minnum_v4f64                    # -- Begin function minnum_v4f64
	.p2align	2
	.type	minnum_v4f64,@function
minnum_v4f64:                           # @minnum_v4f64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 4, e64, m2, ta, mu
	vfmin.vv	v8, v8, v10
	ret
.Lfunc_end0:
	.size	minnum_v4f64, .Lfunc_end0-minnum_v4f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits