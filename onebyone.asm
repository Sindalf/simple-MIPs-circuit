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
	mdisp			# Maintain display


	addi $r2, $r2, 8	# $r2 = 8
	add  $r3, $r0, $r0	# $r3 = 0
ncLoop:
	addi $r1, $r1, 1	# $r1 = 1
dpLoop:
	sb   $r1, 0x80($r3)	# M[$r3 + 0x80] = $r1
	cdisp			# Change display
	mdisp			# Maintain display
	add  $r1, $r1, $r1	# $r1 = $r1 * 2
	bne  $r1, $r0, dpLoop	# If $r1 != 0, go back to dpLoop
	sb   $r1, 0x80($r3)	# M[$r3 + 0x80} = $r1 (0 in this line)
	cdisp			# Change display
	mdisp			# Maintain display
	addi $r3, $r3, 1	# Next column
	beq  $r3, $r2, done	# If column == 8, done
	j ncLoop		# Go back to ncLoop
done:	halt			# Halt
