	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
    

	thumb_func_start sub_803BDA0
sub_803BDA0: @ 803BDA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	ldr r0, =gBattlePartyID
	mov r8, r0
	ldr r1, =gUnknown_0203CF00
	mov r12, r1
	ldr r7, =gBattleStruct
	lsls r0, r5, 1
	adds r4, r0, r5
	adds r6, r0, 0
_0803BDBC:
	mov r0, r12
	adds r2, r3, r0
	ldr r1, [r7]
	adds r0, r4, r3
	adds r0, r1
	adds r0, 0x60
	ldrb r0, [r0]
	strb r0, [r2]
	adds r3, 0x1
	cmp r3, 0x2
	ble _0803BDBC
	mov r1, r8
	adds r0, r6, r1
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r7, =gBattleStruct
	ldr r0, [r7]
	adds r0, r5, r0
	adds r0, 0x5C
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_81B8FB0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0803BE4C
	movs r3, 0
	adds r4, r7, 0
	adds r6, r5
	movs r0, 0x2
	adds r1, r5, 0
	eors r1, r0
	ldr r7, =gUnknown_0203CF00
	lsls r0, r1, 1
	adds r5, r0, r1
_0803BE1A:
	ldr r0, [r4]
	adds r1, r6, r3
	adds r1, r0
	adds r1, 0x60
	adds r2, r3, r7
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, [r4]
	adds r0, r5, r3
	adds r0, r1
	adds r0, 0x60
	ldrb r1, [r2]
	strb r1, [r0]
	adds r3, 0x1
	cmp r3, 0x2
	ble _0803BE1A
	b _0803BE66
	.pool
_0803BE4C:
	movs r3, 0
	adds r2, r6, r5
	ldr r4, =gUnknown_0203CF00
_0803BE52:
	ldr r0, [r7]
	adds r1, r2, r3
	adds r1, r0
	adds r1, 0x60
	adds r0, r3, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, 0x1
	cmp r3, 0x2
	ble _0803BE52
_0803BE66:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803BDA0

	thumb_func_start sub_803BE74
sub_803BE74: @ 803BE74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	ldr r0, =gBattleCommunication
	movs r1, 0
	strb r1, [r0, 0x4]
	ldr r0, =gActiveBank
	strb r1, [r0]
	ldr r0, =gNoOfAllBanks
	bl _0803CD12
	.pool
_0803BE9C:
	ldr r4, =gActiveBank
	ldrb r0, [r4]
	bl GetBankIdentity
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gBattleCommunication
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x8
	bls _0803BEB8
	bl _0803CD04
_0803BEB8:
	lsls r0, 2
	ldr r1, =_0803BED0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803BED0:
	.4byte _0803BEF4
	.4byte _0803BF0C
	.4byte _0803C02C
	.4byte _0803C7D8
	.4byte _0803CAD0
	.4byte _0803CB84
	.4byte _0803CBC8
	.4byte _0803CBF4
	.4byte _0803CC38
_0803BEF4:
	bl sub_8185FD0
	ldr r1, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	adds r0, r1
	bl _0803CC20
	.pool
_0803BF0C:
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	ldr r4, =gBattleStruct
	ldr r0, [r4]
	adds r1, r0
	adds r1, 0x5C
	movs r0, 0x6
	strb r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0803BF68
	movs r1, 0x2
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	beq _0803BF68
	eors r5, r1
	adds r0, r5, 0
	bl GetBankByIdentity
	ldr r1, [r4]
	adds r1, 0x91
	ldrb r1, [r1]
	ldr r2, =gBitTable
	lsls r0, 24
	lsrs r0, 22
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803BF68
	ldr r4, =gBattleCommunication
	adds r0, r5, 0
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _0803BF68
	bl _0803CD04
_0803BF68:
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	adds r0, 0x91
	ldrb r3, [r0]
	ldr r1, =gBitTable
	ldr r4, =gActiveBank
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ands r3, r0
	cmp r3, 0
	beq _0803BFD0
	ldr r0, =gActionForBanks
	adds r0, r2, r0
	movs r1, 0xD
	strb r1, [r0]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0803BFBC
	ldr r0, =gBattleCommunication
	ldrb r1, [r4]
	adds r1, r0
	movs r0, 0x5
	strb r0, [r1]
	bl _0803CD04
	.pool
_0803BFBC:
	ldr r0, =gBattleCommunication
	ldrb r1, [r4]
	adds r1, r0
	movs r0, 0x4
	strb r0, [r1]
	bl _0803CD04
	.pool
_0803BFD0:
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	bne _0803BFF0
	movs r0, 0x80
	lsls r0, 15
	ands r1, r0
	cmp r1, 0
	beq _0803C00C
_0803BFF0:
	ldr r0, =gActionForBanks
	adds r0, r2, r0
	strb r3, [r0]
	ldr r1, =gBattleCommunication
	ldrb r0, [r4]
	bl _0803CC72
	.pool
_0803C00C:
	ldr r0, =gActionForBanks
	ldrb r1, [r0]
	ldr r0, =gBattleBufferB
	ldrb r2, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r2, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x12_a_bb
	bl _0803CB68
	.pool
_0803C02C:
	ldr r3, =gBattleExecBuffer
	ldr r1, =gBitTable
	ldr r6, =gActiveBank
	ldrb r5, [r6]
	lsls r0, r5, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _0803C058
	bl _0803CD04
_0803C058:
	ldr r4, =gBattleBufferB
	lsls r0, r5, 9
	adds r4, 0x1
	adds r0, r4
	ldrb r1, [r0]
	adds r0, r5, 0
	bl RecordedBattle_SetBankAction
	ldr r1, =gActionForBanks
	ldrb r0, [r6]
	adds r1, r0, r1
	lsls r0, 9
	adds r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, 9
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0xC
	bls _0803C084
	b _0803C6C4
_0803C084:
	lsls r0, 2
	ldr r1, =_0803C0A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803C0A8:
	.4byte _0803C0DC
	.4byte _0803C230
	.4byte _0803C268
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C440
	.4byte _0803C48C
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C6C4
	.4byte _0803C4B4
_0803C0DC:
	bl AreAllMovesUnusable
	lsls r0, 24
	cmp r0, 0
	beq _0803C134
	ldr r0, =gBattleCommunication
	ldr r3, =gActiveBank
	ldrb r1, [r3]
	adds r1, r0
	movs r4, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r2, =gBattleStruct
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r4, [r1]
	ldrb r1, [r3]
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x84
	movs r0, 0x4
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r2, [r2]
	adds r2, r1, r2
	ldr r0, =gBattleBufferB
	lsls r1, 9
	adds r0, 0x3
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2, 0xC]
	bl _0803CD70
	.pool
_0803C134:
	ldr r3, =gDisableStructs
	ldr r5, =gActiveBank
	ldrb r4, [r5]
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r3
	ldrh r2, [r0, 0x6]
	cmp r2, 0
	beq _0803C188
	ldr r1, =gChosenMovesByBanks
	lsls r0, r4, 1
	adds r0, r1
	strh r2, [r0]
	ldrb r2, [r5]
	ldr r0, =gBattleStruct
	ldr r1, [r0]
	adds r1, r2, r1
	adds r1, 0x80
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0xC]
	strb r0, [r1]
	ldr r1, =gBattleCommunication
	ldrb r0, [r5]
	adds r0, r1
	movs r1, 0x4
	strb r1, [r0]
	bl _0803CD70
	.pool
_0803C188:
	add r2, sp, 0x4
	ldr r3, =gBattleMons
	movs r1, 0x58
	adds r0, r4, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r2, 0x10]
	ldrb r0, [r5]
	muls r0, r1
	adds r0, r3
	adds r0, 0x21
	ldrb r0, [r0]
	strb r0, [r2, 0x12]
	ldrb r0, [r5]
	muls r0, r1
	adds r0, r3
	adds r0, 0x22
	ldrb r0, [r0]
	strb r0, [r2, 0x13]
	movs r4, 0
	mov r1, sp
	adds r1, 0xC
	str r1, [sp, 0x18]
	add r2, sp, 0x10
	mov r10, r2
	mov r8, r3
	adds r7, r5, 0
	movs r6, 0x58
	movs r0, 0xC
	add r0, r8
	mov r9, r0
	add r5, sp, 0x4
_0803C1CA:
	lsls r2, r4, 1
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r2, r0
	add r0, r9
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r1, [sp, 0x18]
	adds r3, r1, r4
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r4, r0
	mov r1, r8
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	adds r2, r1
	add r2, r9
	ldrh r0, [r2]
	add r1, r8
	adds r1, 0x3B
	ldrb r1, [r1]
	lsls r2, r4, 24
	lsrs r2, 24
	bl CalculatePPWithBonus
	mov r2, r10
	adds r1, r2, r4
	strb r0, [r1]
	adds r5, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _0803C1CA
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x1
	ands r1, r0
	movs r0, 0
	movs r2, 0
	add r3, sp, 0x4
	bl sub_8033E30
	b _0803C42E
	.pool
_0803C230:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x021f0902
	ands r0, r1
	cmp r0, 0
	bne _0803C23E
	b _0803C48C
_0803C23E:
	ldr r4, =gActiveBank
	ldrb r0, [r4]
	movs r1, 0x1
	bl sub_8185008
	ldr r1, =gUnknown_02024220
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB879
	b _0803C784
	.pool
_0803C268:
	ldr r5, =gActiveBank
	ldrb r0, [r5]
	ldr r3, =gBattleStruct
	ldr r1, [r3]
	adds r1, r0, r1
	adds r1, 0x58
	ldr r2, =gBattlePartyID
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r7, =gBattleMons
	ldrb r2, [r5]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =0x0400e000
	ands r1, r0
	cmp r1, 0
	bne _0803C2B8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	bne _0803C2B8
	ldr r0, =gStatuses3
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x80
	lsls r0, 3
	ands r1, r0
	cmp r1, 0
	beq _0803C2EC
_0803C2B8:
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, 0x60
	ldr r0, [r3]
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0x6
	b _0803C400
	.pool
_0803C2EC:
	str r1, [sp]
	movs r0, 0xC
	adds r1, r2, 0
	movs r2, 0x17
	movs r3, 0
	bl AbilityBattleEffects
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _0803C374
	ldrb r1, [r5]
	str r4, [sp]
	movs r0, 0xC
	movs r2, 0x47
	movs r3, 0
	bl AbilityBattleEffects
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0803C33C
	ldrb r0, [r5]
	muls r0, r6
	adds r1, r0, r7
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0803C33C
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0803C33C
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	bne _0803C374
_0803C33C:
	ldr r5, =gActiveBank
	ldrb r1, [r5]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xF
	movs r2, 0x2A
	movs r3, 0
	bl AbilityBattleEffects
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0803C3B0
	ldr r2, =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _0803C374
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _0803C3B0
_0803C374:
	subs r1, r4, 0x1
	lsls r1, 4
	movs r0, 0x4
	orrs r1, r0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, =gLastUsedAbility
	ldrb r3, [r0]
	ldr r4, =gBattleStruct
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	lsls r2, r0, 1
	adds r2, r0
	adds r2, 0x60
	ldr r0, [r4]
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r2, 0x6
	bl EmitChoosePokemon
	b _0803C42E
	.pool
_0803C3B0:
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x2
	bne _0803C3D8
	ldr r0, =gActionForBanks
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803C3D8
	ldr r0, =gBattleStruct
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0x5C
	b _0803C3EE
	.pool
_0803C3D8:
	ldrb r0, [r4]
	cmp r0, 0x3
	bne _0803C410
	ldr r0, =gActionForBanks
	ldrb r0, [r0, 0x1]
	cmp r0, 0x2
	bne _0803C410
	ldr r0, =gBattleStruct
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0x5D
_0803C3EE:
	ldrb r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, 0x60
	adds r3, r0
	str r3, [sp]
	movs r0, 0
	movs r1, 0
_0803C400:
	movs r3, 0
	bl EmitChoosePokemon
	b _0803C42E
	.pool
_0803C410:
	ldr r2, =gBattleStruct
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, 0x60
	ldr r0, [r2]
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0x6
	movs r3, 0
	bl EmitChoosePokemon
_0803C42E:
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	bl MarkBufferBankForExecution
	b _0803C6C4
	.pool
_0803C440:
	bl IsPlayerPartyAndPokemonStorageFull
	lsls r0, 24
	cmp r0, 0
	bne _0803C44C
	b _0803C6C4
_0803C44C:
	ldr r1, =gUnknown_02024220
	ldr r3, =gActiveBank
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r1, =gUnknown_082DAB11
	str r1, [r0]
	ldr r0, =gBattleCommunication
	ldrb r1, [r3]
	adds r1, r0
	movs r4, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r1, [r3]
	ldr r2, =gBattleStruct
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r4, [r1]
	ldrb r1, [r3]
	b _0803C7A0
	.pool
_0803C48C:
	ldr r2, =gBattleStruct
	ldr r4, =gActiveBank
	ldrb r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, 0x60
	ldr r1, [r2]
	adds r1, r0
	movs r0, 0
	bl sub_8033E6C
	ldrb r0, [r4]
	bl MarkBufferBankForExecution
	b _0803C6C4
	.pool
_0803C4B4:
	ldr r4, =gBattleCommunication
	ldr r5, =gActiveBank
	ldrb r0, [r5]
	adds r0, r4
	movs r1, 0x7
	strb r1, [r0]
	ldrb r0, [r5]
	bl GetBankIdentity
	movs r6, 0x2
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	movs r1, 0x1
	strb r1, [r0]
	ldrb r0, [r5]
	bl sub_8185008
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	ldr r1, =gBattleMons
	lsls r0, 24
	lsrs r0, 24
	movs r7, 0x58
	muls r0, r7
	adds r4, r1, 0
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	bne _0803C532
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	muls r0, r7
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0803C550
_0803C532:
	movs r0, 0
	bl dp01_build_cmdbuf_x32_32_32_32
	ldrb r0, [r5]
	bl MarkBufferBankForExecution
	bl _0803CD70
	.pool
_0803C550:
	ldr r4, =gActionForBanks
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803C590
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x2
	bl sub_8185008
	b _0803C6AE
	.pool
_0803C590:
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803C5B6
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	b _0803C668
_0803C5B6:
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803C628
	ldr r4, =gProtectStructs
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 20
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _0803C616
	ldr r4, =gDisableStructs
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrh r0, [r1, 0x6]
	cmp r0, 0
	beq _0803C628
