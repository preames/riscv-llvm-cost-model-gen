	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"log10_v2f32.ll"
	.globl	log10_v2f32                     # -- Begin function log10_v2f32
	.p2align	2
	.type	log10_v2f32,@function
log10_v2f32:                            # @log10_v2f32
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	csrr	a0, vlenb
	slli	a0, a0, 1
	sub	sp, sp, a0
	csrr	a0, vlenb
	add	a0, sp, a0
	addi	a0, a0, 32
	vs1r.v	v8, (a0)                        # Unknown-size Folded Spill
	vsetivli	zero, 1, e32, mf2, ta, mu
	vslidedown.vi	v9, v8, 1
	vfmv.f.s	fa0, v9
	call	log10f@plt
	vsetivli	zero, 2, e32, mf2, ta, mu
	vfmv.v.f	v8, fa0
	addi	a0, sp, 32
	vs1r.v	v8, (a0)                        # Unknown-size Folded Spill
	csrr	a0, vlenb
	add	a0, sp, a0
	addi	a0, a0, 32
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	vfmv.f.s	fa0, v8
	call	log10f@plt
	vsetivli	zero, 2, e32, mf2, tu, mu
	addi	a0, sp, 32
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	vfmv.s.f	v8, fa0
	csrr	a0, vlenb
	slli	a0, a0, 1
	add	sp, sp, a0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	log10_v2f32, .Lfunc_end0-log10_v2f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
