	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"log10_v8f64.ll"
	.globl	log10_v8f64                     # -- Begin function log10_v8f64
	.p2align	2
	.type	log10_v8f64,@function
log10_v8f64:                            # @log10_v8f64
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 192
	.cfi_def_cfa s0, 0
	csrr	a0, vlenb
	slli	a0, a0, 2
	sub	sp, sp, a0
	andi	sp, sp, -64
	addi	a0, sp, 176
	vs4r.v	v8, (a0)                        # Unknown-size Folded Spill
	vsetivli	zero, 0, e64, m4, ta, mu
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 64(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 7
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 120(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 6
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 112(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 5
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 104(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 4
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 96(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 3
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 88(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 2
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 80(sp)
	vsetivli	zero, 1, e64, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 1
	vfmv.f.s	fa0, v8
	call	log10@plt
	fsd	fa0, 72(sp)
	addi	a0, sp, 64
	vsetivli	zero, 8, e64, m4, ta, mu
	vle64.v	v8, (a0)
	addi	sp, s0, -192
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end0:
	.size	log10_v8f64, .Lfunc_end0-log10_v8f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