_0803C616:
	ldrb r0, [r5]
	bl GetBankIdentity
	eors r0, r6
	b _0803C668
	.pool
_0803C628:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	beq _0803C690
	ldr r4, =gActionForBanks
	ldr r6, =gActiveBank
	ldrb r0, [r6]
	bl GetBankIdentity
	movs r5, 0x2
	eors r0, r5
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803C690
	ldr r1, =gRngValue
	ldr r0, =gUnknown_0203BD30
	ldr r0, [r0]
	str r0, [r1]
	ldrb r0, [r6]
	bl GetBankIdentity
	eors r0, r5
_0803C668:
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1
	bl sub_8185008
	b _0803C6AE
	.pool
_0803C690:
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	bl GetBankIdentity
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x3
	bl sub_8185008
_0803C6AE:
	movs r0, 0
	bl dp01_build_cmdbuf_x32_32_32_32
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	bl MarkBufferBankForExecution
	b _0803CD70
	.pool
_0803C6C4:
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	movs r5, 0x8
	adds r0, r2, 0
	ands r0, r5
	adds r3, r1, 0
	cmp r0, 0
	beq _0803C720
	ldr r0, =0x043f0100
	ands r2, r0
	cmp r2, 0
	beq _0803C720
	ldr r0, =gBattleBufferB
	ldr r4, =gActiveBank
	ldrb r2, [r4]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _0803C720
	ldr r1, =gUnknown_02024220
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, =gUnknown_082DB9BA
	str r1, [r0]
	ldr r1, =gBattleCommunication
	ldrb r0, [r4]
	adds r0, r1
	movs r3, 0
	strb r5, [r0]
	b _0803C792
	.pool
_0803C720:
	ldr r0, [r3]
	ldr r1, =0x0200000a
	ands r0, r1
	cmp r0, 0x8
	bne _0803C760
	ldr r0, =gBattleBufferB
	ldr r4, =gActiveBank
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _0803C760
	ldr r0, =gUnknown_082DAAFE
	bl BattleScriptExecute
	ldr r1, =gBattleCommunication
	ldrb r0, [r4]
	adds r0, r1
	b _0803CC20
	.pool
_0803C760:
	bl IsRunningFromBattleImpossible
	lsls r0, 24
	cmp r0, 0
	beq _0803C7C4
	ldr r0, =gBattleBufferB
	ldr r4, =gActiveBank
	ldrb r2, [r4]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _0803C7C4
	ldr r1, =gUnknown_02024220
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, =gUnknown_082DAB0B
_0803C784:
	str r1, [r0]
	ldr r0, =gBattleCommunication
	ldrb r1, [r4]
	adds r1, r0
	movs r3, 0
	movs r0, 0x6
	strb r0, [r1]
_0803C792:
	ldrb r1, [r4]
	ldr r2, =gBattleStruct
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r3, [r1]
	ldrb r1, [r4]
_0803C7A0:
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x84
	movs r0, 0x1
	strb r0, [r1]
	b _0803CD70
	.pool
_0803C7C4:
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803C7D8:
	ldr r4, =gBattleExecBuffer
	ldr r1, =gBitTable
	ldr r3, =gActiveBank
	ldrb r5, [r3]
	lsls r0, r5, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r0, r2, 4
	movs r1, 0xF0
	lsls r1, 24
	orrs r0, r1
	orrs r0, r2
	lsls r1, r2, 8
	orrs r0, r1
	lsls r2, 12
	orrs r0, r2
	ldr r1, [r4]
	ands r1, r0
	adds r4, r3, 0
	cmp r1, 0
	beq _0803C804
	b _0803CD04
_0803C804:
	ldr r1, =gActionForBanks
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0x9
	bls _0803C812
	b _0803CD04
_0803C812:
	lsls r0, 2
	ldr r1, =_0803C830
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803C830:
	.4byte _0803C858
	.4byte _0803C99C
	.4byte _0803C9D4
	.4byte _0803CA0A
	.4byte _0803CA2C
	.4byte _0803CA40
	.4byte _0803CA54
	.4byte _0803CA84
	.4byte _0803CA98
	.4byte _0803CABC
_0803C858:
	ldr r1, =gBattleBufferB
	ldrb r3, [r4]
	lsls r0, r3, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r1, [r0]
	cmp r1, 0x3
	blt _0803C88A
	cmp r1, 0x9
	ble _0803C878
	cmp r1, 0xF
	beq _0803C87E
	b _0803C88A
	.pool
_0803C878:
	adds r0, r3, r2
	strb r1, [r0]
	b _0803CD70
_0803C87E:
	adds r1, r3, r2
	movs r0, 0x2
	strb r0, [r1]
	bl sub_803CDF8
	b _0803CD70
_0803C88A:
	movs r0, 0x2
	bl sub_818603C
	ldr r4, =gBattleBufferB
	ldr r6, =gActiveBank
	ldrb r3, [r6]
	lsls r1, r3, 9
	adds r5, r4, 0x2
	adds r0, r1, r5
	ldrb r2, [r0]
	adds r7, r4, 0x3
	adds r1, r7
	ldrb r0, [r1]
	lsls r0, 8
	orrs r2, r0
	ldr r0, =0x0000ffff
	cmp r2, r0
	bne _0803C8D0
	ldr r0, =gBattleCommunication
	adds r0, r3, r0
	movs r1, 0x1
	strb r1, [r0]
	ldrb r0, [r6]
	bl sub_8185008
	b _0803CD04
	.pool
_0803C8D0:
	bl sub_803FB4C
	lsls r0, 24
	cmp r0, 0
	beq _0803C91C
	ldrb r0, [r6]
	movs r1, 0x1
	bl sub_8185008
	ldr r0, =gBattleCommunication
	ldrb r1, [r6]
	adds r1, r0
	movs r3, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r1, [r6]
	ldr r2, =gBattleStruct
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x54
	strb r3, [r1]
	ldrb r0, [r6]
	lsls r0, 9
	adds r1, r4, 0x1
	adds r0, r1
	strb r3, [r0]
	ldrb r1, [r6]
	ldr r0, [r2]
	adds r1, r0
	adds r1, 0x84
	movs r0, 0x2
	strb r0, [r1]
	b _0803CD70
	.pool
_0803C91C:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	bne _0803C942
	ldrb r0, [r6]
	lsls r1, r0, 9
	adds r1, r5
	ldrb r1, [r1]
	bl RecordedBattle_SetBankAction
	ldrb r0, [r6]
	lsls r1, r0, 9
	adds r1, r7
	ldrb r1, [r1]
	bl RecordedBattle_SetBankAction
_0803C942:
	ldrb r0, [r6]
	ldr r4, =gBattleStruct
	ldr r1, [r4]
	adds r1, r0, r1
	adds r1, 0x80
	lsls r0, 9
	adds r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gChosenMovesByBanks
	ldrb r2, [r6]
	lsls r5, r2, 1
	adds r5, r0
	ldr r3, =gBattleMons
	ldr r4, [r4]
	adds r0, r2, r4
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	adds r3, 0xC
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	adds r4, r0, r4
	lsls r0, 9
	adds r0, r7
	ldrb r0, [r0]
	strb r0, [r4, 0xC]
	ldr r0, =gBattleCommunication
	ldrb r1, [r6]
	b _0803CB72
	.pool
_0803C99C:
	ldr r2, =gBattleBufferB
	ldr r5, =gActiveBank
	ldrb r4, [r5]
	lsls r1, r4, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	cmp r3, 0
	bne _0803C9BA
	b _0803CC1C
_0803C9BA:
	ldr r0, =gLastUsedItem
	strh r3, [r0]
	ldr r0, =gBattleCommunication
	ldrb r1, [r5]
	b _0803CB72
	.pool
_0803C9D4:
	ldr r0, =gBattleBufferB
	ldr r4, =gActiveBank
	ldrb r2, [r4]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x6
	bne _0803CA04
	ldr r0, =gBattleCommunication
	adds r0, r2, r0
	movs r1, 0x1
	strb r1, [r0]
	ldrb r0, [r4]
	bl sub_8185008
	b _0803CD04
	.pool
_0803CA04:
	bl sub_803CDF8
	b _0803CB6E
_0803CA0A:
	ldr r2, =gHitMarker
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA2C:
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA40:
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA54:
	ldr r3, =gBattleBufferB
	ldr r0, =gActiveBank
	ldrb r4, [r0]
	lsls r1, r4, 9
	adds r0, r3, 0x1
	adds r0, r1, r0
	ldrb r2, [r0]
	adds r3, 0x2
	adds r1, r3
	ldrb r0, [r1]
	lsls r0, 8
	orrs r2, r0
	cmp r2, 0
	bne _0803CA72
	b _0803CC1C
_0803CA72:
	ldr r1, =gBattleCommunication
	adds r1, r4, r1
	b _0803CB74
	.pool
_0803CA84:
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CA98:
	ldr r2, =gHitMarker
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CABC:
	ldr r2, =gBattleCommunication
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, r2
	b _0803CB74
	.pool
_0803CAD0:
	ldr r3, =gBattleExecBuffer
	ldr r6, =gBitTable
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r6
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _0803CAFA
	b _0803CD04
_0803CAFA:
	bl sub_803CDB8
	lsls r0, 24
	lsrs r0, 24
	negs r1, r0
	orrs r1, r0
	lsrs r4, r1, 31
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x41
	ands r0, r1
	cmp r0, 0x1
	bne _0803CB3C
	movs r1, 0x2
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	bne _0803CB3C
	adds r0, r5, 0
	eors r0, r1
	bl GetBankByIdentity
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	adds r1, 0x91
	ldrb r1, [r1]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r6
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803CB5C
_0803CB3C:
	movs r0, 0
	movs r1, 0
	adds r2, r4, 0
	bl EmitLinkStandbyMsg
	b _0803CB66
	.pool
_0803CB5C:
	movs r0, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl EmitLinkStandbyMsg
_0803CB66:
	ldr r4, =gActiveBank
_0803CB68:
	ldrb r0, [r4]
	bl MarkBufferBankForExecution
_0803CB6E:
	ldr r0, =gBattleCommunication
	ldrb r1, [r4]
_0803CB72:
	adds r1, r0
_0803CB74:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0803CD04
	.pool
_0803CB84:
	ldr r3, =gBattleExecBuffer
	ldr r1, =gBitTable
	ldr r0, =gActiveBank
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _0803CBAE
	b _0803CD04
_0803CBAE:
	ldr r1, =gBattleCommunication
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _0803CD04
	.pool
_0803CBC8:
	ldr r5, =gActiveBank
	ldrb r2, [r5]
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	adds r1, r2, r0
	adds r0, r1, 0
	adds r0, 0x54
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803CCB4
	ldr r0, =gBattleCommunication
	adds r0, r2, r0
	adds r1, 0x84
	ldrb r1, [r1]
	strb r1, [r0]
	b _0803CD04
	.pool
_0803CBF4:
	ldr r3, =gBattleExecBuffer
	ldr r1, =gBitTable
	ldr r0, =gActiveBank
	ldrb r4, [r0]
	lsls r0, r4, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	bne _0803CD04
_0803CC1C:
	ldr r0, =gBattleCommunication
	adds r0, r4, r0
_0803CC20:
	movs r1, 0x1
	strb r1, [r0]
	b _0803CD04
	.pool
_0803CC38:
	ldr r5, =gActiveBank
	ldrb r2, [r5]
	ldr r4, =gBattleStruct
	ldr r0, [r4]
	adds r0, r2, r0
	adds r0, 0x54
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803CCB4
	ldr r0, =gBattleBufferB
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xD
	bne _0803CC94
	ldr r2, =gHitMarker
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r1, =gActionForBanks
	ldrb r0, [r5]
	adds r0, r1
	movs r1, 0x3
	strb r1, [r0]
	ldr r1, =gBattleCommunication
	ldrb r0, [r5]
_0803CC72:
	adds r0, r1
	movs r1, 0x4
	strb r1, [r0]
	b _0803CD04
	.pool
_0803CC94:
	adds r0, r2, 0
	movs r1, 0x1
	bl sub_8185008
	ldr r2, =gBattleCommunication
	ldrb r0, [r5]
	adds r2, r0, r2
	ldr r1, [r4]
	adds r0, r1
	adds r0, 0x84
	ldrb r0, [r0]
	strb r0, [r2]
	b _0803CD04
	.pool
_0803CCB4:
	ldr r0, =gBankAttacker
	strb r2, [r0]
	ldr r7, =gBattlescriptCurrInstr
	ldr r6, =gUnknown_02024220
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r4, [r0]
	str r4, [r7]
	ldr r3, =gBattleExecBuffer
	ldr r1, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	bne _0803CCFA
	ldr r0, =gBattleScriptingCommandsTable
	ldrb r1, [r4]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_0803CCFA:
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r7]
	str r1, [r0]
_0803CD04:
	ldr r0, =gActiveBank
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, =gNoOfAllBanks
	lsls r1, 24
	lsrs r1, 24
_0803CD12:
	adds r5, r0, 0
	ldrb r0, [r5]
	cmp r1, r0
	bcs _0803CD1E
	bl _0803BE9C
_0803CD1E:
	ldr r0, =gBattleCommunication
	ldrb r0, [r0, 0x4]
	ldrb r1, [r5]
	cmp r0, r1
	bne _0803CD70
	movs r0, 0x1
	bl sub_818603C
	ldr r1, =gBattleMainFunc
	ldr r0, =sub_803D2E8
	str r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 15
	ands r0, r1
	cmp r0, 0
	beq _0803CD70
	movs r4, 0
	ldrb r5, [r5]
	cmp r4, r5
	bge _0803CD70
_0803CD4A:
	ldr r0, =gActionForBanks
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0803CD66
	lsls r0, r4, 24
	lsrs r0, 24
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	adds r1, r4, r1
	adds r1, 0x5C
	ldrb r1, [r1]
	bl sub_80571DC
_0803CD66:
	adds r4, 0x1
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803CD4A
_0803CD70:
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803BE74

	thumb_func_start sub_803CDB8
sub_803CDB8: @ 803CDB8
	push {r4,r5,lr}
	movs r3, 0
	movs r1, 0
	ldr r0, =gNoOfAllBanks
	ldrb r2, [r0]
	adds r5, r0, 0
	cmp r3, r2
	bge _0803CDDA
	ldr r4, =gBattleCommunication
_0803CDCA:
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _0803CDD4
	adds r3, 0x1
_0803CDD4:
	adds r1, 0x1
	cmp r1, r2
	blt _0803CDCA
