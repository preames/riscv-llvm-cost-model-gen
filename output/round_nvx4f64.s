	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"round_nvx4f64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function round_nvx4f64
.LCPI0_0:
	.quad	0x4330000000000000              # double 4503599627370496
.LCPI0_1:
	.quad	0x3fdfffffffffffff              # double 0.49999999999999994
	.text
	.globl	round_nvx4f64
	.p2align	2
	.type	round_nvx4f64,@function
round_nvx4f64:                          # @round_nvx4f64
	.cfi_startproc
# %bb.0:
	vsetvli	a0, zero, e64, m4, ta, mu
	lui	a0, %hi(.LCPI0_0)
	fld	ft0, %lo(.LCPI0_0)(a0)
	lui	a0, %hi(.LCPI0_1)
	fld	ft1, %lo(.LCPI0_1)(a0)
	vfabs.v	v12, v8
	vmflt.vf	v0, v12, ft0
	vfadd.vf	v12, v12, ft1, v0.t
	vfcvt.rtz.x.f.v	v12, v12, v0.t
	vfcvt.f.x.v	v12, v12, v0.t
	vfsgnj.vv	v8, v12, v8, v0.t
	ret
.Lfunc_end0:
	.size	round_nvx4f64, .Lfunc_end0-round_nvx4f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
