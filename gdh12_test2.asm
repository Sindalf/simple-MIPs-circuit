home:
	
	addi $r1, $r1, 8
	sb $r1, 0x10($r0)
	
	addi $r1, $r0, 127
	addi $r2, $r0, 8
full_led:
	sb $r1, 0x80($r3)
	addi $r2, $r2, -1
	addi $r3, $r3, 1
	cdisp
	bne $r0, $r2, full_led
	cdisp
	
	
	nor $r1, $r0, $r0
	addi $r1, $r1, 1
redo:
	addi $r2, $r0, 8
other_led:
	sb $r1, 0x80($r3)
	
	addi $r2, $r2, -1
	addi $r3, $r3, 1
	cdisp 
	bne $r0, $r2, other_led
	
	add $r1, $r1, $r1
	addi $r1, $r1, 1
	
	lb $r2, 0x10($r0)
	sb $r1, 0x11($r0)
	lb $r1, 0x12($r0)
	beq $r2, $r1, end
	addi $r1, $r1, 1
	sb $r1, 0x12($r0)
	lb $r1, 0x11($r0)
	j redo

end:
	halt