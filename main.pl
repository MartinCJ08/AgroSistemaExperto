:-use_module(library(pce)).
:-pce_image_directory('./img').
:- use_module(library(pce_style_item)).
:-consult('motorInferencia.pl').
resource(logo,image,image('logo.jpg')).
resource(siembra,image,image('siembra.jpg')).
resource(huerto,image,image('huerto.jpg')).
resource(horizontal,image,image('horizontal.jpg')).
resource(vertical,image,image('vertical.jpg')).

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
new(Dinfo,dialog('Información')),
new(MenuHor,menu('mes:',cycle)),
send_list(MenuHor,append,['chile','acelga']),%%Cabiar a lista dinamica

new(TxtProfundidad,text_item('Profundidad(cm)')),
new(TxtGerminaUno,text_item('Inicio Germina(Dias)')),
new(TxtGerminaDos,text_item('Fin Germina(Dias)')),
new(TxtRecoleccionUno,text_item('Inicio Recoleccion(dias)')),
new(TxtRecoleccionDos,text_item('Fin Recoleccion(dias)')),
new(TxtDisPlant,text_item('Distancia entre plantacas (cm)')),
new(TxtDisHil,text_item('Distancia entre hilera (cm)')),
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

huerto:-new(D,dialog('Informacion de Huertas Caseras')),

new(LblInfo,label(name,'Recomendaciones generales:')),
new(LblGen,label(name,'-Deber ser un lugar soleado,esto para alimentar a las plantas
	-Es recomentable tener una toma de aguar cercana,para ahorrar tiempo y esfuerezo al momento de regar
	-Es imprescindible contar con un buen sistema de drenaje,esto para evitar inconvenientes con el agua sobrante.
	Si se tiene el huerto dentro del hogar se puede optar por cubetas o bandejas que recojan el agua sobrante')),
new(BtnVertical, button('Huerto vertical',message(@prolog,vertical))),
new(BtnHorizontal, button('Huerto horizontal',message(@prolog,horizontal))),
new(LblHuerto,label(huerto,resource(huerto))),
send(LblInfo,font,font(tahoma,bold,20)),
send_list(D,append,[LblInfo,LblGen,BtnVertical,BtnHorizontal,LblHuerto]),
send(D,open_centered).

vertical:-new(D,dialog('Huertas Caseras Verticales')),
new(LblVertical,label(vertical,resource(vertical))),
send_list(D,append,[LblVertical]),
send(D,open_centered).
horizontal:-new(D,dialog('Huertas Caseras Horizontales')),
new(LblVertical,label(horizontal,resource(horizontal))),
send_list(D,append,[LblVertical]),
send(D,open_centered).

main:-new(LblIcon,label(icon,resource(logo))),
new(D,dialog('Sistema Experto acerca de Hortalizas')),
new(BtnPlantar,button('Quieres plantar?',message(@prolog,plantar))),
new(BtnPlantado,button('Ya tengo plantado!',message(@prolog,plantado))),
new(BtnHuerto,button('Huerto Casero',message(@prolog,huerto))),

send_list(D,append,[LblIcon,BtnPlantar,BtnPlantado,BtnHuerto]),
send(D,open_centered).