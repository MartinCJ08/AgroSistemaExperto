tipoSiembra(acelga,[directa,almacigo]).
tipoSiembra(chile,[almacigo]).
tipoSiembra(ajo,[directa]).
tipoSiembra(albahaca,[almacigo]).
tipoSiembra(alchachofa,[hijuelos]).
tipoSiembra(anquito,[directa]).
tipoSiembra(apio,[almacigo]).
tipoSiembra(arveja,[directa]).
tipoSiembra(batatas,[almacigo]).
tipoSiembra(berenjena,[almacigo]).
tipoSiembra(berro,[directa]).
tipoSiembra(brocoli,[almacigo]).
tipoSiembra(calabacin,[directa,almacigo]).
tipoSiembra(calabaza,[directa]).
tipoSiembra(canonigo,[directa]).
tipoSiembra(cardos,[directa]).
tipoSiembra(cebollaTemprana,[almacigo]).
tipoSiembra(cebollaTardia,[almacigo]).
tipoSiembra(cebollin,[directa]).
tipoSiembra(ciboulette,[directa]).
tipoSiembra(cilantro,[directa]).
tipoSiembra(coliflor,[almacigo]).
tipoSiembra(eneldo,[directa]).
tipoSiembra(escarola,[directa]).
tipoSiembra(esparragos,[almacigo]).
tipoSiembra(espinaca,[directa]).
tipoSiembra(fresas,[estolon]).
tipoSiembra(garbanzos,[directa]).
tipoSiembra(haba,[directa]).
tipoSiembra(hinojo,[almacigo]).
tipoSiembra(lavanda,[directa]).
tipoSiembra(lechuga,[directa,almacigo]).
tipoSiembra(maiz,[directa]).
tipoSiembra(manzanilla,[directa]).
tipoSiembra(mejorana,[directa]).
tipoSiembra(menta,[directa,almacigo]).
tipoSiembra(melisa,[almacigo]).
tipoSiembra(melon,[directa,almacigo]).
tipoSiembra(mostaza,[directa,almacigo]).
%%Profundidad de siembra en centimetros
profundidad(acelga,2).
profundidad(chile,'0.6').
profundidad(albahaca,7).
profundidad(alchachofa,4).
profundidad(anquito,'2.5').
profundidad(apio,1).
profundidad(arveja,3).
profundidad(batatas,8).
profundidad(berenjena,1).
profundidad(berro,x).
profundidad(brocoli,'1.5').
profundidad(calabacin,2).
profundidad(calabaza,4).
profundidad(canonigo,'0.5').
profundidad(cardos,2).
profundidad(cebollaTemprana,1).
profundidad(cebollaTardia,1).
profundidad(cebollin,1).
profundidad(ciboulette,'0.5').
profundidad(cilantro,1).
profundidad(coliflor,1).
profundidad(eneldo,1).
profundidad(escarola,1).
profundidad(esparrago,5).
profundidad(espinaca,2).
profundidad(estragon,1).
profundidad(fresas,8).
profundidad(garbanzos,5).
profundidad(haba,5).
profundidad(hinojo,2).
profundidad(lavanda,1).
profundidad(lechuga,1).
profundidad(maiz,5).
profundidad(manzanilla,'1.5').
profundidad(mejorana,'0.5').
profundidad(menta,1).
profundidad(melisa,1).
profundidad(melon,4).
profundidad(mostaza,'1.2').
%%distancia en cm(plantas,hileras)
distancia(acelga,20,60).
distancia(chile,25,45).
distancia(ajo,8,30).
distancia(albahaca,25,60).
distancia(alchachofa,60,75).
distancia(anquito,10,180).
distancia(apio,30,70).
distancia(arveja,50,70).
distancia(batatas,40,80).
distancia(berenjena,50,70).
distancia(berro,10,10).
distancia(brocoli,45,75).
distancia(calabacin,80,100).
distancia(calabaza,120,180).
distancia(canonigo,10,20).
distancia(cardos,80,100).
distancia(cebollaTemprana,15,35).
distancia(cebollaTardia,15,35).
distancia(cebollin,30,60).
distancia(ciboulette,5,20).
distancia(cilantro,12,30).
distancia(coliflor,50,80).
distancia(eneldo,30,30).
distancia(escarola,10,30).
distancia(esparrago,7,30).
distancia(espinaca,15,30).
distancia(estragon,30,40).
distancia(fresas,30,50).
distancia(garbanzos,40,40).
distancia(haba,30,70).
distancia(hinojo,30,70).
distancia(lavanda,30,40).
distancia(lechuga,20,30).
distancia(maiz,30,70).
distancia(manzanilla,15,25).
distancia(mejorana,25,25).
distancia(menta,25,25).
distancia(melisa,30,30).
distancia(melon,150,200).
distancia(mostaza,30,40).
%%hortalizas que se pueden plantar junta
asociar(acelga,[lechuga,coles,coliflor]).
asociar(chile,[berenjena,coles,albahaca]).
asociar(ajo,[lechuga,hinojo]).
asociar(albahaca,[pepino,tomate]).
asociar(alchachofa,[lechuga]).
asociar(anquito,[maiz,acelga]).
asociar(apio,[lechuga]).
asociar(arveja,[zanahoria,lechuga]).
asociar(batatas,[nada]).
asociar(berenjena,[lechuga,coliflor]).
asociar(berro,[no]).
asociar(brocoli,[espinaca]).
asociar(calabacin,[maiz,acelga]).
asociar(calabaza,[maiz,lechuga]).
asociar(canonigo,[zanahoria,coles,lechuga]).
asociar(cardos,[haba]).
asociar(cebollaTemprana,[lechuga,coliflor]).
asociar(cebollaTardia,[zanahoria,lechuga,fresas,coles,tomate]).
asociar(cebollin,[zanahoria]).
asociar(ciboulette,[zanahoria]).
asociar(cilantro,[no]).
asociar(coliflor,[lechuga,apio,zanahoria]).
asociar(eneldo,[coles,calabaza]).
asociar(escarola,[lechuga,tomate]).
asociar(esparrago,[lechuga,tomate]).
asociar(espinaca,[coliflor,brocoli]).
asociar(estragon,[no]).
asociar(fresas,[ajo,espinaca,lechuga]).
asociar(garbanzos,[no]).
asociar(haba,[zanahoria,coliflor]).
asociar(hinojo,[no]).
asociar(lavanda,[no]).
asociar(lechuga,[acelga,zanahoria]).
asociar(maiz,[acelga]).
asociar(manzanilla,[coles]).
asociar(mejorana,[todo]).
asociar(menta,[coles,lechuga]).
asociar(melisa,[todo]).
asociar(melon,[lechuga,maiz]).
asociar(mostaza,[acelga]).
%%germina (hortaliza,dias minimos, dias maximos)
germina(acelga,7,9).
germina(chile,15,30).
germina(ajo,10,12).
germina(albahaca,10,15).
germina(alchachofa,12,15).
germina(anquito,7,10).
germina(apio,15,20).
germina(arveja,5,10).
germina(batatas,20,40).
germina(berenjena,7,10).
germina(berro,10,15).
germina(brocoli,6,10).
germina(calabacin,5,10).
germina(calabaza,5,10).
germina(canonigo,8,10).
germina(cardos,7,10).
germina(cebollaTemprana,8,10).
germina(cebollaTardia,8,10).
germina(cebollin,10,15).
germina(ciboulette,12,15).
germina(cilantro,10,12).
germina(coliflor,5,6).
germina(eneldo,12,18).
germina(escarola,6,8).
germina(esparrago,10,15).
germina(espinaca,5,7).
germina(estragon,15,20).
germina(fresas,15,20).
germina(garbanzos,10,15).
germina(haba,10,12).
germina(hinojo,15,20).
germina(lavanda,15,20).
germina(lechuga,7,8).
germina(maiz,7,8).
germina(manzanilla,7,21).
germina(mejorana,15,21).
germina(menta,8,10).
germina(melisa,10,12).
germina(melon,3,7).
germina(mostaza,3,10).
%%recoleccion desde la siembra(hortaliza,)
recoleccion(acelga,90,90).
recoleccion(chile,60,90).
recoleccion(ajo,180,200).
recoleccion(albahaca,70,90).
recoleccion(alchachofa,80,100).
recoleccion(apio,150,150).
recoleccion(arveja,80,100).
recoleccion(batatas,210,250).
recoleccion(berenjena,90,100).
recoleccion(berro,60,60).
recoleccion(brocoli,60,100).
recoleccion(calabacin,100,100).
recoleccion(calabaza,120,120).
recoleccion(canonigo,40,60).
recoleccion(cardos,120,150).
recoleccion(cebollaTemprana,100,100).
recoleccion(cebollaTardia,100,100).
recoleccion(cebollin,110,120).
recoleccion(ciboulette,90,90).
recoleccion(cilantro,90,90).
recoleccion(coliflor,90,90).
recoleccion(eneldo,90,90).
recoleccion(escarola,90,90).
recoleccion(espinaca,60,90).
recoleccion(estragon,90,90).
recoleccion(fresas,100,120).
recoleccion(garbanzos,110,110).
recoleccion(haba,90,90).
recoleccion(hinojo,70,100).
recoleccion(lavanda,90,90).
recoleccion(lechuga,90,100).
recoleccion(maiz,100,120).
recoleccion(manzanilla,100,120).
recoleccion(mejorana,100,120).
recoleccion(menta,90,90).
recoleccion(melisa,90,110).
recoleccion(melon,100,120).
recoleccion(mostaza,100,120).

mes(acelga,[1,2,3,4,5,6,7,8,9,10,11,12]).
mes(chile,[8,9]).
mes(ajo,[]).
mes(albahaca,).
mes(alchachofa,).
mes(anquito,).
mes(api,).
mes(arveja,).
mes(batatas,).
mes(berenjena,).
mes(berro,).
mes(brocoli,).
mes(calabacin,).
mes(calabaza,).
mes(canonigo,).
mes(cardos,).
mes(cebollaTemprana,).
mes(cebollaTardia,).
mes(cebollin,).
mes(ciboulette,).
mes(cilantro,).
mes(coliflor,).
mes(eneldo,).
mes(escarola,).
mes(esparrago,).
mes(espinaca,).
mes(estragon,).
mes(fresas,).
mes(garbanzos,).
mes(haba,).
mes(hinojo,).
mes(lavanda,).
mes(lechuga,).
mes(maiz,).
mes(manzanilla,).
mes(mejorana,).
mes(menta,).
mes(melisa,).
mes(melon,).
mes(mostaza,).