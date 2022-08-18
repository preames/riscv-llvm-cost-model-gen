	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"log2_v4f64.ll"
	.globl	log2_v4f64                      # -- Begin function log2_v4f64
	.p2align	2
	.type	log2_v4f64,@function
log2_v4f64:                             # @log2_v4f64
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	csrr	a0, vlenb
	slli	a0, a0, 1
	sub	sp, sp, a0
	andi	sp, sp, -32
	addi	a0, sp, 80
	vs2r.v	v8, (a0)                        # Unknown-size Folded Spill
	vsetivli	zero, 0, e64, m2, ta, mu
	vfmv.f.s	fa0, v8
	call	log2@plt
	fsd	fa0, 32(sp)
	vsetivli	zero, 1, e64, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 3
	vfmv.f.s	fa0, v8
	call	log2@plt
	fsd	fa0, 56(sp)
	vsetivli	zero, 1, e64, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 2
	vfmv.f.s	fa0, v8
	call	log2@plt
	fsd	fa0, 48(sp)
	vsetivli	zero, 1, e64, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 1
	vfmv.f.s	fa0, v8
	call	log2@plt
	fsd	fa0, 40(sp)
	addi	a0, sp, 32
	vsetivli	zero, 4, e64, m2, ta, mu
	vle64.v	v8, (a0)
	addi	sp, s0, -96
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	log2_v4f64, .Lfunc_end0-log2_v4f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
