def temp = rjmp
def cte=r17

.cseg
.org 0


ldi temp $00
ldi cte, $01
out portb, cte
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
sub temp, cte
breq izquierda
add temp, cte
rjmp derecha2