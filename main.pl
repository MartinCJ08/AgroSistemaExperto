:-use_module(library(pce)).
:-consult(conocimiento).
:-pce_image_directory('./img').
resource(logo,image,image('logo.jpg')).

%% tp(N1,R):-tipoSiembra(N1,L),send(R,selection,L).
mes:-write('Push it').

plantar:-new(Dp,dialog('Vamos a plantar!')),
new(TxtExt,text_item('Hortaliza')),
new(TxtPrueba,text_item('Prueba')),
new(BtnHor,button('Buscar',message(@prolog,mes))),
%% N1 is TxtExt,
%% tp(N1,R),
%% write(R),
send_list(Dp,append,[TxtExt,TxtPrueba,BtnHor]),

send(Dp,open).

plantado:-new(Dpl,dialog('Titulo')),
%% send(B,append,[chile,acelga]),
%% send(B,append,Dpl),
send(Dpl,open).


main:-new(LblIcon,label(icon,resource(logo))),
new(D,dialog('Sistema Experto acerca de Horalizas')),
new(BtnA,button('Quieres plantar?',message(@prolog,plantar))),
new(BtnB,button('Ya tengo plantado!',message(@prolog,plantado))),

send_list(D,append,[LblIcon,BtnA,BtnB]),
send(BtnB,below,BtnA),
send(D,open).

