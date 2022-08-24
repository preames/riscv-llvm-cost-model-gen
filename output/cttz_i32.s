	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_i32.ll"
	.section	.rodata.cst32,"aM",@progbits,32
.LCPI0_0:                               # -- Begin function cttz_i32
	.ascii	"\000\001\034\002\035\016\030\003\036\026\024\017\031\021\004\b\037\033\r\027\025\023\020\007\032\f\022\006\013\005\n\t"
	.text
	.globl	cttz_i32
	.p2align	2
	.type	cttz_i32,@function
cttz_i32:                               # @cttz_i32
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	sext.w	s0, a0
	beqz	s0, .LBB0_4
# %bb.1:                                # %cond.false
	neg	a1, a0
	and	a0, a0, a1
	lui	a1, 30667
	addiw	a1, a1, 1329
	call	__muldi3@plt
	mv	a1, a0
	li	a0, 32
	beqz	s0, .LBB0_3
# %bb.2:                                # %cond.false
	srliw	a0, a1, 27
	lui	a1, %hi(.LCPI0_0)
	addi	a1, a1, %lo(.LCPI0_0)
	add	a0, a1, a0
	lbu	a0, 0(a0)
.LBB0_3:                                # %cond.end
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_4:
	li	a0, 32
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	cttz_i32, .Lfunc_end0-cttz_i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
