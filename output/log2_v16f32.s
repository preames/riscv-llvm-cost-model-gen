	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"log2_v16f32.ll"
	.globl	log2_v16f32                     # -- Begin function log2_v16f32
	.p2align	2
	.type	log2_v16f32,@function
log2_v16f32:                            # @log2_v16f32
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
	vsetivli	zero, 0, e32, m4, ta, mu
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 64(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 15
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 124(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 14
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 120(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 13
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 116(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 12
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 112(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 11
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 108(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 10
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 104(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 9
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 100(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 8
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 96(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 7
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 92(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 6
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 88(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 5
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 84(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 4
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 80(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 3
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 76(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 2
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 72(sp)
	vsetivli	zero, 1, e32, m4, ta, mu
	addi	a0, sp, 176
	vl4re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 1
	vfmv.f.s	fa0, v8
	call	log2f@plt
	fsw	fa0, 68(sp)
	addi	a0, sp, 64
	vsetivli	zero, 16, e32, m4, ta, mu
	vle32.v	v8, (a0)
	addi	sp, s0, -192
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end0:
	.size	log2_v16f32, .Lfunc_end0-log2_v16f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
