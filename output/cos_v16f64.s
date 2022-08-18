	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cos_v16f64.ll"
	.globl	cos_v16f64                      # -- Begin function cos_v16f64
	.p2align	2
	.type	cos_v16f64,@function
cos_v16f64:                             # @cos_v16f64
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -384
	.cfi_def_cfa_offset 384
	sd	ra, 376(sp)                     # 8-byte Folded Spill
	sd	s0, 368(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 384
	.cfi_def_cfa s0, 0
	csrr	a0, vlenb
	slli	a0, a0, 3
	sub	sp, sp, a0
	andi	sp, sp, -128
	addi	a0, sp, 368
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	vsetivli	zero, 0, e64, m8, ta, mu
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 128(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 15
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 248(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 14
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 240(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 13
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 232(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 12
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 224(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 11
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 216(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 10
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 208(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 9
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 200(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 8
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 192(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 7
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 184(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 6
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 176(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 5
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 168(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 4
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 160(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 3
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 152(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 2
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 144(sp)
	vsetivli	zero, 1, e64, m8, ta, mu
	addi	a0, sp, 368
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	vslidedown.vi	v8, v8, 1
	vfmv.f.s	fa0, v8
	call	cos@plt
	fsd	fa0, 136(sp)
	addi	a0, sp, 128
	vsetivli	zero, 16, e64, m8, ta, mu
	vle64.v	v8, (a0)
	addi	sp, s0, -384
	ld	ra, 376(sp)                     # 8-byte Folded Reload
	ld	s0, 368(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 384
	ret
.Lfunc_end0:
	.size	cos_v16f64, .Lfunc_end0-cos_v16f64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
