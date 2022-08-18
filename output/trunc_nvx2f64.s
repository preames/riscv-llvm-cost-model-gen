	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"trunc_nvx2f64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function trunc_nvx2f64
.LCPI0_0:
	.quad	0x4330000000000000              # double 4503599627370496
	.text
	.globl	trunc_nvx2f64
	.p2align	2
	.type	trunc_nvx2f64,@function
trunc_nvx2f64:                          # @trunc_nvx2f64
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	fld	ft0, %lo(.LCPI0_0)(a0)
	vsetvli	a0, zero, e64, m2, ta, mu
	vfabs.v	v10, v8
	vmflt.vf	v0, v10, ft0
	vfcvt.rtz.x.f.v	v10, v8, v0.t
	vfcvt.f.x.v	v10, v10, v0.t
	vfsgnj.vv	v8, v10, v8, v0.t
	ret
.Lfunc_end0:
	.size	trunc_nvx2f64, .Lfunc_end0-trunc_nvx2f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
