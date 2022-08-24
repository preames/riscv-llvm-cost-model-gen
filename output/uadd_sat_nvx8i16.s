	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"uadd_sat_nvx8i16.ll"
	.globl	uadd_sat_nvx8i16                # -- Begin function uadd_sat_nvx8i16
	.p2align	2
	.type	uadd_sat_nvx8i16,@function
uadd_sat_nvx8i16:                       # @uadd_sat_nvx8i16
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	call	llvm.uadd_sat.nvx8i16@plt
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	uadd_sat_nvx8i16, .Lfunc_end0-uadd_sat_nvx8i16
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
