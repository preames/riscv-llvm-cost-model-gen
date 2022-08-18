	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ceil_v8f64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function ceil_v8f64
.LCPI0_0:
	.quad	0x4330000000000000              # double 4503599627370496
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	ceil_v8f64
	.p2align	2
	.type	ceil_v8f64,@function
ceil_v8f64:                             # @ceil_v8f64
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	fld	ft0, %lo(.LCPI0_0)(a0)
	vsetivli	zero, 8, e64, m4, ta, mu
	vfabs.v	v16, v8
	vmflt.vf	v12, v16, ft0
	vmv1r.v	v0, v12
	vfcvt.rtz.x.f.v	v16, v8, v0.t
	vfcvt.f.x.v	v16, v16, v0.t
	lui	a0, %hi(.LCPI0_1)
	fld	ft0, %lo(.LCPI0_1)(a0)
	vsetvli	zero, zero, e64, m4, ta, ma
	vmflt.vv	v13, v16, v8, v0.t
	vsetvli	zero, zero, e64, m4, ta, mu
	vmv1r.v	v0, v13
	vfadd.vf	v16, v16, ft0, v0.t
	vmv1r.v	v0, v12
	vfsgnj.vv	v8, v16, v8, v0.t
	ret
.Lfunc_end0:
	.size	ceil_v8f64, .Lfunc_end0-ceil_v8f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
