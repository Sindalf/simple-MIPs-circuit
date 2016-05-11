	add  $r1, $r0, $r0
	addi $r2, $r0, 8
loop:	slt  $r3, $r1, $r2
	beq  $r3, $r0, DONE
	lb   $r0, 0x80($r1)
	addi $r1, $r1, 1
	j    loop
DONE:	cdisp
	mdisp
	sb   $r0, 0($r0)
	sb   $r0, 1($r0)
	sb   $r0, 2($r0)
	sb   $r0, 3($r0)
	sb   $r0, 4($r0)
	sb   $r0, 5($r0)
	sb   $r0, 6($r0)
	sb   $r0, 7($r0)
	addi $r1, $r0, 0x3E
	sb   $r1, 0x08($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x09($r0)
	addi $r1, $r0, 0x45
	sb   $r1, 0x0a($r0)
	addi $r1, $r0, 0x45
	sb   $r1, 0x0b($r0)
	addi $r1, $r0, 0x26
	sb   $r1, 0x0c($r0)
	sb   $r0, 0x0d($r0)
	addi $r1, $r0, 0x3E
	sb   $r1, 0x0e($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x0f($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x10($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x11($r0)
	addi $r1, $r0, 0x3e
	sb   $r1, 0x12($r0)
	sb   $r0, 0x13($r0)
	addi $r1, $r0, 0x3E
	sb   $r1, 0x14($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x15($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x16($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x17($r0)
	addi $r1, $r0, 0x3e
	sb   $r1, 0x18($r0)
	sb   $r0, 0x19($r0)
	addi $r1, $r0, 0x7f
	sb   $r1, 0x1a($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x1b($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x1c($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x1d($r0)
	addi $r1, $r0, 0x3e
	sb   $r1, 0x1e($r0)
	sb   $r0, 0x1f($r0)
	sb   $r0, 0x20($r0)
	sb   $r0, 0x21($r0)
	sb   $r0, 0x22($r0)
	sb   $r0, 0x23($r0)
	sb   $r0, 0x24($r0)
	sb   $r0, 0x25($r0)
	addi $r1, $r0, 0x06
	sb   $r1, 0x26($r0)
	addi $r1, $r0, 0x01
	sb   $r1, 0x27($r0)
	addi $r1, $r0, 0x01
	sb   $r1, 0x28($r0)
	addi $r1, $r0, 0x01
	sb   $r1, 0x29($r0)
	addi $r1, $r0, 0x7e
	sb   $r1, 0x2a($r0)
	sb   $r0, 0x2b($r0)
	addi $r1, $r0, 0x3E
	sb   $r1, 0x2c($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x2d($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x2e($r0)
	addi $r1, $r0, 0x41
	sb   $r1, 0x2f($r0)
	addi $r1, $r0, 0x3e
	sb   $r1, 0x30($r0)
	sb   $r0, 0x31($r0)
	addi $r1, $r0, 0x7f
	sb   $r1, 0x32($r0)
	addi $r1, $r0, 0x49
	sb   $r1, 0x33($r0)
	addi $r1, $r0, 0x49
	sb   $r1, 0x34($r0)
	addi $r1, $r0, 0x49
	sb   $r1, 0x35($r0)
	addi $r1, $r0, 0x36
	sb   $r1, 0x36($r0)
	sb   $r0, 0x37($r0)
	addi $r1, $r0, 0x0C
	sb   $r1, 0x38($r0)
	addi $r1, $r0, 0x02
	sb   $r1, 0x39($r0)
	addi $r1, $r0, 0x71
	sb   $r1, 0x3a($r0)
	addi $r1, $r0, 0x01
	sb   $r1, 0x3b($r0)
	addi $r1, $r0, 0x01
	sb   $r1, 0x3c($r0)
	addi $r1, $r0, 0x71
	sb   $r1, 0x3d($r0)
	addi $r1, $r0, 0x02
	sb   $r1, 0x3e($r0)
	addi $r1, $r0, 0x0c
	sb   $r1, 0x3f($r0)
L6:	sb   $r0, 0x7F($r0)
L4:	lb   $r1, 0x7F($r0)
	addi $r3, $r0, 0x38
	slt  $r3, $r1, $r3
	beq  $r3, $r0, L1
	sb   $r0, 0x7E($r0)
L3:	lb   $r1, 0x7E($r0)
	addi $r3, $r0, 8
	slt  $r3, $r1, $r3
	beq  $r3, $r0, L2
	lb   $r1, 0x7E($r0)
	lb   $r2, 0x7F($r0)
	add  $r2, $r1, $r2
	lb   $r3, 0($r2)
	sb   $r3, 0x80($r1)
	lb   $r1, 0x7E($r0)
	addi $r1, $r1, 1
	sb   $r1, 0x7E($r0)
	j    L3
L2:	cdisp
	mdisp
	lb   $r1, 0x7F($r0)
	addi $r1, $r1, 1
	sb   $r1, 0x7F($r0)
	j    L4
L1:	halt

