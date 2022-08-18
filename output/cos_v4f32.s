	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cos_v4f32.ll"
	.globl	cos_v4f32                       # -- Begin function cos_v4f32
	.p2align	2
	.type	cos_v4f32,@function
cos_v4f32:                              # @cos_v4f32
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	csrr	a0, vlenb
	slli	a0, a0, 1
	sub	sp, sp, a0
	addi	a0, sp, 48
	vs1r.v	v8, (a0)                        # Unknown-size Folded Spill
	vsetivli	zero, 0, e32, m1, ta, mu
	vfmv.f.s	fa0, v8
	call	cosf@plt
	fsw	fa0, 16(sp)
	vsetivli	zero, 1, e32, m1, ta, mu
	addi	a0, sp, 48
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 3
	vfmv.f.s	fa0, v8
	call	cosf@plt
	fsw	fa0, 28(sp)
	vsetivli	zero, 1, e32, m1, ta, mu
	addi	a0, sp, 48
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 2
	vfmv.f.s	fa0, v8
	call	cosf@plt
	fsw	fa0, 24(sp)
	vsetivli	zero, 1, e32, m1, ta, mu
	addi	a0, sp, 48
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 1
	vfmv.f.s	fa0, v8
	call	cosf@plt
	fsw	fa0, 20(sp)
	addi	a0, sp, 16
	vsetivli	zero, 4, e32, m1, ta, mu
	vle32.v	v8, (a0)
	csrr	a0, vlenb
	slli	a0, a0, 1
	add	sp, sp, a0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	cos_v4f32, .Lfunc_end0-cos_v4f32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
