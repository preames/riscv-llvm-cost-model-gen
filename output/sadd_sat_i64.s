	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"sadd_sat_i64.ll"
	.globl	sadd_sat_i64                    # -- Begin function sadd_sat_i64
	.p2align	2
	.type	sadd_sat_i64,@function
sadd_sat_i64:                           # @sadd_sat_i64
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	call	llvm.sadd_sat.i64@plt
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	sadd_sat_i64, .Lfunc_end0-sadd_sat_i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
