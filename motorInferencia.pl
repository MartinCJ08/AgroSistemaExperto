tp(H,R):-tipoSiembra(H,L),write(L),send(R,selection,L).

prof(H,R):-profundidad(H,L),send(R,selection,L).

dist(H,Planta,Hilera):-distancia(H,P,Hl),
send(Planta,selection,P),send(Hilera,selection,Hl).
vent:-consult('./AgroSistemaExperto/conocimiento.pl'),
new(D,dialog('Prueba')),
new(TxtA,text_item('Hortaliza')),
new(TxtB,text_item('Planta')),
new(TxtC,text_item('Hilera')),

new(BtnA,button('Pushale',message(@prolog,dist,TxtA?selection,TxtB,TxtC))),

send_list(D,append,[TxtA,TxtB,TxtC,BtnA]),

send(D,open).