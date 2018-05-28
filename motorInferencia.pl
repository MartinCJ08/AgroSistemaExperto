:-consult('./conocimiento.pl').
const(X,L,[X|L]).
const(X,[],[X]).
conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

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

miTodo(H,P,Gu,Gd,Du,Dd,Ru,Rd):-miProfundidad(H,P),miGermina(H,Gu,Gd),
miDistancia(H,Du,Dd),miRecoleccion(H,Ru,Rd).

miPlantado(H,Calc,X,Y):-atom_number(Calc,Cc),
germina(H,Gu,_),Cc>=0,Cc<Gu, R is Gu-Cc,
atom_concat('Faltan ', R, Cad),
atom_concat(Cad, ' dia(s) para germinar',NewCad),
send(X,selection,NewCad),
send(Y,selection,'').

miPlantado(H,Calc,X,Y):-atom_number(Calc,Cc),
germina(H,Gu,Gd),
Cc>=Gu,Cc=<Gd,
send(X,selection,'Esta en fechas de germinar'),
send(Y,selection,'Todavia no es fecha de cosecha').

miPlantado(H,Calc,X,Y):-atom_number(Calc,Cc),
recoleccion(H,Ru,Rd),
Cc>=Ru,Cc=<Rd,
send(Y,selection,'Ya son fechas de cosechas!'),
send(X,selection,'').

miPlantado(H,Calc,X,Y):-atom_number(Calc,Cc),
recoleccion(H,_,Rd),
Cc>Rd,
R is Cc - Rd,
atom_concat('Han pasado ',R,Cad),
atom_concat(Cad, ' dia(s) estimados desde la primer cosecha',NewCad),
send(Y,selection,NewCad),
send(X,selection,'Ya debio de haber germinado').

miPlantado(H,Calc,X,Y):-atom_number(Calc,Cc),
germina(H,_,Gd),recoleccion(H,Ru,_),
Cc>Gd,Cc<Ru,
R is Ru - Cc,
atom_concat('Faltan ', R, Cad),
atom_concat(Cad, ' dia(s) aprox. para la primer cosecha',NewCad),
send(Y,selection,NewCad),
send(X,selection,'Ya debio de haber germinado').

%%No funciona listona
listona(Mes,[L]):-mes(H,MesLista),member(Mes,MesLista),
const(H,L,L).

testing:-new(D,dialog('titulo')),
new(MenuHor,menu('mes:',cycle)),
send_list(MenuHor,append,['chile','acelga']),
new(TxtA,text_item('Germina')),
new(TxtB,text_item('Germina')),
new(TxtC,text_item('Germina')),
new(BtnA,button('Picale',message(@prolog,miPlantado,
	MenuHor?selection,TxtA?selection,TxtB,TxtC))),

send_list(D,append,[MenuHor,TxtA,TxtB,TxtC,BtnA]),
send(D,open).