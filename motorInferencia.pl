:-consult('./AgroSistemaExperto/conocimiento.pl').
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

miPlantado(H,Calc,X,_,Y,_):-germina(H,Gu,Gd),recoleccion(H,Ru,Rd),
Calc>Gu,Calc<Gd,
write(Calc),nl,write(Gu),nl,write(Gd),
send(X,selection,'Esta en fechas de germinar'),send(Y,selection,'Todavía no es fecha de cosecha').
%% X = 'Esta en fechas de germinar',Y = 'Todavía no es fecha de cosecha'.
listona(Mes,[L]):-mes(H,MesLista),member(Mes,MesLista),
const(H,L,L).

%% miLista(Mes,ListaAux,Lista):-mes(H,MesLista),
%% member(Mes,MesLista),
%% cons(H,ListaAux,Lista).
%% obtenerHortaliza(Mes,H):-mes(H,MesLista),
%% member(Mes,MesLista).
%% lista(Mes,Lista):-obtenerHortaliza(Mes,H),
%% cons(H,[H],Lista).

%% conc([H],ListaAux,Lista),miLista(Mes,ListaAux,Lista).

prueba:-new(D,dialog('titulo')),
new(MenuHor,menu('mes:',cycle)),
send_list(MenuHor,append,['acelga','chile']),
new(LblProfundidad,label(nombre,'Hoal')),
new(TxtGerminaUno,text_item('Germina')),
new(TxtGerminaDos,text_item('Germian')),
new(BtnA,button('Pushale',message(@prolog,miProfundidad,MenuHor?selection,LblProfundidad))),

send_list(D,append,[MenuHor,LblProfundidad,TxtGerminaUno,TxtGerminaDos,BtnA]),
send(D,open).