_0803CDDA:
	adds r0, r3, 0x1
	ldrb r5, [r5]
	cmp r0, r5
	beq _0803CDF0
	movs r0, 0
	b _0803CDF2
	.pool
_0803CDF0:
	movs r0, 0x1
_0803CDF2:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_803CDB8

	thumb_func_start sub_803CDF8
sub_803CDF8: @ 803CDF8
	push {r4-r7,lr}
	ldr r7, =gActiveBank
	ldrb r0, [r7]
	ldr r6, =gBattleStruct
	ldr r1, [r6]
	adds r1, r0, r1
	adds r1, 0x5C
	ldr r4, =gBattleBufferB
	lsls r0, 9
	adds r2, r4, 0x1
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	lsls r1, r0, 9
	adds r1, r2
	ldrb r1, [r1]
	bl RecordedBattle_SetBankAction
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x42
	ands r0, r1
	cmp r0, 0x42
	bne _0803CEC6
	ldrb r0, [r7]
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r2, [r1]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	lsls r0, 9
	adds r5, r4, 0x2
	adds r0, r5
	ldrb r2, [r0]
	movs r3, 0xF0
	adds r0, r3, 0
	ands r0, r2
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	ldr r2, [r6]
	lsls r0, r1, 1
	adds r0, r1
	adds r0, r2
	adds r0, 0x61
	lsls r1, 9
	adds r4, 0x3
	mov r12, r4
	add r1, r12
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r7]
	movs r4, 0x2
	eors r0, r4
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	eors r0, r4
	ldr r2, [r6]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r2
	adds r1, 0x60
	ldrb r0, [r7]
	lsls r0, 9
	adds r0, r5
	ldrb r0, [r0]
	ands r3, r0
	lsrs r3, 4
	ldrb r0, [r1]
	orrs r3, r0
	strb r3, [r1]
	ldrb r0, [r7]
	eors r4, r0
	ldr r0, [r6]
	lsls r1, r4, 1
	adds r1, r4
	adds r1, r0
	adds r1, 0x62
	ldrb r0, [r7]
	lsls r0, 9
	add r0, r12
	ldrb r0, [r0]
	strb r0, [r1]
_0803CEC6:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803CDF8

	thumb_func_start sub_803CEDC
sub_803CEDC: @ 803CEDC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r2, =gUnknown_0202407A
	adds r4, r0, r2
	ldrb r5, [r4]
	adds r2, r1, r2
	ldrb r3, [r2]
	strb r3, [r4]
	strb r5, [r2]
	ldr r2, =gTurnOrder
	adds r0, r2
	ldrb r5, [r0]
	adds r1, r2
	ldrb r2, [r1]
	strb r2, [r0]
	strb r5, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803CEDC

	thumb_func_start GetWhoStrikesFirst
GetWhoStrikesFirst: @ 803CF10
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl AbilityBattleEffects
	lsls r0, 24
	cmp r0, 0
	bne _0803CFD8
	ldr r1, [sp, 0x8]
	str r1, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl AbilityBattleEffects
	lsls r0, 24
	cmp r0, 0
	bne _0803CFD8
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r3, [r0]
	cmp r3, 0x21
	bne _0803CF7C
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0803CF8C
_0803CF7C:
	cmp r3, 0x22
	bne _0803CF98
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _0803CF98
_0803CF8C:
	movs r3, 0x2
	b _0803CF9A
	.pool
_0803CF98:
	movs r3, 0x1
_0803CF9A:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	ldr r2, =gBattleMons
	adds r0, r2
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x21
	bne _0803CFBA
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0803CFCA
_0803CFBA:
	cmp r2, 0x22
	bne _0803CFDA
	ldr r0, =gBattleWeather
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _0803CFDA
_0803CFCA:
	movs r7, 0x2
	b _0803CFDC
	.pool
_0803CFD8:
	movs r3, 0x1
_0803CFDA:
	movs r7, 0x1
_0803CFDC:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r4, r0, r1
	ldrh r0, [r4, 0x6]
	muls r3, r0
	ldr r2, =gStatStageRatios
	movs r1, 0x1B
	ldrsb r1, [r4, r1]
	lsls r1, 1
	adds r0, r1, r2
	ldrb r0, [r0]
	muls r0, r3
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	bl __divsi3
	mov r8, r0
	ldrh r0, [r4, 0x2E]
	cmp r0, 0xAF
	bne _0803D02C
	ldr r1, =gEnigmaBerries
	mov r3, r9
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	ldrb r5, [r0, 0x1A]
	b _0803D040
	.pool
_0803D02C:
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r6, r0, 24
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r5, r0, 24
_0803D040:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x023f0102
	ands r0, r1
	cmp r0, 0
	bne _0803D074
	ldr r0, =0x00000869
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0803D074
	mov r0, r9
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803D074
	movs r0, 0x6E
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0x64
	bl __udivsi3
	mov r8, r0
_0803D074:
	cmp r6, 0x18
	bne _0803D07E
	mov r2, r8
	lsrs r2, 1
	mov r8, r2
_0803D07E:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803D09C
	mov r0, r8
	lsrs r0, 2
	mov r8, r0
_0803D09C:
	cmp r6, 0x1A
	bne _0803D0B8
	ldr r0, =gRandomTurnNumber
	ldrh r4, [r0]
	lsls r0, r5, 16
	subs r0, r5
	movs r1, 0x64
	bl __divsi3
	cmp r4, r0
	bge _0803D0B8
	movs r1, 0x1
	negs r1, r1
	mov r8, r1
_0803D0B8:
	ldr r1, =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r4, r0, r1
	ldrh r0, [r4, 0x6]
	adds r3, r0, 0
	muls r3, r7
	ldr r2, =gStatStageRatios
	movs r1, 0x1B
	ldrsb r1, [r4, r1]
	lsls r1, 1
	adds r0, r1, r2
	ldrb r0, [r0]
	muls r0, r3
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	bl __divsi3
	adds r7, r0, 0
	ldrh r0, [r4, 0x2E]
	cmp r0, 0xAF
	bne _0803D118
	ldr r1, =gEnigmaBerries
	mov r3, r10
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	ldrb r5, [r0, 0x1A]
	b _0803D12C
	.pool
_0803D118:
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r6, r0, 24
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r5, r0, 24
_0803D12C:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x023f0102
	ands r0, r1
	cmp r0, 0
	bne _0803D15C
	ldr r0, =0x00000869
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0803D15C
	mov r0, r10
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803D15C
	movs r0, 0x6E
	muls r0, r7
	movs r1, 0x64
	bl __udivsi3
	adds r7, r0, 0
_0803D15C:
	cmp r6, 0x18
	bne _0803D162
	lsrs r7, 1
_0803D162:
	ldr r2, =gBattleMons
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803D17E
	lsrs r7, 2
_0803D17E:
	cmp r6, 0x1A
	bne _0803D198
	ldr r0, =gRandomTurnNumber
	ldrh r4, [r0]
	lsls r0, r5, 16
	subs r0, r5
	movs r1, 0x64
	bl __divsi3
	cmp r4, r0
	bge _0803D198
	movs r7, 0x1
	negs r7, r7
_0803D198:
	ldr r2, [sp, 0x4]
	cmp r2, 0
	beq _0803D1B8
	movs r3, 0
	b _0803D254
	.pool
_0803D1B8:
	ldr r0, =gActionForBanks
	mov r3, r9
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r2, r0, 0
	cmp r1, 0
	bne _0803D208
	ldr r0, =gProtectStructs
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _0803D1E0
	movs r3, 0xA5
	b _0803D20A
	.pool
_0803D1E0:
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	add r0, r9
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	mov r3, r9
	muls r3, r1
	adds r1, r3, 0
	adds r0, r1
	ldr r1, =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r3, [r0]
	b _0803D20A
	.pool
_0803D208:
	movs r3, 0
_0803D20A:
	mov r1, r10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803D254
	ldr r0, =gProtectStructs
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _0803D22C
	movs r2, 0xA5
	b _0803D256
	.pool
_0803D22C:
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	add r0, r10
	adds r0, 0x80
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	mov r2, r10
	muls r2, r1
	adds r1, r2, 0
	adds r0, r1
	ldr r1, =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r2, [r0]
	b _0803D256
	.pool
_0803D254:
	movs r2, 0
_0803D256:
	ldr r4, =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r4
	movs r1, 0x7
	ldrsb r1, [r0, r1]
	lsls r3, r2, 1
	cmp r1, 0
	bne _0803D27A
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x7]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0803D2B8
_0803D27A:
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x7]
	lsls r0, 24
	asrs r0, 24
	cmp r1, r0
	bne _0803D2AE
	cmp r8, r7
	bne _0803D2A4
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803D2A4
	movs r3, 0x2
	b _0803D2D4
	.pool
_0803D2A4:
	cmp r8, r7
	bcs _0803D2D6
	movs r0, 0x1
	str r0, [sp, 0x8]
	b _0803D2D6
_0803D2AE:
	cmp r1, r0
	bge _0803D2D6
	movs r1, 0x1
	str r1, [sp, 0x8]
	b _0803D2D6
_0803D2B8:
	cmp r8, r7
	bne _0803D2CE
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803D2CE
	movs r2, 0x2
	str r2, [sp, 0x8]
	b _0803D2D6
_0803D2CE:
	cmp r8, r7
	bcs _0803D2D6
	movs r3, 0x1
_0803D2D4:
	str r3, [sp, 0x8]
_0803D2D6:
	ldr r0, [sp, 0x8]
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end GetWhoStrikesFirst

	thumb_func_start sub_803D2E8
sub_803D2E8: @ 803D2E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r3, 0
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0803D354
	ldr r0, =gActiveBank
	strb r3, [r0]
	ldr r4, =gNoOfAllBanks
	mov r8, r0
	ldrb r0, [r4]
	cmp r3, r0
	bcc _0803D310
	b _0803D54A
_0803D310:
	ldr r7, =gUnknown_0202407A
	ldr r6, =gActionForBanks
	mov r2, r8
	ldr r5, =gTurnOrder
_0803D318:
	adds r1, r3, r7
	ldrb r0, [r2]
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r3, r5
	ldrb r0, [r2]
	strb r0, [r1]
	adds r3, 0x1
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	cmp r0, r1
	bcc _0803D318
	b _0803D54A
	.pool
_0803D354:
	movs r2, 0x2
	ands r1, r2
	cmp r1, 0
	beq _0803D3A4
	ldr r0, =gActiveBank
	strb r3, [r0]
	ldr r1, =gNoOfAllBanks
	mov r8, r0
	adds r2, r1, 0
	ldrb r2, [r2]
	cmp r3, r2
	bcs _0803D3C0
	ldr r0, =gActionForBanks
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x3
	beq _0803D3BE
_0803D376:
	mov r7, r8
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gNoOfAllBanks
	ldrb r1, [r1]
	cmp r0, r1
	bcs _0803D3C0
	ldrb r0, [r7]
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803D376
	b _0803D3BE
	.pool
_0803D3A4:
	ldr r1, =gActionForBanks
	ldrb r0, [r1]
	ldr r4, =gActiveBank
	mov r8, r4
	cmp r0, 0x3
	bne _0803D3B4
	strb r3, [r4]
	movs r3, 0x5
_0803D3B4:
	ldrb r0, [r1, 0x2]
	cmp r0, 0x3
	bne _0803D3C0
	mov r7, r8
	strb r2, [r7]
_0803D3BE:
	movs r3, 0x5
_0803D3C0:
	cmp r3, 0x5
	bne _0803D448
	ldr r6, =gUnknown_0202407A
	ldr r1, =gActionForBanks
	mov r2, r8
	ldrb r0, [r2]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r2, =gTurnOrder
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r2]
	movs r3, 0x1
	movs r5, 0
	adds r4, r1, 0
	ldr r7, =gBattleMainFunc
	mov r10, r7
	ldr r0, =bc_80154A0
	mov r12, r0
	ldr r1, =gBattleStruct
	mov r9, r1
	ldr r7, =gNoOfAllBanks
	ldrb r7, [r7]
	cmp r5, r7
	bge _0803D41A
	adds r7, r6, 0
	adds r6, r4, 0
	adds r4, r2, 0
	ldr r2, =gNoOfAllBanks
_0803D3FC:
	mov r0, r8
	ldrb r0, [r0]
	cmp r5, r0
	beq _0803D412
	adds r1, r3, r7
	adds r0, r5, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, r4
	strb r5, [r0]
	adds r3, 0x1
_0803D412:
	adds r5, 0x1
	ldrb r1, [r2]
	cmp r5, r1
	blt _0803D3FC
_0803D41A:
	mov r2, r12
	mov r3, r10
	str r2, [r3]
	mov r4, r9
	ldr r0, [r4]
	b _0803D554
	.pool
_0803D448:
	movs r0, 0
	mov r7, r8
	strb r0, [r7]
	ldr r1, =gNoOfAllBanks
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803D48E
	ldr r6, =gActionForBanks
	mov r2, r8
	ldr r5, =gUnknown_0202407A
	ldr r4, =gTurnOrder
_0803D45E:
	ldrb r0, [r2]
	adds r0, r6
	ldrb r1, [r0]
	subs r0, r1, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _0803D47C
	adds r0, r3, r5
	strb r1, [r0]
	adds r1, r3, r4
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	adds r3, 0x1
_0803D47C:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gNoOfAllBanks
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803D45E
_0803D48E:
	movs r0, 0
	mov r2, r8
	strb r0, [r2]
	ldr r4, =gNoOfAllBanks
	ldrb r0, [r4]
	cmp r0, 0
	beq _0803D4D2
	ldr r6, =gActionForBanks
	ldr r5, =gUnknown_0202407A
	ldr r4, =gTurnOrder
_0803D4A2:
	ldrb r0, [r2]
	adds r0, r6
	ldrb r1, [r0]
	subs r0, r1, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0803D4C0
	adds r0, r3, r5
	strb r1, [r0]
	adds r1, r3, r4
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	adds r3, 0x1
_0803D4C0:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gNoOfAllBanks
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803D4A2
_0803D4D2:
	movs r5, 0
	b _0803D540
	.pool
_0803D4E8:
	adds r4, r5, 0x1
	adds r7, r4, 0
	ldrb r1, [r1]
	cmp r7, r1
	bge _0803D53E
	ldr r6, =gUnknown_0202407A
	lsls r2, r5, 24
	mov r8, r2
