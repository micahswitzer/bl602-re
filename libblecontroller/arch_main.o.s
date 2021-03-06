
libblecontroller/arch_main.o:     file format elf32-littleriscv


Disassembly of section .text.BLE_ROM_patch:

00000000 <BLE_ROM_patch>:
   0:	1101                	addi	sp,sp,-32
   2:	c22e                	sw	a1,4(sp)
   4:	c432                	sw	a2,8(sp)
   6:	c636                	sw	a3,12(sp)
   8:	c83a                	sw	a4,16(sp)
   a:	ca3e                	sw	a5,20(sp)
   c:	cc42                	sw	a6,24(sp)
   e:	ce46                	sw	a7,28(sp)
  10:	4501                	li	a0,0

00000012 <.LVL1>:
  12:	6105                	addi	sp,sp,32
  14:	8082                	ret

Disassembly of section .text.blecontroller_main:

00000000 <blecontroller_main>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <blecontroller_main>
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	cc22                	sw	s0,24(sp)
   c:	ca26                	sw	s1,20(sp)
   e:	ce06                	sw	ra,28(sp)
  10:	4621                	li	a2,8
  12:	4581                	li	a1,0
  14:	0028                	addi	a0,sp,8

00000016 <.LVL3>:
  16:	9782                	jalr	a5

00000018 <.LVL4>:
  18:	000004b7          	lui	s1,0x0
			18: R_RISCV_HI20	xRwmainQueue
			18: R_RISCV_RELAX	*ABS*
  1c:	4405                	li	s0,1

0000001e <.L5>:
  1e:	0004a503          	lw	a0,0(s1) # 0 <blecontroller_main>
			1e: R_RISCV_LO12_I	xRwmainQueue
			1e: R_RISCV_RELAX	*ABS*
  22:	567d                	li	a2,-1
  24:	002c                	addi	a1,sp,8
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	xQueueReceive
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.L5+0x8>

0000002e <.LVL5>:
  2e:	00851b63          	bne	a0,s0,44 <.L4>
			2e: R_RISCV_BRANCH	.L4
  32:	00814783          	lbu	a5,8(sp)
  36:	00879763          	bne	a5,s0,44 <.L4>
			36: R_RISCV_BRANCH	.L4
  3a:	4532                	lw	a0,12(sp)
  3c:	00000097          	auipc	ra,0x0
			3c: R_RISCV_CALL	hci_send_2_controller
			3c: R_RISCV_RELAX	*ABS*
  40:	000080e7          	jalr	ra # 3c <.LVL5+0xe>

00000044 <.L4>:
  44:	00000097          	auipc	ra,0x0
			44: R_RISCV_CALL	rwip_schedule
			44: R_RISCV_RELAX	*ABS*
  48:	000080e7          	jalr	ra # 44 <.L4>

0000004c <.LVL7>:
  4c:	bfc9                	j	1e <.L5>
			4c: R_RISCV_RVC_JUMP	.L5

Disassembly of section .text.BLE_ROM_hook_init:

