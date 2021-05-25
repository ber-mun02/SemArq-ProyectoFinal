#Programa para saber si un número es mayor que otro después de una serie de operaciones

sw $0, 4($1)            #$0 = Mem[4+$s1] // $0 = 5
add $1, $3, $0          #$1 = $s0 + $s3 // $s1 = 5 + 3 = 8
beq $1, $8, 1           #Si $1 = $8, salta cuatro direcciones (div)
sub $2, $4, $1          #$2 = $s1 - $s4 // $s2 = 8 - 4 = 4
mult $0, $6, $2          #$0 = $s2 * $s6 // $s0 = 4 * 6 = 24
and $0, $6, $0          #$0 = $s0 & $s6 // $s0 = 24 & 6 = 0
or $0, $7, $0           #$0 = $s0 | $s7 // $s0 = 0 | 7 = 7
j 1                     #Salta cuatro direcciones
slt $1, $0, $9          #$1 = 1, si($0 < $9) // $1 = 1, si(7 < 9); por lo tanto, $1 = 1 