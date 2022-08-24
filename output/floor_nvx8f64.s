	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"floor_nvx8f64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function floor_nvx8f64
.LCPI0_0:
	.quad	0x4330000000000000              # double 4503599627370496
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	floor_nvx8f64
	.p2align	2
	.type	floor_nvx8f64,@function
floor_nvx8f64:                          # @floor_nvx8f64
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	fld	ft0, %lo(.LCPI0_0)(a0)
	vsetvli	a0, zero, e64, m8, ta, mu
	vfabs.v	v24, v8
	vmflt.vf	v16, v24, ft0
	vmv1r.v	v0, v16
	vfcvt.rtz.x.f.v	v24, v8, v0.t
	lui	a0, %hi(.LCPI0_1)
	fld	ft0, %lo(.LCPI0_1)(a0)
	vfcvt.f.x.v	v24, v24, v0.t
	vmv1r.v	v17, v16
	vmflt.vv	v17, v8, v24, v0.t
	vmv1r.v	v0, v17
	vfsub.vf	v24, v24, ft0, v0.t
	vmv1r.v	v0, v16
	vfsgnj.vv	v8, v24, v8, v0.t
	ret
.Lfunc_end0:
	.size	floor_nvx8f64, .Lfunc_end0-floor_nvx8f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
