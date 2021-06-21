.inicio:

nop

beq $1, $5, 1
xori $13, $13, 170             #Aplica clave -> H
j

nop
nop
nop

beq $2, $5, 1
xori $20, $20, 170             #Aplica clave -> O
j 

nop
nop
nop

beq $3, $5, 1
xori $17, $17, 170             #Aplica clave -> L
j 

nop
nop
nop

beq $4, $5, 1
xori $6, $6, 170               #Aplica clave -> A
j 

nop
nop
nop

addi $5, $5, 1                 #Registro $5 = $5 + 1
beq $4, $5, 1                  #Si (4 == 1) -> PC + 1
j 1                            #Salto a instrucción 1

nop
nop
nop

