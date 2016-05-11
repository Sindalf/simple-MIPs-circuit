	addi $r1, $r1, 127
	
	addi $r2, $r2, 8
full_led:
	sb $r1, 0x80($r3)
	addi $r2, $r2, -1
	cdisp
	bne $r0, $r2, full_led
	cdisp
	halt