.inicio:

nop
addi $3, $3, 1
lw $9, 1($5)
addi $5, $5, 2
xor $9, $9, $10
sw $9, 1($6)
addi $6, $6, 2
beq $4, $3, 1
j 1
nop
