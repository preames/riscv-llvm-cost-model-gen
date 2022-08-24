	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctlz_i64.ll"
	.section	.sdata,"aw",@progbits
	.p2align	3                               # -- Begin function ctlz_i64
.LCPI0_0:
	.quad	6148914691236517205             # 0x5555555555555555
.LCPI0_1:
	.quad	3689348814741910323             # 0x3333333333333333
.LCPI0_2:
	.quad	1085102592571150095             # 0xf0f0f0f0f0f0f0f
.LCPI0_3:
	.quad	72340172838076673               # 0x101010101010101
	.text
	.globl	ctlz_i64
	.p2align	2
	.type	ctlz_i64,@function
ctlz_i64:                               # @ctlz_i64
	.cfi_startproc
# %bb.0:
	beqz	a0, .LBB0_2
# %bb.1:                                # %cond.false
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	srli	a1, a0, 1
	or	a0, a0, a1
	srli	a1, a0, 2
	or	a0, a0, a1
	srli	a1, a0, 4
	or	a0, a0, a1
	srli	a1, a0, 8
	or	a0, a0, a1
	srli	a1, a0, 16
	or	a0, a0, a1
	srli	a1, a0, 32
	or	a0, a0, a1
	not	a0, a0
	lui	a1, %hi(.LCPI0_0)
	ld	a1, %lo(.LCPI0_0)(a1)
	lui	a2, %hi(.LCPI0_1)
	ld	a2, %lo(.LCPI0_1)(a2)
	srli	a3, a0, 1
	and	a1, a3, a1
	sub	a0, a0, a1
	and	a1, a0, a2
	srli	a0, a0, 2
	and	a0, a0, a2
	lui	a2, %hi(.LCPI0_2)
	ld	a2, %lo(.LCPI0_2)(a2)
	add	a0, a1, a0
	srli	a1, a0, 4
	add	a0, a0, a1
	and	a0, a0, a2
	lui	a1, %hi(.LCPI0_3)
	ld	a1, %lo(.LCPI0_3)(a1)
	call	__muldi3@plt
	srli	a0, a0, 56
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_2:
	li	a0, 64
	ret
.Lfunc_end0:
	.size	ctlz_i64, .Lfunc_end0-ctlz_i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
