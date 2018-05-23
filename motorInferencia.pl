:-consult('./AgroSistemaExperto/conocimiento.pl').

miTipoSiembra(H,R):-tipoSiembra(H,L),write(L),send(R,selection,L).

miProfundidad(H,R):-profundidad(H,L),send(R,selection,L).

miDistancia(H,Planta,Hilera):-distancia(H,P,Hl),
send(Planta,selection,P),send(Hilera,selection,Hl).
%%Queda pendiente asociar
miGermina(H,Dmin,Dmax):-germina(H,Min,Max),
send(Dmin,selection,Min),send(Dmax,selection,Max).

miRecoleccion(H,Dmin,Dmax):-recoleccion(H,Min,Max),
send(Dmin,selection,Min),send(Dmax,selection,Max).
%%Que da pendiente mes