	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"floor_nvx4f32.ll"
	.section	.sdata,"aw",@progbits
	.p2align	2                               # -- Begin function floor_nvx4f32
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
.LCPI0_1:
	.word	0x3f800000                      # float 1
	.text
	.globl	floor_nvx4f32
	.p2align	2
	.type	floor_nvx4f32,@function
floor_nvx4f32:                          # @floor_nvx4f32
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	flw	ft0, %lo(.LCPI0_0)(a0)
	vsetvli	a0, zero, e32, m2, ta, mu
	vfabs.v	v12, v8
	vmflt.vf	v10, v12, ft0
	vmv1r.v	v0, v10
	vfcvt.rtz.x.f.v	v12, v8, v0.t
	lui	a0, %hi(.LCPI0_1)
	flw	ft0, %lo(.LCPI0_1)(a0)
	vfcvt.f.x.v	v12, v12, v0.t
	vmv1r.v	v11, v10
	vmflt.vv	v11, v8, v12, v0.t
	vmv1r.v	v0, v11
	vfsub.vf	v12, v12, ft0, v0.t
	vmv1r.v	v0, v10
	vfsgnj.vv	v8, v12, v8, v0.t
	ret
.Lfunc_end0:
	.size	floor_nvx4f32, .Lfunc_end0-floor_nvx4f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
