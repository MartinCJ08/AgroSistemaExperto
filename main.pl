:-use_module(library(pce)).
:-pce_image_directory('./img').
:- use_module(library(pce_style_item)).
:-consult('./AgroSistemaExperto/motorInferencia.pl').
resource(logo,image,image('logo.jpg')).
resource(siembra,image,image('siembra.jpg')).

mes:-write('Push it').

obtenerPlantar(Hemisferio,Mes):-L = [Hemisferio,Mes],write(L).

plantar:-new(Dp,dialog('Vamos a plantar!')),
new(MenuMes,menu('mes:',cycle)),
send_list(MenuMes,append,['Enero','Febrero','Marzo','Abril',
	'Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Novimbre','Diciembre']),

new(Op, menu('Hemisferio', marked)),
send(Op, append, norte), send(Op,append, sur),  
send(Op, size,size(300,300)), 
send(Dp, display, Op, point(100, 40)),
%% new(BtnHor,button('Buscar',message(@prolog,obtenerPlantar,Op?selection,MenuMes?selection))),
new(BtnHor,button('Buscar',message(@prolog,infoPlantar,MenuMes?selection))),

send_list(Dp,append,[MenuMes,Op,BtnHor]),

send(Dp,open).


infoPlantar(Mes):-
%% write(Mes),
%% miLista(Mes,Lista),
%% write(Lista),
new(Dinfo,dialog('Información')),
new(MenuHor,menu('mes:',cycle)),
send_list(MenuHor,append,['chile','acelga']),%%Cabiar a lista dinamica

new(TxtProfundidad,text_item('Profundidad(cm)')),
new(TxtGerminaUno,text_item('Inicio Germina(Dias)')),
new(TxtGerminaDos,text_item('Fin Germina(Dias)')),
new(TxtRecoleccionUno,text_item('Inicio Recoleccion(dias)')),
new(TxtRecoleccionDos,text_item('Fin Recoleccion(dias)')),
new(TxtDisPlant,text_item('Disntancia entre plantacas (cm)')),
new(TxtDisHil,text_item('Disntancia entre hilera (cm)')),
new(TxtInfo,text_item('Información')),
new(LblSiembra,label(siembra,resource(siembra))),
%% send(LblSiembra,right,TxtHortaliza),
new(BtnVer,button('Ver',message(@prolog,miTodo,MenuHor?selection,
	TxtProfundidad,TxtGerminaUno,TxtGerminaDos,TxtDisPlant,TxtDisHil,
	TxtRecoleccionUno,TxtRecoleccionDos))),
send_list(Dinfo,append,[LblSiembra,MenuHor,TxtProfundidad,TxtGerminaUno,TxtGerminaDos,TxtRecoleccionUno,
	TxtRecoleccionDos,TxtDisPlant,TxtDisHil,TxtInfo,BtnVer]),
%% send(Dinfo,display,point(650,300)),

send(Dinfo,open_centered).

%% info(X):-

plantado:-new(Dpl,dialog('Titulo')),
new(MenuHor,menu('Hortaliza',cycle)),
send_list(MenuHor,append,['chile','acelga']),
new(TxtIni,text_item('Inicio aprox. de plantacion')),
new(TxtGerminaUno,text_item('Inicio Germina(Dias)')),
new(TxtGerminaDos,text_item('Fin Germina(Dias)')),
new(TxtRecoleccionUno,text_item('Inicio Recoleccion(dias)')),
new(TxtRecoleccionDos,text_item('Fin Recoleccion(dias)')),
new(BtnCalc,button('Calcular',message(@prolog,miPlantado,MenuHor?selection,
	TxtIni?selection,TxtGerminaUno,TxtGerminaDos,TxtRecoleccionUno,TxtRecoleccionDos))),
send_list(Dpl,append,[MenuHor,TxtIni,TxtGerminaUno,
	TxtGerminaDos,TxtRecoleccionUno,TxtRecoleccionDos,
	BtnCalc]),

send(Dpl,open).


main:-new(LblIcon,label(icon,resource(logo))),
new(D,dialog('Sistema Experto acerca de Horalizas')),
new(BtnA,button('Quieres plantar?',message(@prolog,plantar))),
new(BtnB,button('Ya tengo plantado!',message(@prolog,plantado))),

send_list(D,append,[LblIcon,BtnA,BtnB]),
send(D,open_centered).

prueba:-
new(D, dialog('title')), 
%% miProfundidad(acelga,X),
%% new(TxtA,text_item('')),
%% send(TxtA,selection,miProfundidad(acelga,X)),
%% write('Alv'),nl,
%% write(X),
%% send(D, size, size(500,500)), 
%% send(D, append,new(Op, menu(options, marked))), 
%% send(Op, append, option1), send(Op,append, option2), 
%% send(Op, append, option2), 
%% send(Op, size,size(300,300)), 
%% send(D, display, Op, point(100, 40)), 
%% send(D,append(new(B1,button(ok, message(D, return, Op?selection))))), 
%% send(D,display, B1, point(100, 100)), 
%% send(D, append(button(cancel,message(D, return, @nil)))), 
%% send(D, default_button(ok)),get(D,confirm, Rval),write(Rval),
send(D,open).