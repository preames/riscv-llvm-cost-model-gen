	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ceil_nvx16f32.ll"
	.section	.sdata,"aw",@progbits
	.p2align	2                               # -- Begin function ceil_nvx16f32
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
.LCPI0_1:
	.word	0x3f800000                      # float 1
	.text
	.globl	ceil_nvx16f32
	.p2align	2
	.type	ceil_nvx16f32,@function
ceil_nvx16f32:                          # @ceil_nvx16f32
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	flw	ft0, %lo(.LCPI0_0)(a0)
	vsetvli	a0, zero, e32, m8, ta, mu
	vfabs.v	v24, v8
	vmflt.vf	v16, v24, ft0
	vmv1r.v	v0, v16
	vfcvt.rtz.x.f.v	v24, v8, v0.t
	vfcvt.f.x.v	v24, v24, v0.t
	lui	a0, %hi(.LCPI0_1)
	flw	ft0, %lo(.LCPI0_1)(a0)
	vsetvli	zero, zero, e32, m8, ta, ma
	vmflt.vv	v17, v24, v8, v0.t
	vsetvli	zero, zero, e32, m8, ta, mu
	vmv1r.v	v0, v17
	vfadd.vf	v24, v24, ft0, v0.t
	vmv1r.v	v0, v16
	vfsgnj.vv	v8, v24, v8, v0.t
	ret
.Lfunc_end0:
	.size	ceil_nvx16f32, .Lfunc_end0-ceil_nvx16f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