00000000 <BLE_ROM_hook_init>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	BLE_ROM_patch
			0: R_RISCV_RELAX	*ABS*
   4:	00000737          	lui	a4,0x0
			4: R_RISCV_HI20	.LANCHOR1
			4: R_RISCV_RELAX	*ABS*
   8:	00078793          	mv	a5,a5
			8: R_RISCV_LO12_I	BLE_ROM_patch
			8: R_RISCV_RELAX	*ABS*
   c:	00f72023          	sw	a5,0(a4) # 0 <BLE_ROM_hook_init>
			c: R_RISCV_LO12_S	.LANCHOR1
			c: R_RISCV_RELAX	*ABS*
  10:	000007b7          	lui	a5,0x0
			10: R_RISCV_HI20	memcpy
			10: R_RISCV_RELAX	*ABS*
  14:	00000737          	lui	a4,0x0
			14: R_RISCV_HI20	.LANCHOR2
			14: R_RISCV_RELAX	*ABS*
  18:	00078793          	mv	a5,a5
			18: R_RISCV_LO12_I	memcpy
			18: R_RISCV_RELAX	*ABS*
  1c:	00f72023          	sw	a5,0(a4) # 0 <BLE_ROM_hook_init>
			1c: R_RISCV_LO12_S	.LANCHOR2
			1c: R_RISCV_RELAX	*ABS*
  20:	000007b7          	lui	a5,0x0
			20: R_RISCV_HI20	memset
			20: R_RISCV_RELAX	*ABS*
  24:	00000737          	lui	a4,0x0
			24: R_RISCV_HI20	.LANCHOR0
			24: R_RISCV_RELAX	*ABS*
  28:	00078793          	mv	a5,a5
			28: R_RISCV_LO12_I	memset
			28: R_RISCV_RELAX	*ABS*
  2c:	00f72023          	sw	a5,0(a4) # 0 <BLE_ROM_hook_init>
			2c: R_RISCV_LO12_S	.LANCHOR0
			2c: R_RISCV_RELAX	*ABS*
  30:	000007b7          	lui	a5,0x0
			30: R_RISCV_HI20	memcmp
			30: R_RISCV_RELAX	*ABS*
  34:	00000737          	lui	a4,0x0
			34: R_RISCV_HI20	.LANCHOR3
			34: R_RISCV_RELAX	*ABS*
  38:	00078793          	mv	a5,a5
			38: R_RISCV_LO12_I	memcmp
			38: R_RISCV_RELAX	*ABS*
  3c:	00f72023          	sw	a5,0(a4) # 0 <BLE_ROM_hook_init>
			3c: R_RISCV_LO12_S	.LANCHOR3
			3c: R_RISCV_RELAX	*ABS*
  40:	000007b7          	lui	a5,0x0
			40: R_RISCV_HI20	rw_main_task_post_from_fw
			40: R_RISCV_RELAX	*ABS*
  44:	00000737          	lui	a4,0x0
			44: R_RISCV_HI20	.LANCHOR4
			44: R_RISCV_RELAX	*ABS*
  48:	00078793          	mv	a5,a5
			48: R_RISCV_LO12_I	rw_main_task_post_from_fw
			48: R_RISCV_RELAX	*ABS*
  4c:	00f72023          	sw	a5,0(a4) # 0 <BLE_ROM_hook_init>
			4c: R_RISCV_LO12_S	.LANCHOR4
			4c: R_RISCV_RELAX	*ABS*
  50:	8082                	ret

Disassembly of section .text.get_stack_usage:

00000000 <get_stack_usage>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	stack_base_svc
			0: R_RISCV_RELAX	*ABS*
   4:	00078713          	mv	a4,a5
			4: R_RISCV_LO12_I	stack_base_svc
			4: R_RISCV_RELAX	*ABS*
   8:	0bb00693          	li	a3,187
   c:	00078793          	mv	a5,a5
			c: R_RISCV_LO12_I	stack_base_svc
			c: R_RISCV_RELAX	*ABS*

00000010 <.L9>:
  10:	0705                	addi	a4,a4,1
  12:	fff74603          	lbu	a2,-1(a4)
  16:	fed60de3          	beq	a2,a3,10 <.L9>
			16: R_RISCV_BRANCH	.L9
  1a:	00000537          	lui	a0,0x0
			1a: R_RISCV_HI20	stack_len_svc
			1a: R_RISCV_RELAX	*ABS*
  1e:	00050513          	mv	a0,a0
			1e: R_RISCV_LO12_I	stack_len_svc
			1e: R_RISCV_RELAX	*ABS*
  22:	953e                	add	a0,a0,a5
  24:	8d19                	sub	a0,a0,a4
  26:	0542                	slli	a0,a0,0x10
  28:	8141                	srli	a0,a0,0x10
  2a:	8082                	ret

Disassembly of section .text.platform_reset:

00000000 <platform_reset>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	c62a                	sw	a0,12(sp)

00000006 <.LBB7>:
   6:	300477f3          	csrrci	a5,mstatus,8

0000000a <.LBE7>:
   a:	00000097          	auipc	ra,0x0
			a: R_RISCV_CALL	uart_finish_transfers
			a: R_RISCV_RELAX	*ABS*
   e:	000080e7          	jalr	ra # a <.LBE7>

