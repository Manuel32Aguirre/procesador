.def temp = r16
.def cte=r17
.def cont1 = r18
.def cont2 = r19
.def cont3 = r20
.cseg
.org 0


ldi temp $00
ldi cte, $01
out portb, cte
rcall delay_125m
izquierda: add temp, cte
ldi cte, $$80
izquierda2: lsl temp
out portb, temp
sub temp, cte
breq derecha
add temp, cte
rjmp izquierda2


derecha: add temp, cte
ldi cte, $01
derecha2: lsr temp
out portb, temp
rcall delay_125m
sub temp, cte
breq izquierda
add temp, cte
rjmp derecha2

delay_125m: ldi cont1, 5
ldi cont2, 200
lazo2: ldi cont3, 200
lazo1: nop
nop
nop
nop
nop
nop
nop
dec cont 3 //No tenemos esta instruccion, hay que implementarla, USAMOS RESTA
brne lazo1
dec cont2
brne lazo2
dec cont1
brne lazo3
ret

/*Proyecto
Hacer un contaador ascendente o descendente
queremos veerlo en los display que traen las tarjetas
si nop traen display, lo ponemos

que llegue a 999
minimo 3 display
necesitamos un puerto para los segmentos
CA, CB,,...CF
Hay que multiplexar
agregar otro puerto

Que operaciones
*/