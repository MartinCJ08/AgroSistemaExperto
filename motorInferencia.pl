%% tp(N1,R):-tipoSiembra(),member(),send(R,,P). si uso una lista de palabras clave
%%Motor inferencia para buscar tipo de Siembra
tp(N1,R):-tipoSiembra(N1,L),send(R,selection,L).