	add  $r1, $r0, $r0
	addi $r2, $r0, 8
cLoop:	slt  $r3, $r1, $r2
	beq  $r3, $r0, cDone
	lb   $r0, 0x80($r1)
	addi $r1, $r1, 1
	j    cLoop
cDone:	cdisp
	mdisp
	addi $r1, $r0, 1
	sb   $r1, 0($r0)
	addi $r1, $r0, 3
	sb   $r1, 1($r0)
	addi $r1, $r0, 7
	sb   $r1, 2($r0)
	addi $r1, $r0, 15
	sb   $r1, 3($r0)
	addi $r1, $r0, 31
	sb   $r1, 4($r0)
	addi $r1, $r0, 63
	sb   $r1, 5($r0)
	addi $r1, $r0, 127
	sb   $r1, 6($r0)
	addi $r1, $r0, 0xff
	sb   $r1, 7($r0)
L6:	sb   $r0, 0x7F($r0)
L4:	lb   $r1, 0x7F($r0)
	addi $r3, $r0, 8
	slt  $r3, $r1, $r3
	beq  $r3, $r0, L1
	sb   $r0, 0x7E($r0)
L3:	lb   $r1, 0x7E($r0)
	addi $r3, $r0, 8
	slt  $r3, $r1, $r3
	beq  $r3, $r0, L2
	lb   $r1, 0x7E($r0)
	lb   $r3, 0($r1)
	lb   $r1, 0x7F($r0)
	sb   $r3, 0x80($r1)
	cdisp
	mdisp
	lb   $r1, 0x7E($r0)
	addi $r1, $r1, 1
	sb   $r1, 0x7E($r0)
	j    L3
L2:	lb   $r1, 0x7F($r0)
	addi $r1, $r1, 1
	sb   $r1, 0x7F($r0)
	j    L4
L1:	add  $r1, $r0, $r0
	addi $r2, $r0, 8
loop:	slt  $r3, $r1, $r2
	beq  $r3, $r0, DONE
	sb   $r0, 0x80($r1)
	addi $r1, $r1, 1
	j    loop
DONE:	cdisp
	mdisp
	j    L6

