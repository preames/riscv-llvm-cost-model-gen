	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"umax_v16i16.ll"
	.globl	umax_v16i16                     # -- Begin function umax_v16i16
	.p2align	2
	.type	umax_v16i16,@function
umax_v16i16:                            # @umax_v16i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e16, m2, ta, mu
	vmaxu.vv	v8, v8, v10
	ret
.Lfunc_end0:
	.size	umax_v16i16, .Lfunc_end0-umax_v16i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
