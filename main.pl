consult('motorInferencia.pl').
consult('.AgroSistemaExperto/conocimiento.pl').
mes:-write('Push it').

plantar:-new(Dp,dialog('Vamos a plantar!')),
new(TxtExt,text_item('Hortaliza')),
new(TxtPrueba,text_item('Prueba')),
new(BtnHor,button('Buscar',message(@prolog,mes))),
%% N1 is TxtExt,
%% tp(N1,R),
send_list(Dp,append,[TxtExt,TxtPrueba,BtnHor]),

send(Dp,open).

plantado:-new(Dp,dialog('Titulo')),
send(B,append,[chile,acelga]),
send(B,append,Dp),
send(Dp,open).


main:-new(D,dialog('Sistema Experto acerca de Horalizas')),
new(BtnA,button('Quieres plantar?',message(@prolog,plantar))),
new(BtnB,button('Ya tengo plantado!',message(@prolog,plantado))),

send_list(D,append,[BtnA,BtnB]),
send(BtnB,below,BtnA),
send(D,open).

