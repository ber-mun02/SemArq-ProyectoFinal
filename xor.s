.inicio:

nop

xori $27, $8, 170            #Aplica clave -> H
xori $28, $15, 170           #Aplica clave -> O
xori $29, $17, 170           #Aplica clave -> L
xori $30, $1, 170            #Aplica clave -> A

sw $27, 1($zero)             #Guarda H clave en mem[1]
sw $28, 2($zero)             #Guarda O clave en mem[2]
sw $29, 3($zero)             #Guarda L clave en mem[3]
sw $30, 4($zero)             #Guarda A clave en mem[4]

lw $1, 8($zero)              #Guarda H clave sobre H
lw $2, 15($zero)             #Guarda O clave sobre O
lw $3, 17($zero)             #Guarda L clave sobre L
lw $4, 1($zero)              #Guarda A clave sobre A

beq $zero, $zero, .inicio    #Repetir operaciones 
                             #Ahora cambiamos las letras codificadas a el mensaje original
                            
nop
