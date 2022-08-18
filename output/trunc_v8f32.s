	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"trunc_v8f32.ll"
	.section	.sdata,"aw",@progbits
	.p2align	2                               # -- Begin function trunc_v8f32
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
	.text
	.globl	trunc_v8f32
	.p2align	2
	.type	trunc_v8f32,@function
trunc_v8f32:                            # @trunc_v8f32
	.cfi_startproc
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	flw	ft0, %lo(.LCPI0_0)(a0)
	vsetivli	zero, 8, e32, m2, ta, mu
	vfabs.v	v10, v8
	vmflt.vf	v0, v10, ft0
	vfcvt.rtz.x.f.v	v10, v8, v0.t
	vfcvt.f.x.v	v10, v10, v0.t
	vfsgnj.vv	v8, v10, v8, v0.t
	ret
.Lfunc_end0:
	.size	trunc_v8f32, .Lfunc_end0-trunc_v8f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
