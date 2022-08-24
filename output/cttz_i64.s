	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"cttz_i64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function cttz_i64
.LCPI0_0:
	.quad	151050438420815295              # 0x218a392cd3d5dbf
	.section	.rodata,"a",@progbits
.LCPI0_1:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	cttz_i64
	.p2align	2
	.type	cttz_i64,@function
cttz_i64:                               # @cttz_i64
	.cfi_startproc
# %bb.0:
	beqz	a0, .LBB0_4
# %bb.1:                                # %cond.false
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	mv	s0, a0
	neg	a0, a0
	and	a0, s0, a0
	lui	a1, %hi(.LCPI0_0)
	ld	a1, %lo(.LCPI0_0)(a1)
	call	__muldi3@plt
	mv	a1, a0
	li	a0, 64
	beqz	s0, .LBB0_3
# %bb.2:                                # %cond.false
	srli	a0, a1, 58
	lui	a1, %hi(.LCPI0_1)
	addi	a1, a1, %lo(.LCPI0_1)
	add	a0, a1, a0
	lbu	a0, 0(a0)
.LBB0_3:                                # %cond.false
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_4:
	li	a0, 64
	ret
.Lfunc_end0:
	.size	cttz_i64, .Lfunc_end0-cttz_i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