_0803D4F8:
	ldr r0, =gTurnOrder
	adds r1, r5, r0
	ldrb r3, [r1]
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, r6
	ldrb r2, [r0]
	cmp r2, 0x1
	beq _0803D534
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0803D534
	cmp r2, 0x2
	beq _0803D534
	cmp r0, 0x2
	beq _0803D534
	adds r0, r3, 0
	movs r2, 0
	bl GetWhoStrikesFirst
	lsls r0, 24
	cmp r0, 0
	beq _0803D534
	lsls r1, r4, 24
	lsrs r1, 24
	mov r3, r8
	lsrs r0, r3, 24
	bl sub_803CEDC
_0803D534:
	adds r4, 0x1
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803D4F8
_0803D53E:
	adds r5, r7, 0
_0803D540:
	ldr r1, =gNoOfAllBanks
	ldrb r0, [r1]
	subs r0, 0x1
	cmp r5, r0
	blt _0803D4E8
_0803D54A:
	ldr r1, =gBattleMainFunc
	ldr r0, =bc_80154A0
	str r0, [r1]
	ldr r0, =gBattleStruct
	ldr r0, [r0]
_0803D554:
	adds r0, 0x48
	movs r1, 0
	strb r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803D2E8

	thumb_func_start TurnValuesCleanUp
TurnValuesCleanUp: @ 803D580
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r1, =gActiveBank
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gNoOfAllBanks
	ldrb r2, [r0]
	adds r5, r1, 0
	cmp r2, 0
	beq _0803D678
	ldr r7, =gProtectStructs
	adds r6, r5, 0
	ldr r0, =gBattleMons + 0x50
	mov r12, r0
	ldr r1, =gDisableStructs
	mov r8, r1
	mov r10, r8
_0803D5AE:
	mov r2, r9
	cmp r2, 0
	beq _0803D5EC
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	b _0803D648
	.pool
_0803D5EC:
	ldrb r0, [r6]
	lsls r0, 4
	adds r2, r0, r7
	movs r1, 0
	mov r4, r10
	movs r3, 0
_0803D5F8:
	adds r0, r2, r1
	strb r3, [r0]
	adds r1, 0x1
	cmp r1, 0xF
	bls _0803D5F8
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x16]
	cmp r0, 0
	beq _0803D616
	subs r0, 0x1
	strb r0, [r1, 0x16]
_0803D616:
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x19]
	cmp r0, 0
	beq _0803D648
	subs r0, 0x1
	strb r0, [r1, 0x19]
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x19]
	cmp r0, 0
	bne _0803D648
	movs r0, 0x58
	muls r2, r0
	add r2, r12
	ldr r0, [r2]
	ldr r1, =0xffbfffff
	ands r0, r1
	str r0, [r2]
_0803D648:
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0xA]
	cmp r0, 0
	bne _0803D666
	movs r0, 0x58
	muls r2, r0
	add r2, r12
	ldr r0, [r2]
	ldr r1, =0xfeffffff
	ands r0, r1
	str r0, [r2]
_0803D666:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gNoOfAllBanks
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803D5AE
_0803D678:
	movs r0, 0
	ldr r2, =gSideTimers
	strb r0, [r2, 0x8]
	strb r0, [r2, 0x14]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end TurnValuesCleanUp

	thumb_func_start SpecialStatusesClear
SpecialStatusesClear: @ 803D6A0
	push {r4-r6,lr}
	ldr r2, =gActiveBank
	movs r0, 0
	strb r0, [r2]
	ldr r0, =gNoOfAllBanks
	ldrb r1, [r0]
	adds r6, r0, 0
	cmp r1, 0
	beq _0803D6DE
	adds r3, r2, 0
	movs r4, 0
	ldr r5, =gSpecialStatuses
_0803D6B8:
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, r0, r5
	movs r1, 0
_0803D6C4:
	adds r0, r2, r1
	strb r4, [r0]
	adds r1, 0x1
	cmp r1, 0x13
	bls _0803D6C4
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6]
	cmp r0, r1
	bcc _0803D6B8
_0803D6DE:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end SpecialStatusesClear

	thumb_func_start bc_80154A0
bc_80154A0: @ 803D6F0
	push {r4-r7,lr}
	ldr r0, =gHitMarker
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	bne _0803D7AE
	ldr r2, =gBattleStruct
	ldr r0, [r2]
	adds r0, 0x48
	ldr r1, =gNoOfAllBanks
	ldrb r0, [r0]
	mov r12, r2
	adds r6, r1, 0
	ldrb r1, [r6]
	cmp r0, r1
	bcs _0803D7AE
	ldr r5, =gActiveBank
	ldr r4, =gBankAttacker
	movs r7, 0x84
	lsls r7, 1
_0803D71C:
	ldr r1, [r2]
	adds r1, 0x48
	ldrb r0, [r1]
	strb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, =gChosenMovesByBanks
	ldrb r3, [r5]
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r7
	bne _0803D7A0
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0803D7A0
	ldr r2, =gDisableStructs
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x18]
	lsls r0, 31
	cmp r0, 0
	bne _0803D7A0
	ldr r0, =gProtectStructs
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	blt _0803D7A0
	ldr r0, =gUnknown_082DB1FF
	bl BattleScriptExecute
	b _0803D7E8
	.pool
_0803D7A0:
	mov r2, r12
	ldr r0, [r2]
	adds r0, 0x48
	ldrb r0, [r0]
	ldrb r1, [r6]
	cmp r0, r1
	bcc _0803D71C
_0803D7AE:
	bl b_clear_atk_up_if_hit_flag_unless_enraged
	ldr r1, =gCurrentMoveTurn
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gFightStateTracker
	ldr r0, =gUnknown_0202407A
	movs r3, 0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, =gDynamicBasePower
	movs r2, 0
	strh r3, [r0]
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	strb r2, [r0, 0x13]
	ldr r1, =gBattleMainFunc
	ldr r0, =bc_bs_exec
	str r0, [r1]
	ldr r0, =gBattleCommunication
	strb r2, [r0, 0x3]
	strb r2, [r0, 0x4]
	ldr r0, =gBattleScripting
	strb r2, [r0, 0x16]
	ldr r0, =gBattleResources
	ldr r0, [r0]
	ldr r0, [r0, 0x8]
	adds r0, 0x20
	strb r2, [r0]
_0803D7E8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_80154A0

	thumb_func_start bc_bs_exec
bc_bs_exec: @ 803D818
	push {r4-r6,lr}
	ldr r6, =gBattleOutcome
	ldrb r0, [r6]
	ldr r2, =gFightStateTracker
	cmp r0, 0
	beq _0803D828
	movs r0, 0xC
	strb r0, [r2]
_0803D828:
	ldr r5, =gBattleStruct
	ldr r0, [r5]
	adds r0, 0x4B
	ldr r4, =gCurrentMoveTurn
	ldrb r1, [r4]
	strb r1, [r0]
	ldr r1, =gUnknown_0831BC0C
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, =gNoOfAllBanks
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _0803D894
	ldr r2, =gHitMarker
	ldr r0, [r2]
	ldr r1, =0xffefffff
	ands r0, r1
	str r0, [r2]
	ldr r3, =gBattleMainFunc
	ldr r2, =gUnknown_0831BC44
	ldrb r1, [r6]
	movs r0, 0x7F
	ands r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	str r0, [r3]
	b _0803D8AC
	.pool
_0803D894:
	ldr r0, [r5]
	adds r0, 0x4B
	ldrb r0, [r0]
	cmp r0, r1
	beq _0803D8AC
	ldr r2, =gHitMarker
	ldr r0, [r2]
	ldr r1, =0xfffffdff
	ands r0, r1
	ldr r1, =0xfff7ffff
	ands r0, r1
	str r0, [r2]
_0803D8AC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_bs_exec

	thumb_func_start HandleEndTurn_BattleWon
HandleEndTurn_BattleWon: @ 803D8C0
	push {r4,lr}
	ldr r1, =gFightStateTracker
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	ldr r0, =0x02000002
	ands r0, r2
	cmp r0, 0
	beq _0803D920
	ldr r1, =gScriptResult
	ldr r4, =gBattleOutcome
	ldrb r0, [r4]
	strh r0, [r1]
	ldr r1, =gBattleTextBuff1
	ldrb r0, [r4]
	strb r0, [r1]
	movs r0, 0
	bl GetBankByIdentity
	ldr r1, =gBankAttacker
	strb r0, [r1]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAA35
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4]
	b _0803DAA4
	.pool
_0803D920:
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _0803D95C
	ldr r0, =0x043f0900
	ands r2, r0
	cmp r2, 0
	beq _0803D95C
	bl BattleMusicStop
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAA87
	str r0, [r1]
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r1, [r0]
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _0803D946
	b _0803DA8A
_0803D946:
	b _0803DA94
	.pool
_0803D95C:
	ldr r0, [r1]
	movs r1, 0xA
	ands r0, r1
	cmp r0, 0x8
	beq _0803D968
	b _0803DA9E
_0803D968:
	bl BattleMusicStop
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DA92D
	str r0, [r1]
	ldr r2, =gTrainers
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	subs r0, 0x3
	cmp r0, 0x32
	bls _0803D98A
	b _0803DA94
_0803D98A:
	lsls r0, 2
	ldr r1, =_0803D9A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803D9A8:
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA74
	.4byte _0803DA8A
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA74
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA80
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA94
	.4byte _0803DA80
_0803DA74:
	ldr r0, =0x00000163
	bl PlayBGM
	b _0803DAA4
	.pool
_0803DA80:
	movs r0, 0xD4
	lsls r0, 1
	bl PlayBGM
	b _0803DAA4
_0803DA8A:
	movs r0, 0xB1
	lsls r0, 1
	bl PlayBGM
	b _0803DAA4
_0803DA94:
	movs r0, 0xCE
	lsls r0, 1
	bl PlayBGM
	b _0803DAA4
_0803DA9E:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DA96A
	str r0, [r1]
_0803DAA4:
	ldr r1, =gBattleMainFunc
	ldr r0, =HandleEndTurn_FinishBattle
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end HandleEndTurn_BattleWon

	thumb_func_start HandleEndTurn_BattleLost
HandleEndTurn_BattleLost: @ 803DAC0
	push {r4,lr}
	ldr r1, =gFightStateTracker
	movs r0, 0
	strb r0, [r1]
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x02000002
	ands r0, r1
	cmp r0, 0
	beq _0803DB7C
	ldr r0, =0x003f0100
	ands r1, r0
	cmp r1, 0
	beq _0803DB44
	ldr r3, =gBattleOutcome
	ldrb r2, [r3]
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _0803DB2C
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DB9C8
	str r0, [r1]
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r3]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1]
	b _0803DB82
	.pool
_0803DB2C:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAA0B
	str r0, [r1]
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r3]
	b _0803DB82
	.pool
_0803DB44:
	ldr r1, =gBattleTextBuff1
	ldr r4, =gBattleOutcome
	ldrb r0, [r4]
	strb r0, [r1]
	movs r0, 0
	bl GetBankByIdentity
	ldr r1, =gBankAttacker
	strb r0, [r1]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAA35
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4]
	b _0803DB82
	.pool
_0803DB7C:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DA96D
	str r0, [r1]
_0803DB82:
	ldr r1, =gBattleMainFunc
	ldr r0, =HandleEndTurn_FinishBattle
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end HandleEndTurn_BattleLost

	thumb_func_start HandleEndTurn_RanFromBattle
HandleEndTurn_RanFromBattle: @ 803DBA0
	push {lr}
	ldr r1, =gFightStateTracker
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	ldr r0, =0x003f0100
	ands r0, r2
	cmp r0, 0
	beq _0803DBFC
	movs r0, 0x8
	ands r2, r0
	cmp r2, 0
	beq _0803DBFC
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DB9C1
	str r0, [r1]
	ldr r1, =gBattleOutcome
	movs r0, 0x9
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1]
	b _0803DC6A
	.pool
_0803DBFC:
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 19
	ands r0, r1
	cmp r0, 0
	beq _0803DC24
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DB9C1
	str r0, [r1]
	ldr r1, =gBattleOutcome
	movs r0, 0x9
	strb r0, [r1]
	b _0803DC6A
	.pool
_0803DC24:
	ldr r1, =gProtectStructs
	ldr r0, =gBankAttacker
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 27
	lsrs r0, 30
	cmp r0, 0x1
	beq _0803DC54
	cmp r0, 0x2
	beq _0803DC64
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAAF0
	b _0803DC68
	.pool
_0803DC54:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAADB
	b _0803DC68
	.pool
_0803DC64:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAAE9
_0803DC68:
	str r0, [r1]
_0803DC6A:
	ldr r1, =gBattleMainFunc
	ldr r0, =HandleEndTurn_FinishBattle
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end HandleEndTurn_RanFromBattle

	thumb_func_start HandleEndTurn_MonFled
HandleEndTurn_MonFled: @ 803DC84
	ldr r1, =gFightStateTracker
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gBattleTextBuff1
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	ldr r2, =gBankAttacker
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, =gBattlePartyID
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAAF7
	str r0, [r1]
	ldr r1, =gBattleMainFunc
	ldr r0, =HandleEndTurn_FinishBattle
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end HandleEndTurn_MonFled

	thumb_func_start HandleEndTurn_FinishBattle
HandleEndTurn_FinishBattle: @ 803DCD8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gFightStateTracker
	ldrb r0, [r0]
	subs r0, 0xB
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0803DCEE
	b _0803DE10
_0803DCEE:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	ldr r0, =0x023f0b92
	ands r1, r0
	cmp r1, 0
	bne _0803DDB6
	ldr r2, =gActiveBank
	strb r1, [r2]
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	cmp r1, r0
	bcs _0803DDB2
	adds r5, r2, 0
	ldr r0, =gBattlePartyID
	mov r8, r0
	movs r7, 0x64
	ldr r6, =gPlayerParty
_0803DD10:
	ldrb r0, [r5]
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803DDA0
	ldr r4, =gBattleResults
	ldrh r0, [r4, 0x6]
	cmp r0, 0
	bne _0803DD74
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	strh r0, [r4, 0x6]
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0x2
	adds r2, r4, 0
	adds r2, 0x8
	bl GetMonData
	b _0803DDA0
	.pool
_0803DD74:
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	strh r0, [r4, 0x26]
	ldrb r0, [r5]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	muls r0, r7
	adds r0, r6
	movs r1, 0x2
	adds r2, r4, 0
	adds r2, 0x14
	bl GetMonData
_0803DDA0:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r1, =gNoOfAllBanks
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803DD10
_0803DDB2:
	bl sub_80EC728
