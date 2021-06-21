.inicio:

nop
beq $1, $5, 4
xori $13, $13, 170             #Aplica clave -> H
sw $13, 0($5)
j 9
nop
nop
nop
beq $2, $5, 4
xori $20, $20, 170             #Aplica clave -> O
sw $13, 0($5)
j 16
nop
nop
nop
beq $3, $5, 4
xori $17, $17, 170             #Aplica clave -> L
sw $13, 0($5)
j 23
nop
nop
nop
beq $3, $5, 4
xori $6, $6, 170               #Aplica clave -> A
sw $13, 0($5)
j 30
nop
nop
nop
addi $5, $5, 1                 #Suma $5 = $5 + 1
beq $4, $5, 1
j 1
nop
nop
nop