00000012 <.LVL13>:
  12:	4532                	lw	a0,12(sp)
  14:	c3c3c7b7          	lui	a5,0xc3c3c
  18:	3c378793          	addi	a5,a5,963 # c3c3c3c3 <.LASF306+0xc3c3ae17>
  1c:	00f50c63          	beq	a0,a5,34 <.L11>
			1c: R_RISCV_BRANCH	.L11
  20:	a5a5a7b7          	lui	a5,0xa5a5a
  24:	5a578793          	addi	a5,a5,1445 # a5a5a5a5 <.LASF306+0xa5a58ff9>
  28:	00f50663          	beq	a0,a5,34 <.L11>
			28: R_RISCV_BRANCH	.L11

0000002c <.LVL14>:
  2c:	40f2                	lw	ra,28(sp)
  2e:	4301                	li	t1,0
  30:	6105                	addi	sp,sp,32

00000032 <.LVL15>:
  32:	8302                	jr	t1

00000034 <.L11>:
  34:	40f2                	lw	ra,28(sp)
  36:	6105                	addi	sp,sp,32

00000038 <.LVL17>:
  38:	8082                	ret

Disassembly of section .text.rw_main_task_post:

00000000 <rw_main_task_post>:
   0:	c505                	beqz	a0,28 <.L16>
			0: R_RISCV_RVC_BRANCH	.L16

00000002 <.LBB10>:
   2:	000007b7          	lui	a5,0x0
			2: R_RISCV_HI20	xRwmainQueue
			2: R_RISCV_RELAX	*ABS*
   6:	862e                	mv	a2,a1
   8:	85aa                	mv	a1,a0

0000000a <.LVL19>:
   a:	0007a503          	lw	a0,0(a5) # 0 <rw_main_task_post>
			a: R_RISCV_LO12_I	xRwmainQueue
			a: R_RISCV_RELAX	*ABS*

0000000e <.LBE10>:
   e:	1141                	addi	sp,sp,-16

00000010 <.LBB15>:
  10:	4681                	li	a3,0

00000012 <.LBE15>:
  12:	c606                	sw	ra,12(sp)

00000014 <.LBB16>:
  14:	00000097          	auipc	ra,0x0
			14: R_RISCV_CALL	xQueueGenericSend
			14: R_RISCV_RELAX	*ABS*
  18:	000080e7          	jalr	ra # 14 <.LBB16>

0000001c <.LBE16>:
  1c:	40b2                	lw	ra,12(sp)

0000001e <.LBB17>:
  1e:	157d                	addi	a0,a0,-1
  20:	00153513          	seqz	a0,a0

00000024 <.LBE17>:
  24:	0141                	addi	sp,sp,16
  26:	8082                	ret

00000028 <.L16>:
  28:	4501                	li	a0,0

0000002a <.LVL23>:
  2a:	8082                	ret

Disassembly of section .text.rw_main_task_post_from_fw:

00000000 <rw_main_task_post_from_fw>:
   0:	1101                	addi	sp,sp,-32
   2:	4789                	li	a5,2
   4:	00f10423          	sb	a5,8(sp)

00000008 <.LBB18>:
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	TrapNetCounter
			8: R_RISCV_RELAX	*ABS*

0000000c <.LBE18>:
   c:	0007a783          	lw	a5,0(a5) # 0 <rw_main_task_post_from_fw>
			c: R_RISCV_LO12_I	TrapNetCounter
			c: R_RISCV_RELAX	*ABS*
  10:	ce06                	sw	ra,28(sp)
  12:	c602                	sw	zero,12(sp)

00000014 <.LBB21>:
  14:	cb85                	beqz	a5,44 <.L22>
			14: R_RISCV_RVC_BRANCH	.L22
  16:	000007b7          	lui	a5,0x0
			16: R_RISCV_HI20	xRwmainQueue
			16: R_RISCV_RELAX	*ABS*
  1a:	0007a503          	lw	a0,0(a5) # 0 <rw_main_task_post_from_fw>
			1a: R_RISCV_LO12_I	xRwmainQueue
			1a: R_RISCV_RELAX	*ABS*
  1e:	4681                	li	a3,0
  20:	0050                	addi	a2,sp,4
  22:	002c                	addi	a1,sp,8
  24:	c202                	sw	zero,4(sp)
  26:	00000097          	auipc	ra,0x0
			26: R_RISCV_CALL	xQueueGenericSendFromISR
			26: R_RISCV_RELAX	*ABS*
  2a:	000080e7          	jalr	ra # 26 <.LBB21+0x12>