_0803DDB6:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x023f0b9a
	ands r0, r1
	cmp r0, 0
	bne _0803DDD2
	ldr r0, =gBattleResults
	ldrb r1, [r0, 0x5]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0803DDD2
	bl sub_80EE184
_0803DDD2:
	bl sub_8186444
	movs r0, 0x3
	bl BeginFastPaletteFade
	movs r0, 0x5
	bl FadeOutMapMusic
	ldr r1, =gBattleMainFunc
	ldr r0, =sub_803DE40
	str r0, [r1]
	ldr r1, =gUnknown_030061E8
	ldr r0, =BattleMainCB2
	str r0, [r1]
	b _0803DE2A
	.pool
_0803DE10:
	ldr r0, =gBattleExecBuffer
	ldr r0, [r0]
	cmp r0, 0
	bne _0803DE2A
	ldr r1, =gBattleScriptingCommandsTable
	ldr r0, =gBattlescriptCurrInstr
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0803DE2A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end HandleEndTurn_FinishBattle

	thumb_func_start sub_803DE40
sub_803DE40: @ 803DE40
	push {lr}
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0803DE86
	bl ResetSpriteData
	ldr r0, =gLeveledUpInBattle
	ldrb r0, [r0]
	cmp r0, 0
	beq _0803DE62
	ldr r0, =gBattleOutcome
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0803DE80
_0803DE62:
	ldr r1, =gBattleMainFunc
	ldr r0, =c4_overworld
	str r0, [r1]
	b _0803DEA2
	.pool
_0803DE80:
	ldr r1, =gBattleMainFunc
	ldr r0, =bc_evolution_cutscene
	str r0, [r1]
_0803DE86:
	bl FreeAllWindowBuffers
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0803DEA2
	bl FreeMonSpritesGfx
	bl FreeBattleResources
	bl FreeBattleSpritesData
_0803DEA2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DE40

	thumb_func_start bc_evolution_cutscene
bc_evolution_cutscene: @ 803DEB4
	push {r4-r6,lr}
	ldr r0, =gLeveledUpInBattle
	ldrb r1, [r0]
	adds r3, r0, 0
	cmp r1, 0
	beq _0803DF2E
_0803DEC0:
	movs r6, 0
_0803DEC2:
	ldrb r2, [r3]
	ldr r0, =gBitTable
	lsls r1, r6, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0803DF20
	bics r2, r1
	strb r2, [r3]
	movs r0, 0x64
	adds r1, r6, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0
	bl GetEvolutionTargetSpecies
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _0803DF20
	bl FreeAllWindowBuffers
	ldr r0, =gBattleMainFunc
	ldr r1, =sub_803DF48
	str r1, [r0]
	lsls r3, r6, 24
	lsrs r3, 24
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl evolution_cutscene
	b _0803DF34
	.pool
_0803DF20:
	adds r6, 0x1
	ldr r3, =gLeveledUpInBattle
	cmp r6, 0x5
	ble _0803DEC2
	ldrb r0, [r3]
	cmp r0, 0
	bne _0803DEC0
_0803DF2E:
	ldr r1, =gBattleMainFunc
	ldr r0, =c4_overworld
	str r0, [r1]
_0803DF34:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_evolution_cutscene

	thumb_func_start sub_803DF48
sub_803DF48: @ 803DF48
	push {lr}
	ldr r0, =gMain
	ldr r1, [r0, 0x4]
	ldr r0, =BattleMainCB2
	cmp r1, r0
	bne _0803DF5A
	ldr r1, =gBattleMainFunc
	ldr r0, =bc_evolution_cutscene
	str r0, [r1]
_0803DF5A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803DF48

	thumb_func_start c4_overworld
c4_overworld: @ 803DF70
	push {r4-r6,lr}
	ldr r6, =gBattleTypeFlags
	ldr r0, [r6]
	movs r5, 0x2
	ands r0, r5
	cmp r0, 0
	bne _0803DF8C
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	bl RandomlyGivePartyPokerus
	adds r0, r4, 0
	bl PartySpreadPokerus
_0803DF8C:
	ldr r4, [r6]
	adds r0, r4, 0
	ands r0, r5
	cmp r0, 0
	beq _0803DF9E
	ldr r0, =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _0803DFEC
_0803DF9E:
	ldr r1, =gScriptResult
	ldr r5, =gBattleOutcome
	ldrb r0, [r5]
	strh r0, [r1]
	ldr r3, =gMain
	ldr r0, =0x00000439
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, =gPreBattleCallback1
	ldr r0, [r0]
	str r0, [r3]
	movs r0, 0x80
	lsls r0, 3
	ands r4, r0
	cmp r4, 0
	beq _0803DFDE
	ldr r0, =gEnemyParty
	bl UpdateRoamerHPStatus
	ldrb r1, [r5]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0803DFDA
	cmp r1, 0x7
	bne _0803DFDE
_0803DFDA:
	bl SetRoamerInactive
_0803DFDE:
	movs r0, 0x5A
	bl m4aSongNumStop
	ldr r0, =gMain
	ldr r0, [r0, 0x8]
	bl SetMainCallback2
_0803DFEC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end c4_overworld

	thumb_func_start bc_move_exec_returning
bc_move_exec_returning: @ 803E018
	push {lr}
	ldr r0, =gFightStateTracker
	ldrb r0, [r0]
	subs r0, 0xB
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _0803E060
	ldr r3, =gBattleResources
	ldr r0, [r3]
	ldr r0, [r0, 0xC]
	adds r1, r0, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803E03C
	subs r0, 0x1
	strb r0, [r1]
_0803E03C:
	ldr r2, =gBattleMainFunc
	ldr r0, [r3]
	ldr r1, [r0, 0xC]
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 2
	adds r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _0803E07A
	.pool
_0803E060:
	ldr r0, =gBattleExecBuffer
	ldr r0, [r0]
	cmp r0, 0
	bne _0803E07A
	ldr r1, =gBattleScriptingCommandsTable
	ldr r0, =gBattlescriptCurrInstr
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0803E07A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_move_exec_returning

	thumb_func_start sub_803E08C
sub_803E08C: @ 803E08C
	push {lr}
	ldr r0, =gBattleExecBuffer
	ldr r0, [r0]
	cmp r0, 0
	bne _0803E0A8
	ldr r1, =gBattleScriptingCommandsTable
	ldr r0, =gBattlescriptCurrInstr
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0803E0A8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803E08C

	thumb_func_start sub_803E0B8
sub_803E0B8: @ 803E0B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r0, 0x4
	str r0, [sp]
	ldr r6, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r1, =gBattleStruct
	ldr r3, [r1]
	adds r0, r3, 0
	adds r0, 0x91
	ldrb r2, [r0]
	ldr r1, =gBitTable
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	beq _0803E110
	ldr r1, =gFightStateTracker
	movs r0, 0xC
	b _0803E83C
	.pool
_0803E110:
	ldr r1, =gCritMultiplier
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, =gBattleScripting
	movs r0, 0x1
	strb r0, [r1, 0xE]
	ldr r5, =0x000001a3
	adds r0, r3, r5
	strb r2, [r0]
	ldr r0, =gBattleMoveFlags
	strb r2, [r0]
	ldr r0, =gMultiHitCounter
	strb r2, [r0]
	ldr r0, =gBattleCommunication
	strb r2, [r0, 0x6]
	ldr r2, =gCurrMovePos
	ldr r0, =gUnknown_020241E9
	mov r9, r0
	ldrb r0, [r6]
	ldr r3, =gBattleStruct
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0x80
	ldrb r0, [r0]
	mov r5, r9
	strb r0, [r5]
	strb r0, [r2]
	ldr r1, =gProtectStructs
	ldrb r4, [r6]
	lsls r0, r4, 4
	adds r3, r0, r1
	ldrb r1, [r3]
	lsls r0, r1, 29
	mov r8, r2
	cmp r0, 0
	bge _0803E1BC
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	ldr r2, =gCurrentMove
	ldr r1, =gLastUsedMove
	movs r0, 0xA5
	strh r0, [r1]
	strh r0, [r2]
	ldr r2, =gHitMarker
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 4
	orrs r0, r1
	str r0, [r2]
	movs r0, 0xA5
	movs r1, 0
	bl GetMoveTarget
	ldrb r1, [r6]
	ldr r3, =gBattleStruct
	ldr r2, [r3]
	b _0803E316
	.pool
_0803E1BC:
	ldr r5, =gBattleMons
	mov r10, r5
	movs r0, 0x58
	adds r5, r4, 0
	muls r5, r0
	mov r0, r10
	adds r0, 0x50
	adds r0, r5, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	bne _0803E1E2
	movs r7, 0x80
	lsls r7, 15
	ands r7, r1
	cmp r7, 0
	beq _0803E204
_0803E1E2:
	ldr r3, =gCurrentMove
	ldr r2, =gLastUsedMove
	ldr r1, =gLockedMoves
	lsls r0, r4, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	strh r0, [r3]
	b _0803E33C
	.pool
_0803E204:
	ldr r1, =gDisableStructs
	mov r12, r1
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	add r0, r12
	ldrh r3, [r0, 0x6]
	adds r1, r3, 0
	cmp r1, 0
	beq _0803E2DC
	ldrb r2, [r0, 0xC]
	lsls r0, r2, 1
	adds r0, r5
	mov r4, r10
	adds r4, 0xC
	adds r0, r4
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803E268
	ldr r2, =gCurrentMove
	ldr r0, =gLastUsedMove
	strh r3, [r0]
	strh r3, [r2]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xC]
	mov r3, r9
	strb r0, [r3]
	mov r5, r8
	strb r0, [r5]
	ldrh r0, [r2]
	movs r1, 0
	bl GetMoveTarget
	ldrb r1, [r6]
	ldr r3, =gBattleStruct
	ldr r2, [r3]
	b _0803E316
	.pool
_0803E268:
	cmp r1, 0
	beq _0803E2DC
	cmp r1, r0
	beq _0803E2DC
	mov r5, r9
	strb r2, [r5]
	mov r0, r8
	strb r2, [r0]
	ldr r3, =gCurrentMove
	ldr r2, =gLastUsedMove
	ldrb r0, [r0]
	lsls r0, 1
	ldrb r1, [r6]
	movs r5, 0x58
	muls r1, r5
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	movs r2, 0
	strh r7, [r0, 0x6]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	strb r2, [r0, 0xC]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	ldrb r2, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xE]
	ldrh r0, [r3]
	movs r1, 0
	bl GetMoveTarget
	ldrb r1, [r6]
	ldr r3, =gBattleStruct
	ldr r2, [r3]
	b _0803E316
	.pool
_0803E2DC:
	ldr r3, =gBattleMons
	mov r5, r8
	ldrb r0, [r5]
	lsls r0, 1
	ldr r4, =gBankAttacker
	ldrb r2, [r4]
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	adds r3, 0xC
	adds r0, r3
	ldr r1, =gChosenMovesByBanks
	lsls r2, 1
	adds r2, r1
	ldrh r3, [r0]
	ldrh r2, [r2]
	cmp r3, r2
	beq _0803E334
	ldr r1, =gCurrentMove
	ldr r0, =gLastUsedMove
	strh r3, [r0]
	strh r3, [r1]
	ldrh r0, [r1]
	movs r1, 0
	bl GetMoveTarget
	ldrb r1, [r4]
	ldr r2, =gBattleStruct
	ldr r2, [r2]
_0803E316:
	adds r1, r2
	strb r0, [r1, 0xC]
	b _0803E33C
	.pool
_0803E334:
	ldr r1, =gCurrentMove
	ldr r0, =gLastUsedMove
	strh r3, [r0]
	strh r3, [r1]
_0803E33C:
	ldr r2, =gBattleMons
	ldr r1, =gBankAttacker
	ldrb r3, [r1]
	movs r0, 0x58
	muls r0, r3
	adds r0, r2
	ldrh r0, [r0, 0x28]
	mov r8, r1
	cmp r0, 0
	beq _0803E384
	adds r0, r3, 0
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803E37C
	ldr r0, =gBattleResults
	ldr r1, =gCurrentMove
	ldrh r1, [r1]
	strh r1, [r0, 0x22]
	b _0803E384
	.pool
_0803E37C:
	ldr r0, =gBattleResults
	ldr r1, =gCurrentMove
	ldrh r1, [r1]
	strh r1, [r0, 0x24]
_0803E384:
	mov r1, r8
	ldrb r0, [r1]
	bl GetBankSide
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gSideTimers
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r5, r0, r1
	ldrb r0, [r5, 0x8]
	cmp r0, 0
	beq _0803E400
	ldr r2, =gBattleMoves
	ldr r0, =gCurrentMove
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	cmp r0, 0
	bne _0803E400
	mov r3, r8
	ldrb r0, [r3]
	bl GetBankSide
	adds r4, r0, 0
	ldrb r0, [r5, 0x9]
	bl GetBankSide
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E400
	ldr r1, =gBattleMons
	ldrb r2, [r5, 0x9]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0803E400
	ldr r0, =gBankTarget
	strb r2, [r0]
	b _0803E76A
	.pool
_0803E400:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x1
	ands r0, r1
	ldr r5, =gBankAttacker
	mov r8, r5
	cmp r0, 0
	bne _0803E412
	b _0803E6E0
_0803E412:
	ldr r1, =gSideTimers
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x8]
	cmp r5, 0
	beq _0803E424
	b _0803E630
_0803E424:
	ldr r2, =gBattleMoves
	ldr r0, =gCurrentMove
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r4, r0, r2
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _0803E440
	ldrb r0, [r4, 0x6]
	cmp r0, 0x10
	bne _0803E440
	b _0803E630
_0803E440:
	ldr r3, =gBattleMons
	ldr r2, =gBankAttacker
	ldrb r6, [r2]
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	adds r0, r6, r0
	ldrb r1, [r0, 0xC]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, 0x1F
	bne _0803E460
	b _0803E630
_0803E460:
	ldrb r0, [r4, 0x2]
	cmp r0, 0xD
	beq _0803E468
	b _0803E630
_0803E468:
	adds r0, r6, 0
	bl GetBankSide
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gActiveBank
	strb r5, [r1]
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	cmp r5, r0
	bcs _0803E4E0
	adds r4, r1, 0
