/* FATOS E HIERARQUIAS */

%Hierarquia Jedi
sw(jedi,quigon).
sw(jedi,windu).
sw(jedi,luke).
sw(jedi,anakin).
sw(jedi, yoda).
sw(jedi,obiwan).
sw(jedi, dookan).

%Hierarquia Sith
sw(sith,anakin).
sw(sith,darthmaul).
sw(sith,darthsidious).
sw(sith,dookan).

%Hierarquia Skywalker
sw(skywalker, anakin).
sw(skywalker, luke).
sw(skywalker, leia).

paide(anakin, luke).
paide(anakin, leia).

%Mestres Jedi e Sith
mestrede(yoda, quigon).
mestrede(quigon, obiwan).
mestrede(obiwan, anakin).
mestrede(obiwan, luke).
mestrede(yoda, luke).
mestrede(yoda, dookan).
mestrede(darthsidious, darthmaul).
mestrede(darthsidious, dookan).
mestrede(darthsidious, anakin).

%Quem matou quem
matouquem(darthmaul, quigon).
matouquem(obiwan, darthmaul).
matouquem(anakin, dookan).
matouquem(darthsidious, windu).
matouquem(anakin, obiwan).
matouquem(luke, darthsidious).


/* REGRAS */

%Regra de quem eh pai
pai(X) :- 
	paide(X, _),
	sw(skywalker, X).
	
%Regra de quem foi pro Darkside
traidor(X) :- 
	sw(jedi,X), sw(sith,X).

%Regra de quem eh mestre
mestre(X) :- mestrede(X, _).

%Regra de se matou alguem
matou(X) :- matouquem(X, _).
	
