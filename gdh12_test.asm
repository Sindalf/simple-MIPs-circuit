# One LED at a time from bottom row to top row
# and the from first column to last column.
# Halt when it is done.

# Clear screen (just in case)
	addi $r1, $r0, 8	# Set $r1 to 8
csLoop:
	addi $r1, $r1, -1	# $r1 = $r1 - 1
	sb   $r0, 0x80($r1)	# Store 0 to display memory
	bne  $r1, $r0, csLoop	# if $r1 != 0, go to csLoop
	cdisp			# Change display
	mdisp		# Maintain display

# Clear screen code take from professor's onebyone.asm

infinite_loop:
	add $r1, $r0, $r0
	add $r2, $r0, $r0
	add $r3, $r0, $r0


	addi $r1, $r1, 1
	addi $r2, $r2, 64
left_loop:
	sb   $r1, 0x80($r3)
	add $r1, $r1, $r1
	addi $r3, $r3, 1
	bne $r1, $r2, left_loop
	j fix_left

start_right:	
	add $r1, $r0, $r0
	add $r2, $r0, $r0
	add $r3, $r0, $r0
	
	cdisp
	
	addi $r1, $r1, 1
	addi $r3, $r3, 7
	addi $r2, $r2, 1
	
right_loop:
	sb $r1, 0x80($r3)
	add $r1, $r1, $r1
	sub $r3, $r3, $r2
	bne $r3, $r2, right_loop
	beq $r1, $r1, final_x
	
display:
	cdisp
	halt

fix_left:
	sb $r1, 0x80($r3)
	j start_right
final_x:
	sb $r1, 0x80($r3)
	
	cdisp
	j infinite_loop