_0803E480:
	ldrb r0, [r4]
	bl GetBankSide
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _0803E4CE
	ldr r0, =gBankAttacker
	ldrb r1, [r0]
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	adds r1, r0
	ldrb r0, [r1, 0xC]
	ldrb r1, [r4]
	cmp r0, r1
	beq _0803E4CE
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1F
	bne _0803E4CE
	adds r0, r2, 0
	bl BankGetTurnOrder
	lsls r0, 24
	lsrs r0, 24
	ldr r3, [sp]
	cmp r0, r3
	bcs _0803E4CE
	ldrb r0, [r4]
	bl BankGetTurnOrder
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
_0803E4CE:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gNoOfAllBanks
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803E480
_0803E4E0:
	ldr r5, [sp]
	cmp r5, 0x4
	beq _0803E4E8
	b _0803E5E2
_0803E4E8:
	ldr r2, =gBattleMoves
	ldr r0, =gLastUsedMove
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	ands r5, r0
	cmp r5, 0
	beq _0803E568
	ldr r0, =gBankAttacker
	ldrb r0, [r0]
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803E548
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803E544
	movs r0, 0x1
	b _0803E55A
	.pool
_0803E544:
	movs r0, 0x3
	b _0803E55A
_0803E548:
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803E558
	movs r0, 0
	b _0803E55A
_0803E558:
	movs r0, 0x2
_0803E55A:
	bl GetBankByIdentity
	ldr r1, =gBankTarget
	strb r0, [r1]
	b _0803E578
	.pool
_0803E568:
	ldr r2, =gBankTarget
	ldr r0, =gBankAttacker
	ldrb r0, [r0]
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	adds r0, r1
	ldrb r0, [r0, 0xC]
	strb r0, [r2]
_0803E578:
	ldr r7, =gAbsentBankFlags
	ldrb r0, [r7]
	ldr r1, =gBitTable
	mov r8, r1
	ldr r5, =gBankTarget
	ldrb r1, [r5]
	lsls r1, 2
	add r1, r8
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _0803E592
	b _0803E76A
_0803E592:
	ldr r6, =gBankAttacker
	ldrb r0, [r6]
	bl GetBankSide
	adds r4, r0, 0
	ldrb r0, [r5]
	bl GetBankSide
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E5C4
	ldrb r0, [r5]
	b _0803E758
	.pool
_0803E5C4:
	ldrb r0, [r6]
	bl GetBankIdentity
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	strb r0, [r5]
	ldrb r1, [r7]
	ldrb r2, [r5]
	lsls r0, r2, 2
	add r0, r8
	b _0803E74E
_0803E5E2:
	ldr r4, =gActiveBank
	ldr r0, =gTurnOrder
	ldr r3, [sp]
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r0, [r4]
	ldr r2, =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r1, r2
	adds r1, 0x20
	ldrb r1, [r1]
	bl RecordAbilityBattle
	ldr r2, =gSpecialStatuses
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
	ldr r1, =gBankTarget
	ldrb r0, [r4]
	strb r0, [r1]
	b _0803E76A
	.pool
_0803E630:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r4, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0803E6E0
	ldr r2, =gBattleMoves
	ldr r0, =gLastUsedMove
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0803E6E0
	mov r5, r8
	ldrb r0, [r5]
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803E684
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _0803E680
	movs r0, 0x1
	b _0803E696
	.pool
_0803E680:
	movs r0, 0x3
	b _0803E696
_0803E684:
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _0803E694
	movs r0, 0
	b _0803E696
_0803E694:
	movs r0, 0x2
_0803E696:
	bl GetBankByIdentity
	ldr r1, =gBankTarget
	strb r0, [r1]
	ldr r0, =gAbsentBankFlags
	ldrb r1, [r0]
	ldr r2, =gBitTable
	ldr r5, =gBankTarget
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803E76A
	ldr r0, =gBankAttacker
	ldrb r0, [r0]
	bl GetBankSide
	adds r4, r0, 0
	ldrb r0, [r5]
	bl GetBankSide
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E76A
	ldrb r0, [r5]
	b _0803E758
	.pool
_0803E6E0:
	ldr r5, =gBankTarget
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	adds r0, r1
	ldrb r0, [r0, 0xC]
	strb r0, [r5]
	ldr r6, =gAbsentBankFlags
	ldrb r1, [r6]
	ldr r7, =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803E76A
	ldrb r0, [r2]
	bl GetBankSide
	adds r4, r0, 0
	ldrb r0, [r5]
	bl GetBankSide
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0803E730
	ldrb r0, [r5]
	b _0803E758
	.pool
_0803E730:
	mov r1, r8
	ldrb r0, [r1]
	bl GetBankIdentity
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	strb r0, [r5]
	ldrb r1, [r6]
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r7
_0803E74E:
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0803E76A
	adds r0, r2, 0
_0803E758:
	bl GetBankIdentity
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl GetBankByIdentity
	strb r0, [r5]
_0803E76A:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 10
	ands r1, r2
	adds r5, r0, 0
	cmp r1, 0
	beq _0803E808
	ldr r0, =gProtectStructs
	ldr r4, =gBankAttacker
	ldrb r2, [r4]
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	lsls r0, 27
	cmp r0, 0
	bge _0803E808
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0803E7B4
	ldr r1, =gFightStateTracker
	movs r0, 0xC
	b _0803E83C
	.pool
_0803E7B4:
	ldr r3, =gUnknown_02024230
	lsls r0, r2, 2
	adds r0, r3
	ldr r0, [r0]
	cmp r0, 0
	beq _0803E7EC
	ldr r1, =gBattleCommunication
	movs r2, 0
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, =gBattlescriptCurrInstr
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r3
	str r2, [r0]
	b _0803E824
	.pool
_0803E7EC:
	ldr r1, =gBattleCommunication
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =BattleScript_MoveUsedLoafingAround
	str r0, [r1]
	b _0803E824
	.pool
_0803E808:
	ldr r4, =gBattlescriptCurrInstr
	ldr r3, =gBattleScriptsForMoveEffects
	ldr r2, =gBattleMoves
	ldr r0, =gCurrentMove
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r4]
_0803E824:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	beq _0803E838
	ldr r0, =gBankAttacker
	ldrb r0, [r0]
	bl sub_81A56E8
_0803E838:
	ldr r1, =gFightStateTracker
	movs r0, 0xA
_0803E83C:
	strb r0, [r1]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803E0B8

	thumb_func_start bs2_8016374
bs2_8016374: @ 803E868
	push {r4,lr}
	ldr r3, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, =gBattle_BG0_X
	movs r2, 0
	strh r2, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r2, [r0]
	ldr r1, =gActionSelectionCursor
	ldrb r0, [r3]
	adds r0, r1
	strb r2, [r0]
	ldr r1, =gMoveSelectionCursor
	ldrb r0, [r3]
	adds r0, r1
	strb r2, [r0]
	ldr r2, =gBattleTextBuff1
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x7
	strb r0, [r2, 0x1]
	ldrb r4, [r3]
	strb r4, [r2, 0x2]
	ldrb r0, [r3]
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	adds r0, r1
	adds r0, 0x58
	ldrb r0, [r0]
	strb r0, [r2, 0x3]
	movs r0, 0xFF
	strb r0, [r2, 0x4]
	ldr r0, =gBattleScripting
	strb r4, [r0, 0x17]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAB15
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	strb r0, [r1]
	ldr r1, =gBattleResults
	ldrb r0, [r1, 0x2]
	cmp r0, 0xFE
	bhi _0803E8CE
	adds r0, 0x1
	strb r0, [r1, 0x2]
_0803E8CE:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bs2_8016374

	thumb_func_start sub_803E90C
sub_803E90C: @ 803E90C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, =gBankAttacker
	ldr r2, =gBankTarget
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	strb r0, [r4]
	ldr r0, =gBattle_BG0_X
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r1, [r0]
	ldrb r0, [r4]
	bl sub_8045868
	ldr r5, =gLastUsedItem
	ldr r2, =gBattleBufferB
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	strh r3, [r5]
	cmp r3, 0xC
	bhi _0803E998
	ldr r2, =gBattlescriptCurrInstr
	ldr r1, =gUnknown_082DBD08
	ldrh r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, =gFightStateTracker
	mov r10, r0
	b _0803EBF6
	.pool
_0803E998:
	adds r0, r3, 0
	subs r0, 0x50
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bhi _0803E9C0
	ldr r0, =gBattlescriptCurrInstr
	ldr r1, =gUnknown_082DBD54
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, =gFightStateTracker
	mov r10, r1
	b _0803EBF6
	.pool
_0803E9C0:
	ldrb r0, [r4]
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803E9E8
	ldr r0, =gBattlescriptCurrInstr
	ldr r1, =gUnknown_082DBD3C
	ldr r1, [r1]
	str r1, [r0]
	ldr r2, =gFightStateTracker
	mov r10, r2
	b _0803EBF6
	.pool
_0803E9E8:
	ldr r3, =gBattleScripting
	ldrb r0, [r4]
	strb r0, [r3, 0x17]
	lsls r0, 24
	lsrs r0, 25
	ldr r2, =gBattleStruct
	ldr r1, [r2]
	adds r0, r1
	adds r0, 0xC4
	ldrb r0, [r0]
	subs r0, 0x1
	mov r8, r4
	ldr r1, =gBattlescriptCurrInstr
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	mov r12, r3
	adds r7, r2, 0
	ldr r2, =gFightStateTracker
	mov r10, r2
	cmp r0, 0x4
	bls _0803EA14
	b _0803EBDE
_0803EA14:
	lsls r0, 2
	ldr r1, =_0803EA38
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803EA38:
	.4byte _0803EBDE
	.4byte _0803EBDE
	.4byte _0803EA4C
	.4byte _0803EAE0
	.4byte _0803EBB0
_0803EA4C:
	ldr r5, =gBattleCommunication
	movs r0, 0
	strb r0, [r5, 0x5]
	ldr r2, =gBankAttacker
	ldrb r0, [r2]
	lsrs r0, 1
	ldr r1, [r7]
	adds r0, r1
	adds r0, 0xC6
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	mov r8, r2
	cmp r0, 0
	beq _0803EA98
	movs r0, 0x3E
	ands r0, r1
	ldr r1, =gBattlescriptCurrInstr
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	ldr r2, =gFightStateTracker
	mov r10, r2
	cmp r0, 0
	bne _0803EA7E
	b _0803EBDE
_0803EA7E:
	movs r0, 0x5
	strb r0, [r5, 0x5]
	b _0803EBDE
	.pool
_0803EA98:
	ldr r0, =gBattlescriptCurrInstr
	mov r9, r0
	ldr r6, =gUnknown_082DBD3C
	ldr r1, =gFightStateTracker
	mov r10, r1
	mov r4, r8
	adds r3, r7, 0
	adds r2, r5, 0
_0803EAA8:
	ldrb r1, [r4]
	lsrs r1, 1
	ldr r0, [r3]
	adds r1, r0
	adds r1, 0xC6
	ldrb r0, [r1]
	lsrs r0, 1
	strb r0, [r1]
	ldrb r0, [r2, 0x5]
	adds r0, 0x1
	strb r0, [r2, 0x5]
	ldrb r0, [r4]
	lsrs r0, 1
	ldr r1, [r3]
	adds r0, r1
	adds r0, 0xC6
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0803EAA8
	b _0803EBDE
	.pool
_0803EAE0:
	ldr r3, =gBattleCommunication
	movs r0, 0x4
	strb r0, [r3, 0x5]
	ldr r2, =gBankAttacker
	ldrb r0, [r2]
	lsrs r0, 1
	ldr r1, [r7]
	adds r0, r1
	adds r6, r0, 0
	adds r6, 0xC6
	ldrb r1, [r6]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	mov r8, r2
	cmp r5, 0
	beq _0803EB28
	movs r0, 0x5
	strb r0, [r3, 0x5]
	ldr r2, =gBattlescriptCurrInstr
	mov r9, r2
	ldr r6, =gUnknown_082DBD3C
	ldr r0, =gFightStateTracker
	mov r10, r0
	b _0803EBDE
	.pool
_0803EB28:
	ldr r3, =gBattleTextBuff1
	movs r4, 0xFD
	strb r4, [r3]
	movs r0, 0x5
	strb r0, [r3, 0x1]
	movs r2, 0x1
	strb r2, [r3, 0x2]
	movs r0, 0xFF
	strb r0, [r3, 0x3]
	ldr r1, =gBattleTextBuff2
	strb r4, [r1]
	strb r5, [r1, 0x1]
	movs r0, 0xD2
	strb r0, [r1, 0x2]
	strb r5, [r1, 0x3]
	subs r0, 0xD3
	strb r0, [r1, 0x4]
	ldrb r0, [r6]
	ands r2, r0
	ldr r1, =gBattlescriptCurrInstr
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	ldr r0, =gFightStateTracker
	mov r10, r0
	cmp r2, 0
	bne _0803EB8C
	mov r5, r8
	adds r4, r7, 0
	adds r2, r3, 0
_0803EB62:
	ldrb r1, [r5]
	lsrs r1, 1
	ldr r0, [r4]
	adds r1, r0
	adds r1, 0xC6
	ldrb r0, [r1]
	lsrs r0, 1
	strb r0, [r1]
	ldrb r0, [r2, 0x2]
	adds r0, 0x1
	strb r0, [r2, 0x2]
	ldrb r0, [r5]
	lsrs r0, 1
	ldr r1, [r4]
	adds r0, r1
	adds r0, 0xC6
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0803EB62
_0803EB8C:
	ldrb r0, [r3, 0x2]
	adds r0, 0xE
	movs r1, 0
	mov r2, r12
	strb r0, [r2, 0x10]
	strb r1, [r2, 0x11]
	b _0803EBDE
	.pool
_0803EBB0:
	ldr r0, =gBattleTypeFlags
	ldr r1, [r0]
	movs r0, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0803EBCC
	ldr r1, =gBattleCommunication
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _0803EBD0
	.pool
_0803EBCC:
	ldr r0, =gBattleCommunication
	strb r1, [r0, 0x5]
_0803EBD0:
	ldr r0, =gBankAttacker
	mov r8, r0
	ldr r1, =gBattlescriptCurrInstr
	mov r9, r1
	ldr r6, =gUnknown_082DBD3C
	ldr r2, =gFightStateTracker
	mov r10, r2
_0803EBDE:
	mov r1, r8
	ldrb r0, [r1]
	lsrs r0, 1
	ldr r1, [r7]
	adds r0, r1
	adds r0, 0xC4
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
_0803EBF6:
	movs r0, 0xA
	mov r1, r10
	strb r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803E90C

	thumb_func_start CanRunFromBattle
