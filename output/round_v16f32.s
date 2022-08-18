	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"round_v16f32.ll"
	.section	.sdata,"aw",@progbits
	.p2align	2                               # -- Begin function round_v16f32
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
.LCPI0_1:
	.word	0x3effffff                      # float 0.49999997
	.text
	.globl	round_v16f32
	.p2align	2
	.type	round_v16f32,@function
round_v16f32:                           # @round_v16f32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e32, m4, ta, mu
	lui	a0, %hi(.LCPI0_0)
	flw	ft0, %lo(.LCPI0_0)(a0)
	lui	a0, %hi(.LCPI0_1)
	flw	ft1, %lo(.LCPI0_1)(a0)
	vfabs.v	v12, v8
	vmflt.vf	v0, v12, ft0
	vfadd.vf	v12, v12, ft1, v0.t
	vfcvt.rtz.x.f.v	v12, v12, v0.t
	vfcvt.f.x.v	v12, v12, v0.t
	vfsgnj.vv	v8, v12, v8, v0.t
	ret
.Lfunc_end0:
	.size	round_v16f32, .Lfunc_end0-round_v16f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