0000002e <.LVL24>:
  2e:	4712                	lw	a4,4(sp)
  30:	4785                	li	a5,1
  32:	00f71663          	bne	a4,a5,3e <.L21>
			32: R_RISCV_BRANCH	.L21
  36:	00000097          	auipc	ra,0x0
			36: R_RISCV_CALL	vTaskSwitchContext
			36: R_RISCV_RELAX	*ABS*
  3a:	000080e7          	jalr	ra # 36 <.LVL24+0x8>

0000003e <.L21>:
  3e:	40f2                	lw	ra,28(sp)
  40:	6105                	addi	sp,sp,32
  42:	8082                	ret

00000044 <.L22>:
  44:	55fd                	li	a1,-1
  46:	0028                	addi	a0,sp,8
  48:	00000097          	auipc	ra,0x0
			48: R_RISCV_CALL	rw_main_task_post
			48: R_RISCV_RELAX	*ABS*
  4c:	000080e7          	jalr	ra # 48 <.L22+0x4>

00000050 <.LVL26>:
  50:	b7fd                	j	3e <.L21>
			50: R_RISCV_RVC_JUMP	.L21

Disassembly of section .text.rw_main_task_post_from_isr:

00000000 <rw_main_task_post_from_isr>:
   0:	1101                	addi	sp,sp,-32
   2:	4789                	li	a5,2
   4:	00f10423          	sb	a5,8(sp)
   8:	000007b7          	lui	a5,0x0
			8: R_RISCV_HI20	xRwmainQueue
			8: R_RISCV_RELAX	*ABS*
   c:	0007a503          	lw	a0,0(a5) # 0 <rw_main_task_post_from_isr>
			c: R_RISCV_LO12_I	xRwmainQueue
			c: R_RISCV_RELAX	*ABS*
  10:	4681                	li	a3,0
  12:	0050                	addi	a2,sp,4
  14:	002c                	addi	a1,sp,8
  16:	ce06                	sw	ra,28(sp)
  18:	c602                	sw	zero,12(sp)
  1a:	c202                	sw	zero,4(sp)
  1c:	00000097          	auipc	ra,0x0
			1c: R_RISCV_CALL	xQueueGenericSendFromISR
			1c: R_RISCV_RELAX	*ABS*
  20:	000080e7          	jalr	ra # 1c <rw_main_task_post_from_isr+0x1c>

00000024 <.LVL27>:
  24:	4712                	lw	a4,4(sp)
  26:	4785                	li	a5,1
  28:	00f71663          	bne	a4,a5,34 <.L25>
			28: R_RISCV_BRANCH	.L25
  2c:	00000097          	auipc	ra,0x0
			2c: R_RISCV_CALL	vTaskSwitchContext
			2c: R_RISCV_RELAX	*ABS*
  30:	000080e7          	jalr	ra # 2c <.LVL27+0x8>

00000034 <.L25>:
  34:	40f2                	lw	ra,28(sp)
  36:	6105                	addi	sp,sp,32
  38:	8082                	ret

Disassembly of section .text.bdaddr_init:

00000000 <bdaddr_init>:
   0:	1101                	addi	sp,sp,-32
   2:	0028                	addi	a0,sp,8
   4:	ce06                	sw	ra,28(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	bl_wifi_mac_addr_get
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <bdaddr_init+0x6>

0000000e <.LVL29>:
   e:	00914683          	lbu	a3,9(sp)
  12:	00814783          	lbu	a5,8(sp)

00000016 <.LVL30>:
  16:	00d14703          	lbu	a4,13(sp)
  1a:	00f106a3          	sb	a5,13(sp)

0000001e <.LVL31>:
  1e:	00c14783          	lbu	a5,12(sp)
  22:	00d10623          	sb	a3,12(sp)
  26:	00a15683          	lhu	a3,10(sp)

0000002a <.LVL32>:
  2a:	00f104a3          	sb	a5,9(sp)

0000002e <.LVL33>:
  2e:	00869613          	slli	a2,a3,0x8
  32:	82a1                	srli	a3,a3,0x8
  34:	8ed1                	or	a3,a3,a2
  36:	00d11523          	sh	a3,10(sp)

0000003a <.LVL34>:
  3a:	0ff00693          	li	a3,255
  3e:	04d70163          	beq	a4,a3,80 <.L29>
			3e: R_RISCV_BRANCH	.L29
  42:	0705                	addi	a4,a4,1
  44:	00e10423          	sb	a4,8(sp)

00000048 <.L30>:
  48:	0028                	addi	a0,sp,8
  4a:	00000097          	auipc	ra,0x0
			4a: R_RISCV_CALL	co_bdaddr_set
			4a: R_RISCV_RELAX	*ABS*
  4e:	000080e7          	jalr	ra # 4a <.L30+0x2>

00000052 <.LVL35>:
  52:	00814803          	lbu	a6,8(sp)
  56:	00914783          	lbu	a5,9(sp)
  5a:	00a14703          	lbu	a4,10(sp)
  5e:	00b14683          	lbu	a3,11(sp)
  62:	00c14603          	lbu	a2,12(sp)
  66:	00d14583          	lbu	a1,13(sp)
  6a:	00000537          	lui	a0,0x0
			6a: R_RISCV_HI20	.LC0
			6a: R_RISCV_RELAX	*ABS*
  6e:	00050513          	mv	a0,a0
			6e: R_RISCV_LO12_I	.LC0
			6e: R_RISCV_RELAX	*ABS*
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	printf
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL35+0x20>

0000007a <.LVL36>:
  7a:	40f2                	lw	ra,28(sp)
  7c:	6105                	addi	sp,sp,32
  7e:	8082                	ret

00000080 <.L29>:
  80:	0785                	addi	a5,a5,1
  82:	00010423          	sb	zero,8(sp)
  86:	00f104a3          	sb	a5,9(sp)
  8a:	bf7d                	j	48 <.L30>
			8a: R_RISCV_RVC_JUMP	.L30

Disassembly of section .text.ble_controller_init:

00000000 <ble_controller_init>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	c62a                	sw	a0,12(sp)
   6:	00000097          	auipc	ra,0x0
			6: R_RISCV_CALL	BLE_ROM_hook_init
			6: R_RISCV_RELAX	*ABS*
   a:	000080e7          	jalr	ra # 6 <ble_controller_init+0x6>

0000000e <.LVL38>:
   e:	02626537          	lui	a0,0x2626
  12:	a0050513          	addi	a0,a0,-1536 # 2625a00 <.LASF306+0x2624454>
  16:	00000097          	auipc	ra,0x0
			16: R_RISCV_CALL	rfc_init
			16: R_RISCV_RELAX	*ABS*
  1a:	000080e7          	jalr	ra # 16 <.LVL38+0x8>

0000001e <.LVL39>:
  1e:	000007b7          	lui	a5,0x0
			1e: R_RISCV_HI20	.LANCHOR5
			1e: R_RISCV_RELAX	*ABS*
  22:	00078023          	sb	zero,0(a5) # 0 <ble_controller_init>
			22: R_RISCV_LO12_S	.LANCHOR5
			22: R_RISCV_RELAX	*ABS*
  26:	000007b7          	lui	a5,0x0
			26: R_RISCV_HI20	.LANCHOR6
			26: R_RISCV_RELAX	*ABS*
  2a:	00078023          	sb	zero,0(a5) # 0 <ble_controller_init>
			2a: R_RISCV_LO12_S	.LANCHOR6
			2a: R_RISCV_RELAX	*ABS*
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	rwble_isr_clear
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL39+0x10>

00000036 <.LVL40>:
  36:	04800513          	li	a0,72
  3a:	00000097          	auipc	ra,0x0
			3a: R_RISCV_CALL	bl_irq_pending_clear
			3a: R_RISCV_RELAX	*ABS*
  3e:	000080e7          	jalr	ra # 3a <.LVL40+0x4>

00000042 <.LVL41>:
  42:	000005b7          	lui	a1,0x0
			42: R_RISCV_HI20	rwble_isr
			42: R_RISCV_RELAX	*ABS*
  46:	00058593          	mv	a1,a1
			46: R_RISCV_LO12_I	rwble_isr
			46: R_RISCV_RELAX	*ABS*
  4a:	04800513          	li	a0,72
  4e:	00000097          	auipc	ra,0x0
			4e: R_RISCV_CALL	bl_irq_register
			4e: R_RISCV_RELAX	*ABS*
  52:	000080e7          	jalr	ra # 4e <.LVL41+0xc>

00000056 <.LVL42>:
  56:	04800513          	li	a0,72
  5a:	00000097          	auipc	ra,0x0
			5a: R_RISCV_CALL	bl_irq_enable
			5a: R_RISCV_RELAX	*ABS*
  5e:	000080e7          	jalr	ra # 5a <.LVL42+0x4>

00000062 <.LVL43>:
  62:	00000097          	auipc	ra,0x0
			62: R_RISCV_CALL	bdaddr_init
			62: R_RISCV_RELAX	*ABS*
  66:	000080e7          	jalr	ra # 62 <.LVL43>

0000006a <.LVL44>:
  6a:	000007b7          	lui	a5,0x0
			6a: R_RISCV_HI20	.LANCHOR7
			6a: R_RISCV_RELAX	*ABS*
  6e:	0007a503          	lw	a0,0(a5) # 0 <ble_controller_init>
			6e: R_RISCV_LO12_I	.LANCHOR7
			6e: R_RISCV_RELAX	*ABS*
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	rwip_init
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL44+0x8>

0000007a <.LVL45>:
  7a:	4601                	li	a2,0
  7c:	45a1                	li	a1,8
  7e:	4551                	li	a0,20
  80:	00000097          	auipc	ra,0x0
			80: R_RISCV_CALL	xQueueGenericCreate
			80: R_RISCV_RELAX	*ABS*
  84:	000080e7          	jalr	ra # 80 <.LVL45+0x6>

00000088 <.LVL46>:
  88:	000007b7          	lui	a5,0x0
			88: R_RISCV_HI20	xRwmainQueue
			88: R_RISCV_RELAX	*ABS*
  8c:	4732                	lw	a4,12(sp)
  8e:	40f2                	lw	ra,28(sp)
  90:	00a7a023          	sw	a0,0(a5) # 0 <ble_controller_init>
			90: R_RISCV_LO12_S	xRwmainQueue
			90: R_RISCV_RELAX	*ABS*
  94:	000005b7          	lui	a1,0x0
			94: R_RISCV_HI20	.LC1
			94: R_RISCV_RELAX	*ABS*
  98:	000007b7          	lui	a5,0x0
			98: R_RISCV_HI20	rw_main_task_hdl
			98: R_RISCV_RELAX	*ABS*
  9c:	00000537          	lui	a0,0x0
			9c: R_RISCV_HI20	blecontroller_main
			9c: R_RISCV_RELAX	*ABS*
  a0:	00078793          	mv	a5,a5
			a0: R_RISCV_LO12_I	rw_main_task_hdl
			a0: R_RISCV_RELAX	*ABS*
  a4:	4681                	li	a3,0
  a6:	20000613          	li	a2,512
  aa:	00058593          	mv	a1,a1
			aa: R_RISCV_LO12_I	.LC1
			aa: R_RISCV_RELAX	*ABS*
  ae:	00050513          	mv	a0,a0
			ae: R_RISCV_LO12_I	blecontroller_main
			ae: R_RISCV_RELAX	*ABS*
  b2:	6105                	addi	sp,sp,32
  b4:	00000317          	auipc	t1,0x0
			b4: R_RISCV_CALL	xTaskCreate
			b4: R_RISCV_RELAX	*ABS*
  b8:	00030067          	jr	t1 # b4 <.LVL46+0x2c>

Disassembly of section .text.ble_controller_deinit:

00000000 <ble_controller_deinit>:
   0:	000007b7          	lui	a5,0x0
			0: R_RISCV_HI20	.LANCHOR0
			0: R_RISCV_RELAX	*ABS*
   4:	0007a783          	lw	a5,0(a5) # 0 <ble_controller_deinit>
			4: R_RISCV_LO12_I	.LANCHOR0
			4: R_RISCV_RELAX	*ABS*
   8:	1101                	addi	sp,sp,-32
   a:	ce06                	sw	ra,28(sp)
   c:	4621                	li	a2,8
   e:	4581                	li	a1,0
  10:	cc22                	sw	s0,24(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	0028                	addi	a0,sp,8
  16:	9782                	jalr	a5

00000018 <.LVL48>:
  18:	04800513          	li	a0,72
  1c:	00000437          	lui	s0,0x0
			1c: R_RISCV_HI20	rw_main_task_hdl
			1c: R_RISCV_RELAX	*ABS*
  20:	00000097          	auipc	ra,0x0
			20: R_RISCV_CALL	bl_irq_disable
			20: R_RISCV_RELAX	*ABS*
  24:	000080e7          	jalr	ra # 20 <.LVL48+0x8>

00000028 <.LVL49>:
  28:	00042503          	lw	a0,0(s0) # 0 <ble_controller_deinit>
			28: R_RISCV_LO12_I	rw_main_task_hdl
			28: R_RISCV_RELAX	*ABS*
  2c:	4485                	li	s1,1
  2e:	00000097          	auipc	ra,0x0
			2e: R_RISCV_CALL	vTaskDelete
			2e: R_RISCV_RELAX	*ABS*
  32:	000080e7          	jalr	ra # 2e <.LVL49+0x6>

00000036 <.LVL50>:
  36:	00042023          	sw	zero,0(s0)
			36: R_RISCV_LO12_S	rw_main_task_hdl
			36: R_RISCV_RELAX	*ABS*
  3a:	00000437          	lui	s0,0x0
			3a: R_RISCV_HI20	xRwmainQueue
			3a: R_RISCV_RELAX	*ABS*

0000003e <.L36>:
  3e:	00042503          	lw	a0,0(s0) # 0 <ble_controller_deinit>
			3e: R_RISCV_LO12_I	xRwmainQueue
			3e: R_RISCV_RELAX	*ABS*
  42:	4601                	li	a2,0
  44:	002c                	addi	a1,sp,8
  46:	00000097          	auipc	ra,0x0
			46: R_RISCV_CALL	xQueueReceive
			46: R_RISCV_RELAX	*ABS*
  4a:	000080e7          	jalr	ra # 46 <.L36+0x8>

0000004e <.LVL51>:
  4e:	00950f63          	beq	a0,s1,6c <.L37>
			4e: R_RISCV_BRANCH	.L37
  52:	00042503          	lw	a0,0(s0)
			52: R_RISCV_LO12_I	xRwmainQueue
			52: R_RISCV_RELAX	*ABS*
  56:	00000097          	auipc	ra,0x0
			56: R_RISCV_CALL	vQueueDelete
			56: R_RISCV_RELAX	*ABS*
  5a:	000080e7          	jalr	ra # 56 <.LVL51+0x8>

0000005e <.LVL52>:
  5e:	40f2                	lw	ra,28(sp)
  60:	00042023          	sw	zero,0(s0)
			60: R_RISCV_LO12_S	xRwmainQueue
			60: R_RISCV_RELAX	*ABS*
  64:	4462                	lw	s0,24(sp)
  66:	44d2                	lw	s1,20(sp)
  68:	6105                	addi	sp,sp,32
  6a:	8082                	ret

0000006c <.L37>:
  6c:	4532                	lw	a0,12(sp)
  6e:	d961                	beqz	a0,3e <.L36>
			6e: R_RISCV_RVC_BRANCH	.L36

00000070 <.LBB22>:
  70:	1551                	addi	a0,a0,-12

00000072 <.LVL54>:
  72:	00000097          	auipc	ra,0x0
			72: R_RISCV_CALL	ble_ke_msg_free
			72: R_RISCV_RELAX	*ABS*
  76:	000080e7          	jalr	ra # 72 <.LVL54>

0000007a <.LVL55>:
  7a:	b7d1                	j	3e <.L36>
			7a: R_RISCV_RVC_JUMP	.L36

Disassembly of section .text.rwip_eif_get:

00000000 <rwip_eif_get>:
   0:	c511                	beqz	a0,c <.L44>
			0: R_RISCV_RVC_BRANCH	.L44
   2:	4789                	li	a5,2
   4:	00f50463          	beq	a0,a5,c <.L44>
			4: R_RISCV_BRANCH	.L44
   8:	4501                	li	a0,0

0000000a <.LVL57>:
   a:	8082                	ret

0000000c <.L44>:
   c:	00000537          	lui	a0,0x0
			c: R_RISCV_HI20	.LANCHOR8
			c: R_RISCV_RELAX	*ABS*

00000010 <.LVL59>:
  10:	00050513          	mv	a0,a0
			10: R_RISCV_LO12_I	.LANCHOR8
			10: R_RISCV_RELAX	*ABS*

00000014 <.LVL60>:
  14:	8082                	ret