CanRunFromBattle: @ 803EC20
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r7, 0
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r5
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0803EC54
	ldr r1, =gEnigmaBerries
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x7]
	b _0803EC5E
	.pool
_0803EC54:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r1, r0, 24
_0803EC5E:
	ldr r0, =gStringBank
	strb r5, [r0]
	cmp r1, 0x25
	bne _0803EC9C
	ldr r2, =gLastUsedItem
	ldr r1, =gBattleMons
	movs r0, 0x58
	muls r0, r5
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r2]
	ldr r0, =gProtectStructs
	lsls r2, r5, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2, 0x1]
	b _0803ED70
	.pool
_0803EC9C:
	ldr r0, =gBattleMons
	mov r10, r0
	movs r2, 0x58
	mov r9, r2
	mov r0, r9
	muls r0, r5
	add r0, r10
	mov r8, r0
	adds r0, 0x20
	ldrb r6, [r0]
	cmp r6, 0x32
	bne _0803ED5C
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _0803ED38
	ldr r4, =gBattleStruct
	ldr r1, [r4]
	adds r1, 0x6C
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	bl sub_81A9E28
	lsls r0, 24
	lsrs r1, r0, 24
	mov r2, r8
	ldrh r0, [r2, 0x6]
	muls r0, r1
	movs r2, 0x1
	adds r1, r5, 0
	eors r1, r2
	mov r2, r9
	muls r2, r1
	adds r1, r2, 0
	add r1, r10
	ldrh r1, [r1, 0x6]
	bl __divsi3
	ldr r1, [r4]
	adds r1, 0x6C
	ldrb r2, [r1]
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 1
	adds r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	movs r1, 0xFF
	ands r1, r0
	cmp r4, r1
	bhi _0803ED0C
	b _0803EE12
_0803ED0C:
	ldr r0, =gLastUsedAbility
	strb r6, [r0]
	ldr r0, =gProtectStructs
	lsls r2, r5, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2, 0x1]
	b _0803ED70
	.pool
_0803ED38:
	ldr r0, =gLastUsedAbility
	strb r6, [r0]
	ldr r0, =gProtectStructs
	lsls r2, r5, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2, 0x1]
	b _0803ED70
	.pool
_0803ED5C:
	ldr r1, =gBattleTypeFlags
	ldr r2, [r1]
	ldr r0, =0x043f0100
	ands r0, r2
	cmp r0, 0
	beq _0803ED80
	movs r0, 0x8
	ands r2, r0
	cmp r2, 0
	beq _0803ED80
_0803ED70:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	b _0803EE12
	.pool
_0803ED80:
	ldr r0, [r1]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0803EE06
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _0803EDBC
	bl sub_81A9E28
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r4, =gBattleMons
	movs r3, 0x58
	adds r0, r5, 0
	muls r0, r3
	adds r0, r4
	ldrh r0, [r0, 0x6]
	muls r0, r1
	movs r2, 0x1
	adds r1, r5, 0
	eors r1, r2
	muls r1, r3
	adds r1, r4
	b _0803EDDA
	.pool
_0803EDBC:
	ldr r3, =gBattleMons
	movs r2, 0x58
	adds r0, r5, 0
	muls r0, r2
	adds r4, r0, r3
	movs r1, 0x1
	adds r0, r5, 0
	eors r0, r1
	muls r0, r2
	adds r1, r0, r3
	ldrh r0, [r4, 0x6]
	ldrh r2, [r1, 0x6]
	cmp r0, r2
	bcs _0803EE00
	lsls r0, 7
_0803EDDA:
	ldrh r1, [r1, 0x6]
	bl __divsi3
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	adds r1, 0x6C
	ldrb r2, [r1]
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 1
	adds r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	movs r1, 0xFF
	ands r1, r0
	cmp r4, r1
	bls _0803EE06
_0803EE00:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0803EE06:
	ldr r0, =gBattleStruct
	ldr r1, [r0]
	adds r1, 0x6C
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0803EE12:
	cmp r7, 0
	beq _0803EE24
	ldr r1, =gCurrentMoveTurn
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, =gBattleOutcome
	movs r0, 0x4
	strb r0, [r1]
_0803EE24:
	adds r0, r7, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end CanRunFromBattle

	thumb_func_start sub_803EE48
sub_803EE48: @ 803EE48
	push {r4-r6,lr}
	ldr r4, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r5, =gCurrentMoveTurn
	ldrb r0, [r5]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	ldr r1, =0x02000002
	ands r0, r1
	cmp r0, 0
	beq _0803EF0C
	ldr r0, =gNoOfAllBanks
	ldrb r1, [r0]
	strb r1, [r5]
	ldr r2, =gActiveBank
	movs r0, 0
	strb r0, [r2]
	lsls r1, 24
	cmp r1, 0
	beq _0803EEE0
	adds r4, r2, 0
	ldr r6, =gActionForBanks
	ldr r5, =gBattleOutcome
_0803EE7C:
	ldrb r0, [r4]
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803EEBC
	ldrb r0, [r4]
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803EECE
	ldrb r0, [r5]
	movs r1, 0x2
	b _0803EECA
	.pool
_0803EEBC:
	ldrb r0, [r4]
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0803EECE
	ldrb r0, [r5]
	movs r1, 0x1
_0803EECA:
	orrs r0, r1
	strb r0, [r5]
_0803EECE:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, =gNoOfAllBanks
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803EE7C
_0803EEE0:
	ldr r2, =gBattleOutcome
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	b _0803EF96
	.pool
_0803EF0C:
	ldrb r0, [r4]
	bl GetBankSide
	lsls r0, 24
	cmp r0, 0
	bne _0803EF4C
	ldrb r0, [r4]
	bl CanRunFromBattle
	lsls r0, 24
	cmp r0, 0
	bne _0803EF98
	ldrb r0, [r4]
	bl sub_8045868
	ldr r1, =gBattleCommunication
	movs r0, 0x3
	strb r0, [r1, 0x5]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAB02
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	b _0803EF96
	.pool
_0803EF4C:
	ldr r1, =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, =0x0400e000
	ands r0, r1
	cmp r0, 0
	beq _0803EF8C
	ldr r1, =gBattleCommunication
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DAB02
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	b _0803EF96
	.pool
_0803EF8C:
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r1, =gBattleOutcome
	movs r0, 0x6
_0803EF96:
	strb r0, [r1]
_0803EF98:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803EE48

	thumb_func_start sub_803EFA8
sub_803EFA8: @ 803EFA8
	ldr r2, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gBattle_BG0_X
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r1, [r0]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_803EFA8

	thumb_func_start bs5_8016AC0
bs5_8016AC0: @ 803EFF0
	ldr r2, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gBattle_BG0_X
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r1, [r0]
	ldr r1, =gNumSafariBalls
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	ldr r1, =gLastUsedItem
	movs r0, 0x5
	strh r0, [r1]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DBD08
	ldr r0, [r0, 0x14]
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end bs5_8016AC0

	thumb_func_start sub_803F050
sub_803F050: @ 803F050
	push {r4-r6,lr}
	ldr r3, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, =gBattle_BG0_X
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r1, [r0]
	ldr r6, =gBattleCommunication
	ldr r2, =gBattleBufferB
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	subs r0, 0x1
	strb r0, [r6, 0x5]
	ldr r1, =gLastUsedItem
	ldrb r0, [r3]
	lsls r0, 9
	adds r2, 0x2
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, =gBattleResults
	ldrb r0, [r1, 0x1F]
	cmp r0, 0xFE
	bhi _0803F096
	adds r0, 0x1
	strb r0, [r1, 0x1F]
_0803F096:
	ldr r2, =gBattleStruct
	ldr r0, [r2]
	adds r1, r0, 0
	adds r1, 0x7A
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _0803F0A8
	adds r0, 0x1
	strb r0, [r1]
_0803F0A8:
	ldr r0, [r2]
	adds r3, r0, 0
	adds r3, 0x7B
	ldrb r5, [r3]
	adds r4, r5, 0
	cmp r4, 0x1
	bls _0803F100
	ldr r2, =gUnknown_0831BCE0
	adds r0, 0x7A
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	ldrb r6, [r6, 0x5]
	adds r0, r6
	adds r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0803F0FC
	movs r0, 0x1
	b _0803F0FE
	.pool
_0803F0FC:
	subs r0, r5, r0
_0803F0FE:
	strb r0, [r3]
_0803F100:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0, 0x8]
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F050

	thumb_func_start sub_803F120
sub_803F120: @ 803F120
	push {r4,lr}
	ldr r2, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, =gBattle_BG0_X
	movs r4, 0
	strh r4, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r4, [r0]
	ldr r3, =gBattleStruct
	ldr r0, [r3]
	adds r2, r0, 0
	adds r2, 0x7C
	ldr r1, =gUnknown_0831BCEF
	adds r0, 0x79
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x7C
	ldrb r0, [r1]
	cmp r0, 0x14
	bls _0803F162
	movs r0, 0x14
	strb r0, [r1]
_0803F162:
	ldr r0, [r3]
	adds r2, r0, 0
	adds r2, 0x7B
	ldr r1, =gUnknown_0831BCF3
	adds r0, 0x79
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x7B
	ldrb r0, [r1]
	cmp r0, 0x14
	bls _0803F188
	movs r0, 0x14
	strb r0, [r1]
_0803F188:
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x79
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _0803F1C4
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, =gBattleCommunication
	strb r4, [r0, 0x5]
	b _0803F1CA
	.pool
_0803F1C4:
	ldr r1, =gBattleCommunication
	movs r0, 0x1
	strb r0, [r1, 0x5]
_0803F1CA:
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0, 0x4]
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F120

	thumb_func_start bs8_exit_by_flight
bs8_exit_by_flight: @ 803F1F0
	push {r4,lr}
	ldr r2, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r4, =gCurrentMoveTurn
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, 0x11
	bl PlaySE
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, =gBattleOutcome
	movs r0, 0x4
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bs8_exit_by_flight

	thumb_func_start bs9_8016C9C
bs9_8016C9C: @ 803F22C
	ldr r3, =gBankAttacker
	ldr r1, =gTurnOrder
	ldr r0, =gCurrentMoveTurn
	ldrb r0, [r0]
	adds r0, r1
	ldrb r2, [r0]
	strb r2, [r3]
	ldr r0, =gBattle_BG0_X
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattle_BG0_Y
	strh r1, [r0]
	ldr r1, =gBattleTextBuff1
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	ldr r2, =gBattlePartyID
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, =gBattlescriptCurrInstr
	ldr r0, =gUnknown_082DBD58
	ldr r0, [r0, 0xC]
	str r0, [r1]
	ldr r1, =gFightStateTracker
	movs r0, 0xA
	strb r0, [r1]
	ldr r1, =gUnknown_0202407A
	movs r0, 0xC
	strb r0, [r1, 0x1]
	bx lr
	.pool
	thumb_func_end bs9_8016C9C

	thumb_func_start bsB_exit_by_move
bsB_exit_by_move: @ 803F2A4
	push {lr}
	bl sub_8041728
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _0803F2C0
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	adds r0, 0x4D
	strb r1, [r0]
	ldr r1, =gFightStateTracker
	movs r0, 0xC
	strb r0, [r1]
_0803F2C0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end bsB_exit_by_move

	thumb_func_start bsD_proceed
bsD_proceed: @ 803F2CC
	ldr r1, =gCurrentMoveTurn
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r3, =gFightStateTracker
	ldr r2, =gUnknown_0202407A
	ldrb r0, [r1]
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r2, =gHitMarker
	ldr r0, [r2]
	ldr r1, =0xf1e892af
	ands r0, r1
	str r0, [r2]
	bx lr
	.pool
	thumb_func_end bsD_proceed

	thumb_func_start bsC_8016D70
bsC_8016D70: @ 803F300
	push {r4-r6,lr}
	ldr r1, =gTurnOrder
	ldr r2, =gCurrentMoveTurn
	ldrb r0, [r2]
	adds r0, r1
	ldrb r0, [r0]
	ldr r6, =gBattleStruct
	ldr r1, [r6]
	adds r0, r1
	adds r0, 0x5C
	movs r1, 0x6
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	ldr r3, =gFightStateTracker
	ldr r1, =gUnknown_0202407A
	ldrb r0, [r2]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	bl SpecialStatusesClear
	ldr r2, =gHitMarker
	ldr r0, [r2]
	ldr r1, =0xf1e892af
	ands r0, r1
	str r0, [r2]
	ldr r0, =gCurrentMove
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattleMoveDamage
	movs r4, 0
	str r4, [r0]
	ldr r0, =gBattleMoveFlags
	strb r1, [r0]
	ldr r5, =gBattleScripting
	strb r1, [r5, 0x18]
	strb r1, [r5, 0x19]
	ldr r2, =gUnknown_02024250
	ldr r3, =gBankAttacker
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	strh r4, [r0]
	ldr r2, =gUnknown_02024258
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	strh r4, [r0]
	ldr r0, [r6]
	strb r1, [r0, 0x13]
	ldr r0, =gDynamicBasePower
	strh r4, [r0]
	strb r1, [r5, 0x14]
	ldr r0, =gBattleCommunication
	strb r1, [r0, 0x3]
	strb r1, [r0, 0x4]
	strb r1, [r5, 0x16]
	ldr r0, =gBattleResources
	ldr r0, [r0]
	ldr r0, [r0, 0x8]
	adds r0, 0x20
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bsC_8016D70

	thumb_func_start GetBattleBank
GetBattleBank: @ 803F3CC
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	movs r0, 0
	cmp r1, 0xE
	bhi _0803F47A
	lsls r0, r1, 2
	ldr r1, =_0803F3E8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0803F3E8:
	.4byte _0803F424
	.4byte _0803F430
	.4byte _0803F43C
	.4byte _0803F458
	.4byte _0803F464
	.4byte _0803F458
	.4byte _0803F464
	.4byte _0803F448
	.4byte _0803F464
	.4byte _0803F464
	.4byte _0803F44C
	.4byte _0803F464
	.4byte _0803F468
	.4byte _0803F46C
	.4byte _0803F470
_0803F424:
	ldr r0, =gBankTarget
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F430:
	ldr r0, =gBankAttacker
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F43C:
	ldr r0, =gEffectBank
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F448:
	movs r0, 0
	b _0803F47A
_0803F44C:
	ldr r0, =gBattleScripting
	ldrb r0, [r0, 0x17]
	b _0803F47A
	.pool
_0803F458:
	ldr r0, =gBank1
	ldrb r0, [r0]
	b _0803F47A
	.pool
