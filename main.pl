:-use_module(library(pce)).
:-pce_image_directory('./img').
:-consult('./AgroSistemaExperto/motorInferencia.pl').
resource(logo,image,image('logo.jpg')).

mes:-write('Push it').

plantar:-new(Dp,dialog('Vamos a plantar!')),
new(TxtExt,text_item('Hortaliza')),
new(TxtPrueba,text_item('Prueba')),
new(MenuMes,menu('Que chingaos quieres?',cycle)),
send_list(MenuMes,append,['Enero','Febrero','Plastico']),
new(BtnHor,button('Buscar',message(@prolog,miProfundidad,TxtExt?selection,TxtPrueba))),

send_list(Dp,append,[TxtExt,TxtPrueba,MenuMes,BtnHor]),

send(Dp,open).

infoPlantado:-new(Di,dialog('Hortaliza')),
%% new(LblHort)
send_list(Di,append,[]),
send(Di,open).

plantado:-new(Dpl,dialog('Titulo')),
%% send(B,append,[chile,acelga]),
%% send(B,append,Dpl),
send(Dpl,open).


main:-new(LblIcon,label(icon,resource(logo))),
new(D,dialog('Sistema Experto acerca de Horalizas')),
new(BtnA,button('Quieres plantar?',message(@prolog,plantar))),
new(BtnB,button('Ya tengo plantado!',message(@prolog,plantado))),

send_list(D,append,[LblIcon,BtnA,BtnB]),
%% send(BtnB,below,BtnA),
send(D,open).

