.inicio:

#BANCO

# $3 = 0
# $4 = 4
# $5 = 0
# $6 = 10
# $10 = 170 <- Clave 10101010 = AA

#MEMORIA

# $0 = 0
# $1 = 72 <- H
# $2 = 2
# $3 = 79 <- O
# $4 = 4
# $5 = 76 <- L
# $6 = 6
# $7 = 65 <- A

# $10 = 10
# $11 = 0 <- 229
# $12 = 12
# $13 = 0
# $14 = 14
# $15 = 0
# $16 = 16
# $17 = 0 

nop
addi $3, $3, 1   # <- Contador + 1 Indica las repeticiones del ciclo
lw $9, 1($5)     # <- H
addi $5, $5, 2   # <- Contador + 2
xor $9, $9, $10  # <- H xor 170 
sw $9, 1($6)     # $9 = 229
addi $6, $6, 2   # <- Contador + 2
beq $4, $3, 1
j 1
nop
