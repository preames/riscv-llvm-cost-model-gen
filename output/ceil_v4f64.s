	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ceil_v4f64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function ceil_v4f64
.LCPI0_0:
	.quad	0x4330000000000000              # double 4503599627370496
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	ceil_v4f64
	.p2align	2
	.type	ceil_v4f64,@function
ceil_v4f64:                             # @ceil_v4f64
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	fld	ft0, %lo(.LCPI0_0)(a0)
	vsetivli	zero, 4, e64, m2, ta, mu
	vfabs.v	v12, v8
	vmflt.vf	v10, v12, ft0
	vmv1r.v	v0, v10
	vfcvt.rtz.x.f.v	v12, v8, v0.t
	lui	a0, %hi(.LCPI0_1)
	fld	ft0, %lo(.LCPI0_1)(a0)
	vfcvt.f.x.v	v12, v12, v0.t
	vmv1r.v	v11, v10
	vmflt.vv	v11, v12, v8, v0.t
	vmv1r.v	v0, v11
	vfadd.vf	v12, v12, ft0, v0.t
	vmv1r.v	v0, v10
	vfsgnj.vv	v8, v12, v8, v0.t
	ret
.Lfunc_end0:
	.size	ceil_v4f64, .Lfunc_end0-ceil_v4f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
