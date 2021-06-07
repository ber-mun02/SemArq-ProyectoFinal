.inicio:

nop

xori $31, $8, 170            #Aplica clave -> H
xori $32, $15, 170           #Aplica clave -> O
xori $33, $17, 170           #Aplica clave -> L
xori $34, $1, 170            #Aplica clave -> A

sw $31, 1($zero)             #Guarda H clave en mem[1]
sw $32, 2($zero)             #Guarda O clave en mem[2]
sw $33, 3($zero)             #Guarda L clave en mem[3]
sw $34, 4($zero)             #Guarda A clave en mem[4]

lw $1, 8($zero)              #Guarda H clave sobre H
lw $2, 15($zero)             #Guarda O clave sobre O
lw $3, 17($zero)             #Guarda L clave sobre L
lw $4, 1($zero)              #Guarda A clave sobre A

beq $zero, $zero, .inicio    #Repetir operaciones 
                             #Ahora cambiamos las letras codificadas a el mensaje original
                            
nop
