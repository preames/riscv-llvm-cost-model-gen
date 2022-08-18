	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ceil_v2f32.ll"
	.section	.sdata,"aw",@progbits
	.p2align	2                               # -- Begin function ceil_v2f32
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
.LCPI0_1:
	.word	0x3f800000                      # float 1
	.text
	.globl	ceil_v2f32
	.p2align	2
	.type	ceil_v2f32,@function
ceil_v2f32:                             # @ceil_v2f32
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	flw	ft0, %lo(.LCPI0_0)(a0)
	vsetivli	zero, 2, e32, mf2, ta, mu
	vfabs.v	v9, v8
	vmflt.vf	v9, v9, ft0
	vmv1r.v	v0, v9
	vfcvt.rtz.x.f.v	v10, v8, v0.t
	vfcvt.f.x.v	v10, v10, v0.t
	lui	a0, %hi(.LCPI0_1)
	flw	ft0, %lo(.LCPI0_1)(a0)
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmflt.vv	v0, v10, v8, v0.t
	vsetvli	zero, zero, e32, mf2, ta, mu
	vfadd.vf	v10, v10, ft0, v0.t
	vmv1r.v	v0, v9
	vfsgnj.vv	v8, v10, v8, v0.t
	ret
.Lfunc_end0:
	.size	ceil_v2f32, .Lfunc_end0-ceil_v2f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
