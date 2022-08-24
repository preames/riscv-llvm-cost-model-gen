	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"bswap_nvx16i64.ll"
	.globl	bswap_nvx16i64                  # -- Begin function bswap_nvx16i64
	.p2align	2
	.type	bswap_nvx16i64,@function
bswap_nvx16i64:                         # @bswap_nvx16i64
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	csrr	a0, vlenb
	slli	a0, a0, 3
	sub	sp, sp, a0
	li	a0, 56
	vsetvli	a1, zero, e64, m8, ta, mu
	vsrl.vx	v24, v8, a0
	li	a1, 40
	vsrl.vx	v0, v8, a1
	lui	a2, 16
	addiw	a2, a2, -256
	vand.vx	v0, v0, a2
	vor.vv	v24, v0, v24
	addi	a3, sp, 16
	vs8r.v	v24, (a3)                       # Unknown-size Folded Spill
	vsrl.vi	v0, v8, 24
	lui	a3, 4080
	vand.vx	v0, v0, a3
	li	a4, 255
	slli	a5, a4, 24
	vsrl.vi	v24, v8, 8
	vand.vx	v24, v24, a5
	vor.vv	v24, v24, v0
	addi	a6, sp, 16
	vl8re8.v	v0, (a6)                        # Unknown-size Folded Reload
	vor.vv	v24, v24, v0
	addi	a6, sp, 16
	vs8r.v	v24, (a6)                       # Unknown-size Folded Spill
	vsll.vi	v0, v8, 8
	slli	a6, a4, 32
	vand.vx	v0, v0, a6
	slli	a7, a4, 40
	vsll.vi	v24, v8, 24
	vand.vx	v24, v24, a7
	vor.vv	v24, v24, v0
	vsll.vx	v0, v8, a0
	vsll.vx	v8, v8, a1
	slli	a4, a4, 48
	vand.vx	v8, v8, a4
	vor.vv	v8, v0, v8
	vor.vv	v8, v8, v24
	addi	t0, sp, 16
	vl8re8.v	v24, (t0)                       # Unknown-size Folded Reload
	vor.vv	v8, v8, v24
	addi	t0, sp, 16
	vs8r.v	v8, (t0)                        # Unknown-size Folded Spill
	vsrl.vx	v24, v16, a0
	vsrl.vx	v0, v16, a1
	vand.vx	v0, v0, a2
	vor.vv	v8, v0, v24
	vsrl.vi	v0, v16, 24
	vand.vx	v0, v0, a3
	vsrl.vi	v24, v16, 8
	vand.vx	v24, v24, a5
	vor.vv	v24, v24, v0
	vor.vv	v24, v24, v8
	vsll.vi	v8, v16, 8
	vand.vx	v8, v8, a6
	vsll.vi	v0, v16, 24
	vand.vx	v0, v0, a7
	vor.vv	v8, v0, v8
	vsll.vx	v0, v16, a0
	vsll.vx	v16, v16, a1
	vand.vx	v16, v16, a4
	vor.vv	v16, v0, v16
	vor.vv	v8, v16, v8
	vor.vv	v16, v8, v24
	addi	a0, sp, 16
	vl8re8.v	v8, (a0)                        # Unknown-size Folded Reload
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	sp, sp, a0
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	bswap_nvx16i64, .Lfunc_end0-bswap_nvx16i64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