_0803F464:
	movs r0, 0
	b _0803F472
_0803F468:
	movs r0, 0x1
	b _0803F472
_0803F46C:
	movs r0, 0x2
	b _0803F472
_0803F470:
	movs r0, 0x3
_0803F472:
	bl GetBankByIdentity
	lsls r0, 24
	lsrs r0, 24
_0803F47A:
	pop {r1}
	bx r1
	thumb_func_end GetBattleBank

	thumb_func_start PressurePPLose
PressurePPLose: @ 803F480
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 16
	lsrs r2, 16
	ldr r1, =gBattleMons
	movs r4, 0x58
	muls r0, r4
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, 0x2E
	bne _0803F532
	movs r3, 0
	adds r0, r5, 0
	muls r0, r4
	adds r1, 0xC
	adds r1, r0, r1
	b _0803F4BC
	.pool
_0803F4B4:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	bgt _0803F4C2
_0803F4BC:
	ldrh r0, [r1]
	cmp r0, r2
	bne _0803F4B4
_0803F4C2:
	cmp r3, 0x4
	beq _0803F532
	movs r7, 0x58
	adds r2, r5, 0
	muls r2, r7
	adds r0, r3, r2
	mov r6, r12
	adds r6, 0x24
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803F4DE
	subs r0, 0x1
	strb r0, [r1]
_0803F4DE:
	mov r0, r12
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0803F532
	ldr r1, =gDisableStructs
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803F532
	ldr r4, =gActiveBank
	strb r5, [r4]
	adds r1, r3, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r7
	adds r0, r6
	adds r0, r3
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl EmitSetMonData
	ldrb r0, [r4]
	bl MarkBufferBankForExecution
_0803F532:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end PressurePPLose

	thumb_func_start PressurePPLoseOnUsingImprision
PressurePPLoseOnUsingImprision: @ 803F548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x4
	mov r8, r0
	adds r0, r5, 0
	bl GetBankSide
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803F5F0
	ldr r1, =gBattleMons
	movs r0, 0x58
	adds r7, r5, 0
	muls r7, r0
	adds r1, 0xC
	mov r10, r1
_0803F57E:
	lsls r0, r4, 24
	lsrs r0, 24
	bl GetBankSide
	lsls r0, 24
	lsrs r0, 24
	adds r6, r4, 0x1
	cmp r9, r0
	beq _0803F5E6
	ldr r0, =gBattleMons
	movs r3, 0x58
	adds r1, r4, 0
	muls r1, r3
	adds r1, r0
	adds r1, 0x20
	ldrb r1, [r1]
	adds r4, r0, 0
	cmp r1, 0x2E
	bne _0803F5E6
	movs r2, 0
	adds r0, r5, 0
	muls r0, r3
	adds r1, r4, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x8F
	lsls r1, 1
	cmp r0, r1
	beq _0803F5CE
	adds r3, r1, 0
	mov r0, r10
	adds r1, r7, r0
_0803F5C0:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _0803F5CE
	ldrh r0, [r1]
	cmp r0, r3
	bne _0803F5C0
_0803F5CE:
	cmp r2, 0x4
	beq _0803F5E6
	mov r8, r2
	adds r1, r2, r7
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803F5E6
	subs r0, 0x1
	strb r0, [r1]
_0803F5E6:
	adds r4, r6, 0
	ldr r0, =gNoOfAllBanks
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803F57E
_0803F5F0:
	mov r1, r8
	cmp r1, 0x4
	beq _0803F658
	ldr r6, =gBattleMons
	movs r3, 0x58
	adds r0, r5, 0
	muls r0, r3
	adds r1, r6, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0803F658
	ldr r1, =gDisableStructs
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	mov r4, r8
	lsls r0, r4, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803F658
	ldr r4, =gActiveBank
	strb r5, [r4]
	mov r1, r8
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r3
	adds r2, r6, 0
	adds r2, 0x24
	adds r0, r2
	add r0, r8
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl EmitSetMonData
	ldrb r0, [r4]
	bl MarkBufferBankForExecution
_0803F658:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end PressurePPLoseOnUsingImprision

	thumb_func_start PressurePPLoseOnUsingPerishSong
PressurePPLoseOnUsingPerishSong: @ 803F67C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r3, r0, 24
	movs r6, 0x4
	movs r1, 0
	ldr r0, =gNoOfAllBanks
	mov r8, r0
	ldrb r0, [r0]
	cmp r1, r0
	bge _0803F6FE
	ldr r7, =gBattleMons
	movs r2, 0x58
	mov r12, r2
	mov r5, r12
	muls r5, r3
	adds r0, r7, 0
	adds r0, 0xC
	adds r2, r5, r0
	mov r10, r2
	mov r9, r5
_0803F6AE:
	mov r0, r12
	muls r0, r1
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	adds r4, r1, 0x1
	cmp r0, 0x2E
	bne _0803F6F4
	cmp r1, r3
	beq _0803F6F4
	movs r2, 0
	mov r1, r10
	ldrh r0, [r1]
	cmp r0, 0xC3
	beq _0803F6DE
	ldr r1, =gBattleMons + 0xC
	add r1, r9
_0803F6D0:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _0803F6DE
	ldrh r0, [r1]
	cmp r0, 0xC3
	bne _0803F6D0
_0803F6DE:
	cmp r2, 0x4
	beq _0803F6F4
	adds r6, r2, 0
	adds r0, r6, r5
	ldr r2, =gBattleMons + 0x24
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _0803F6F4
	subs r0, 0x1
	strb r0, [r1]
_0803F6F4:
	adds r1, r4, 0
	mov r0, r8
	ldrb r0, [r0]
	cmp r1, r0
	blt _0803F6AE
_0803F6FE:
	cmp r6, 0x4
	beq _0803F762
	ldr r7, =gBattleMons
	movs r5, 0x58
	adds r0, r3, 0
	muls r0, r5
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0803F762
	ldr r1, =gDisableStructs
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, =gBitTable
	lsls r0, r6, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0803F762
	ldr r4, =gActiveBank
	strb r3, [r4]
	adds r1, r6, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r5
	adds r2, r7, 0
	adds r2, 0x24
	adds r0, r2
	adds r0, r6
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl EmitSetMonData
	ldrb r0, [r4]
	bl MarkBufferBankForExecution
_0803F762:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end PressurePPLoseOnUsingPerishSong

	thumb_func_start sub_803F790
sub_803F790: @ 803F790
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0803F7D0
	movs r2, 0
	ldr r4, =gNoOfAllBanks
	ldrb r0, [r4]
	cmp r2, r0
	bge _0803F7EE
	ldr r3, =gBattleExecBuffer
	ldr r5, =gBitTable
_0803F7AC:
	ldm r5!, {r1}
	lsls r1, 28
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	adds r2, 0x1
	ldrb r0, [r4]
	cmp r2, r0
	blt _0803F7AC
	b _0803F7EE
	.pool
_0803F7D0:
	movs r2, 0
	ldr r4, =gNoOfAllBanks
	ldrb r0, [r4]
	cmp r2, r0
	bge _0803F7EE
	ldr r3, =gBattleExecBuffer
	ldr r5, =gBitTable
_0803F7DE:
	ldr r0, [r3]
	ldm r5!, {r1}
	orrs r0, r1
	str r0, [r3]
	adds r2, 0x1
	ldrb r0, [r4]
	cmp r2, r0
	blt _0803F7DE
_0803F7EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F790

	thumb_func_start MarkBufferBankForExecution
MarkBufferBankForExecution: @ 803F800
	push {lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0803F834
	ldr r2, =gBattleExecBuffer
	ldr r1, =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _0803F844
	.pool
_0803F834:
	ldr r2, =gBattleExecBuffer
	ldr r1, =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r2]
_0803F844:
	pop {r0}
	bx r0
	.pool
	thumb_func_end MarkBufferBankForExecution

	thumb_func_start sub_803F850
sub_803F850: @ 803F850
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r4, 0
	ldr r5, =gBattleExecBuffer
	ldr r1, =gBitTable
	lsls r0, r7, 2
	adds r6, r0, r1
	b _0803F87A
	.pool
_0803F86C:
	lsls r0, r4, 2
	ldr r1, [r6]
	lsls r1, r0
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	adds r4, 0x1
_0803F87A:
	bl sub_8009FCC
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	blt _0803F86C
	ldr r2, =gBattleExecBuffer
	movs r1, 0x80
	lsls r1, 21
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F850

	thumb_func_start CancelMultiTurnMoves
CancelMultiTurnMoves: @ 803F8A0
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gBattleMons
	movs r2, 0x58
	adds r3, r0, 0
	muls r3, r2
	adds r1, 0x50
	adds r3, r1
	ldr r1, [r3]
	ldr r2, =0xffffefff
	ands r1, r2
	ldr r2, =0xfffff3ff
	ands r1, r2
	movs r2, 0x71
	negs r2, r2
	ands r1, r2
	ldr r2, =0xfffffcff
	ands r1, r2
	str r1, [r3]
	ldr r1, =gStatuses3
	lsls r2, r0, 2
	adds r2, r1
	ldr r1, [r2]
	ldr r3, =0xfffbff3f
	ands r1, r3
	str r1, [r2]
	ldr r2, =gDisableStructs
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1, 0x11]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x11]
	movs r0, 0
	strb r0, [r1, 0x10]
	bx lr
	.pool
	thumb_func_end CancelMultiTurnMoves

	thumb_func_start HasMoveFailed
HasMoveFailed: @ 803F90C
	push {lr}
	lsls r0, 24
	ldr r1, =gProtectStructs
	lsrs r0, 20
	adds r1, r0, r1
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	bne _0803F952
	ldrb r2, [r1, 0x1]
	lsls r0, r2, 30
	cmp r0, 0
	blt _0803F952
	lsls r0, r2, 26
	cmp r0, 0
	blt _0803F952
	lsls r0, r2, 25
	cmp r0, 0
	blt _0803F952
	lsrs r0, r2, 7
	cmp r0, 0
	bne _0803F952
	ldrb r1, [r1, 0x2]
	lsls r0, r1, 31
	cmp r0, 0
	bne _0803F952
	lsls r0, r1, 30
	cmp r0, 0
	blt _0803F952
	lsls r0, r1, 29
	cmp r0, 0
	blt _0803F952
	lsls r0, r2, 31
	cmp r0, 0
	beq _0803F95C
_0803F952:
	movs r0, 0x1
	b _0803F95E
	.pool
_0803F95C:
	movs r0, 0
_0803F95E:
	pop {r1}
	bx r1
	thumb_func_end HasMoveFailed

	thumb_func_start PrepareStringBattle
PrepareStringBattle: @ 803F964
	push {r4,lr}
	adds r2, r0, 0
	lsls r2, 16
	lsrs r2, 16
	ldr r4, =gActiveBank
	strb r1, [r4]
	movs r0, 0
	adds r1, r2, 0
	bl dp01_build_cmdbuf_x10_TODO
	ldrb r0, [r4]
	bl MarkBufferBankForExecution
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end PrepareStringBattle

	thumb_func_start ResetSentPokesToOpponentValue
ResetSentPokesToOpponentValue: @ 803F988
	push {r4-r6,lr}
	movs r3, 0
	ldr r0, =gSentPokesToOpponent
	strb r3, [r0]
	strb r3, [r0, 0x1]
	movs r1, 0
	ldr r0, =gNoOfAllBanks
	ldrb r2, [r0]
	adds r6, r0, 0
	cmp r1, r2
	bge _0803F9B6
	ldr r5, =gBitTable
	adds r4, r2, 0
	ldr r2, =gBattlePartyID
_0803F9A4:
	ldrh r0, [r2]
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	orrs r3, r0
	adds r2, 0x4
	adds r1, 0x2
	cmp r1, r4
	blt _0803F9A4
_0803F9B6:
	movs r1, 0x1
	adds r2, r6, 0
	ldrb r0, [r2]
	cmp r1, r0
	bge _0803F9D6
	ldr r5, =gSentPokesToOpponent
	movs r4, 0x2
_0803F9C4:
	adds r0, r1, 0
	ands r0, r4
	asrs r0, 1
	adds r0, r5
	strb r3, [r0]
	adds r1, 0x2
	ldrb r0, [r2]
	cmp r1, r0
	blt _0803F9C4
_0803F9D6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ResetSentPokesToOpponentValue

	thumb_func_start sub_803F9EC
sub_803F9EC: @ 803F9EC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	adds r0, r5, 0
	bl GetBankSide
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803FA50
	movs r0, 0x2
	ands r0, r5
	lsls r0, 24
	lsrs r0, 25
	mov r12, r0
	ldr r1, =gSentPokesToOpponent
	adds r0, r1
	strb r4, [r0]
	adds r5, r4, 0
	ldr r0, =gNoOfAllBanks
	ldrb r2, [r0]
	mov r8, r1
	cmp r4, r2
	bge _0803FA4A
	ldr r0, =gAbsentBankFlags
	ldrb r7, [r0]
	ldr r1, =gBitTable
	adds r6, r2, 0
	ldr r3, =gBattlePartyID
	adds r2, r1, 0
_0803FA2E:
	ldr r0, [r2]
	ands r0, r7
	cmp r0, 0
	bne _0803FA40
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	orrs r4, r0
_0803FA40:
	adds r3, 0x4
	adds r2, 0x8
	adds r5, 0x2
	cmp r5, r6
	blt _0803FA2E
_0803FA4A:
	mov r0, r12
	add r0, r8
	strb r4, [r0]
_0803FA50:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803F9EC

	thumb_func_start sub_803FA70
sub_803FA70: @ 803FA70
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl GetBankSide
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0803FA8C
	adds r0, r4, 0
	bl sub_803F9EC
	b _0803FAC2
_0803FA8C:
	movs r3, 0x1
	ldr r5, =gNoOfAllBanks
	ldrb r0, [r5]
	cmp r3, r0
	bge _0803FAC2
	ldr r0, =gSentPokesToOpponent
	mov r12, r0
	movs r7, 0x2
	ldr r6, =gBitTable
	ldr r1, =gBattlePartyID
	lsls r0, r4, 1
	adds r4, r0, r1
_0803FAA4:
	adds r2, r3, 0
	ands r2, r7
	asrs r2, 1
	add r2, r12
	ldrh r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r3, 0x1
	ldrb r0, [r5]
	cmp r3, r0
	blt _0803FAA4
_0803FAC2:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_803FA70
    
    .align 2, 0 @ Don't pad with nop.
    