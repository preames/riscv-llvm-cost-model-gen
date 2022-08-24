	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"umin_v8i64.ll"
	.globl	umin_v8i64                      # -- Begin function umin_v8i64
	.p2align	2
	.type	umin_v8i64,@function
umin_v8i64:                             # @umin_v8i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e64, m4, ta, mu
	vminu.vv	v8, v8, v12
	ret
.Lfunc_end0:
	.size	umin_v8i64, .Lfunc_end0-umin_v8i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
