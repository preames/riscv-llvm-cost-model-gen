	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"umin_v16i32.ll"
	.globl	umin_v16i32                     # -- Begin function umin_v16i32
	.p2align	2
	.type	umin_v16i32,@function
umin_v16i32:                            # @umin_v16i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e32, m4, ta, mu
	vminu.vv	v8, v8, v12
	ret
.Lfunc_end0:
	.size	umin_v16i32, .Lfunc_end0-umin_v16i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
