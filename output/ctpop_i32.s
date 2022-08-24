	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ctpop_i32.ll"
	.globl	ctpop_i32                       # -- Begin function ctpop_i32
	.p2align	2
	.type	ctpop_i32,@function
ctpop_i32:                              # @ctpop_i32
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	and	a1, a1, a2
	sub	a0, a0, a1
	lui	a1, 209715
	addiw	a1, a1, 819
	and	a2, a0, a1
	srli	a0, a0, 2
	and	a0, a0, a1
	add	a0, a2, a0
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	and	a0, a0, a1
	lui	a1, 4112
	addiw	a1, a1, 257
	call	__muldi3@plt
	srliw	a0, a0, 24
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	ctpop_i32, .Lfunc_end0-ctpop_i32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
