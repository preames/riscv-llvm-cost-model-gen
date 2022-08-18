	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"exp2_v8f32.ll"
	.globl	exp2_v8f32                      # -- Begin function exp2_v8f32
	.p2align	2
	.type	exp2_v8f32,@function
exp2_v8f32:                             # @exp2_v8f32
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
	vsetivli	zero, 0, e32, m2, ta, mu
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 32(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 7
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 60(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 6
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 56(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 5
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 52(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 4
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 48(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 3
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 44(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 2
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 40(sp)
	vsetivli	zero, 1, e32, m2, ta, mu
	addi	a0, sp, 80
	vl2re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 1
	vfmv.f.s	fa0, v8
	call	exp2f@plt
	fsw	fa0, 36(sp)
	addi	a0, sp, 32
	vsetivli	zero, 8, e32, m2, ta, mu
	vle32.v	v8, (a0)
	addi	sp, s0, -96
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	exp2_v8f32, .Lfunc_end0-exp2_v8f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
