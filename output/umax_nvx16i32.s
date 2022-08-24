	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"umax_nvx16i32.ll"
	.globl	umax_nvx16i32                   # -- Begin function umax_nvx16i32
	.p2align	2
	.type	umax_nvx16i32,@function
umax_nvx16i32:                          # @umax_nvx16i32
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e32, m8, ta, mu
	vmaxu.vv	v8, v8, v16
	ret
.Lfunc_end0:
	.size	umax_nvx16i32, .Lfunc_end0-umax_nvx16i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
