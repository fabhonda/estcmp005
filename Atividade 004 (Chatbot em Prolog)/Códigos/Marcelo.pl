% Atividade 004 de Paradigmas de Linguagem de Programação - Chatbot

%Equipe: 
%Dayvson dos Santos Silva, 
%Fabrizio Honda Franzoia, 
%Gabriel Alexander Farias de Lima Teixeira, 
%Gabriel Sena San Martin, 
%Gonzalo Ivan dos Santos Portales

%Professor: Jucimar Maia da Silva Junior

%Chatbot: Marcelo, o contador de histórias

%Inicializando o Chatbot

marcelo():-
	main().

main() :-
	write('Ola, eu sou o chatbot Marcelo. Sou um chatbot contador de histórias.'), nl,
	write('Comecarei contando uma historia.'), nl, 
	write('Esta historia possui multiplos finais, feitas por multiplos autores.'), nl,
	write('Suas escolhas de palavras influenciarao no final que essa historia levara, entao responda com cuidado.'), nl,
	write('Podemos comecar?'), nl, nl,
	historia().
	
/* ESCOLHAS DAS DECISOES   */
direcao(esquerda, direita).
caminho(parar, caminhar).
salao(oeste, norte, leste).
bau(abrir,recusar).
porta(abrir, esperar).
vila(atacar,construir).


historia() :- 
	write('Voce acorda dentro de um caverna. As paredes sao meramente visiveis, quase nenhuma luz entra no local.'), nl,
	write('De repente, voce escuta um barulho abafado - o som de respiracao. Mas voce nao sabe de onde vem,'), nl,
	write('nem de quem ou o que. Voce consegue visualizar dois caminhos em meio a escuridao: direita e esquerda.'), nl,
	write('Qual caminho voce escolhe? - escreva esquerda ou direita.'), nl, 
	read(Resposta), nl, nl,
	caverna(Resposta).

	
caverna(esquerda) :-
	write('Voce anda pelo caminho da esquerda. Voce se depara com um grunhido forte, e com um susto desesperador,'),nl,
	write('voce percebe que este e o lar de um urso. Ao perceber o intruso que o incomoda, o urso acorda, e com uma'), nl,
	write('expressao raivosa no rosto, ataca voce. Nao ha como se defender. Seus restos mortais se juntarao a pilha de ossos'), nl,
	write('que tomam conta do chao da caverna.'),nl,
	write('DEAD END - Reinicie a historia e tente caminhos alternativos!').

caverna(direita) :-
	write('Voce anda pelo caminho da direita. Conforme voce caminha, uma luz forte vinda de algum local mais a frente'), nl,
	write('chama a sua atencao. Voce pode ficar parado e ver o que acontece, ou voce pode continuar caminhando...'), nl,
	write('Voce quer parar ou prefere caminhar? - Escreva parar ou caminhar.'), nl,
	read(Estado), nl, nl,
	caminho(Estado).
		
caminho(parar) :-
	write('Voce parou, esperou, respirou e... nada. O que achou que aconteceria? Nem tudo e o que parece.'), nl,
	write('Mas tem um problema maior... Voce esperou tanto que um urso seguiu seu cheiro e agora esta'), nl,
	write('bem atras de voce! Com um grito desesperado, sua vida termina com uma mordida de urso.'), nl,
	write('DEAD END - Reinicie a historia e tente caminhos alternativos!').
	
caminho(caminhar) :- 
	write('Ah, sim... a famosa luz no fim do tunel. Quem sabe o que acontecera depois de atravessa-la?'), nl,
	write('O seu caminho te levou a um salao circular, com pedras musgosas e uma pequena entrada de luz'), nl,
	write('no topo. Simbolos estranhos decoram as paredes, e voce se encontra no meio do salao.'), nl,
	write('Voltar para a caverna agora seria suicidio. Voce so tem tres caminhos a seguir: oeste, norte e leste.'), nl,
	write('Decida sabiamente... - Escreva oeste, norte ou leste.'), nl,
	read(Decisao), nl, nl,
	salao(Decisao).

salao(oeste) :-
	write('Voce decide o caminho oeste. Ao seguir, voce se depara com um beco sem saida... '), nl,
	write('Voce decide voltar - afinal, na ha nada a fazer aqui. De repente, um som estranho vem de baixo'), nl,
	write('dos seus pes - uma armadilha! Antes que tenha tempo de reagir, o chao se abre, revelando'), nl,
	write('estacas de ferro pontudas, entre esqueletos humanos empalados. Seu destino nao e diferente'), nl,
	write('do deles...'), nl,
	write('DEAD END - Reinicie a historia e tente caminhos alternativos!').

salao(norte) :-
	write('Voce decide o caminho norte. Ao seguir, voce chega a uma sala com duas tochas. E no centro da sala'), nl,
	write('um bau pintado de azul, adornado com ouro. Nao ha mais nada alem do bau.'), nl,
	write('Voce sente uma aura mistica na sala - algo parece esperar sua decisao. Ela pede que abra o bau.'), nl,
	write('Qual sua decisao? - Escreva abrir ou recusar.'), nl,
	read(Abrir), nl, nl,
	bau(Abrir).
	
salao(leste) :- 
	write('Voce decide o caminho leste. Dentro da nova sala, um portal roxo, envolto em nevoa, o aguarda...'), nl,
	write('Atravessando o portal, uma sensacao de embrulho no estomago, um rapido relance, e...'), nl, nl,
	write('Voce abre os olhos. Algo nao parece certo: voce esta de volta em sua casa! Uma pequena vila'), nl,
	write('da Idade Media, simples e harmoniosa. As pessoas que vivem ali tiram seu sustento do trabalho humilde,'), nl,
	write('e mesmo com todas as dificuldades, eles sao felizes... Ou pelo menos, era assim. Casas destruidas,'), nl,
	write('rostos cansados, e um cheiro estranho de putrefacao o surpreende: saqueadores vem roubando os'), nl,
	write('aldeoes da vila, destruindo lares e matando seus habitantes sem julgamento de idade, cor, ou crenca. '), nl,
	write('Os aledoes o reconhecem, mas nao o recebem de bracos abertos - eles ja estao muito cansados de '), nl,
	write('toda a batalha. Eles pedem ajuda sobre o que fazer, e voce deve decidir a seguir.'), nl,
	write('Nos ajude a retormar o que e nosso! - diz um. Outro grita - Precisamos reconstruir nossos lares,'), nl,
	write('nao podemos lutar contra bandidos e nos arriscar mais! - a decisao e sua.'), nl,
	write('Qual sua decisao? - Escreva atacar ou construir.'), nl,
	read(Decisao), nl,nl,
	vila(Decisao).
	
	
bau(abrir) :- 
	write('Voce abriu o bau. Dentro, uma chave preta adornada com um grande Rubi estava guardada.'), nl,
	write('Uma voz misteriosa diz algo em sua cabeca: pobre ser, voce nao e o escolhido para usar essa chave...'), nl,
	write('Voce e paralisado; uma pedra gigante surge em pleno ar acima de voce. Antes de qualquer reacao,'), nl,
	write('a pedra cai a uma velocidade ofuscante. Sua existencia agora e cessada pela pedra que o esmaga...'), nl,
	write('Afinal, por que a voz pediu para abrir o bau se voce nao era o escolhido? Talvez ela tenha confundido'), nl,
	write('voce com outra pessoa, talvez um elfo em roupas verdes. Quem sabe?'), nl,
	write('DEAD END - Reinicie a historia e tente caminhos alternativos!').

bau(recusar) :- 
	write('Voce se recusa a abrir o bau. Seu foco no momento e outro, e a voz responde prontamente:'), nl,
	write('Percebo que voce nao e o escolhido... Nesse caso, deixe-me ajuda-lo com seu objetivo.'), nl,
	write('Uma porta e moldada na pedra solida da parede a sua direita; Ela abre com um leve rangido,'), nl,
	write('revelando um local novo. Voce continua seu caminho, se perguntando que seria esse escolhido...'), nl, nl,
	salasecreta().

salasecreta() :-
	write('A sala que surgiu revela uma porta talhada de carvalho escuro, degradada pelo tempo.'), nl,
	write('Suas preocupacoes desaparecem, e um sentimento de esperanca o toma. Mas ao mesmo tempo,'), nl,
	write('o medo de ser uma armadilha feita pela voz para iludi-lo o preocupa. Qual sera a verdade?'), nl,
	write('Uma armadilha ou a sua salvacao? - Decida entre abrir ou esperar.'), nl,
	read(Decisao), nl, nl,
	porta(Decisao).

porta(abrir) :-
	write('A esperanca e maior que o medo - o pensamento de poder sair desse local estranho'), nl,
	write('faz com que todas as preocupacoes sumam de sua mente. Em um movimento rapido,'), nl,
	write('voce abre a porta e se depara com o outro lado: um bosque, repleto de arvores e animais'), nl,
	write('silvestres que passeiam tranquilamente pelo gramado. A felicidade o toma, e agora,'), nl,
	write('voce pode sair deste lugar. Assim que voce atravessa a porta, ela se fecha, e com um pequeno'), nl,
	write('estalo, desaparece em pleno ar. So ha o bosque agora. E voce esta livre para seguir o caminho que quiser agora.'), nl,
	write('HAPPY END - Parabens! Voce terminou uma das historias que Marcelo pode contar. Obrigado por participar!').
	
porta(esperar) :-
	write('O medo faz com que voce seja cauteloso - quem sabe o que pode acontecer atras da porta?'),nl,
	write('Talvez seja melhor esperar... - voce diz a si mesmo. Enquanto observa a porta com inseguranca,'), nl,
	write('bem diante de seus olhos, correntes de ferro cobrem a porta completamente; Um som estranho'), nl,
	write('reverbera pelas paredes, e o chao comeca a tremer. A voz ressurge com grande forca em sua mente:'), nl,
	write('POBRE MORTAL! POR QUE DUVIDASTE DE MINHA PALAVRA? EU SOU O GUARDIAO DESTE LUGAR.'), nl,
	write('EU DECIDO QUEM FICA E QUEM CONTINUA. INTRUSOS DEVEM SER PUNIDOS POR SEUS CRIMES.'), nl,
	write('Com um grande estalo, a estrutura da sala desaba sobre seu corpo, deixando-o imovel e sem saida.'), nl,
	write('O silencio toma conta, e sua mente comeca a falhar... enquanto desmaia na escuridao.'), nl,
	write('DEAD END - Reinicie a historia e tente caminhos alternativos!').
	
vila(atacar) :- 
	write('A vila se reune e um plano e formado - voces decidem atacar os saqueadores, que nao podem estar'), nl,
	write('muito longe, ao anoitecer. Os poucos aldeoes que se encontram em forma para lutar se organizam em grupos,'), nl,
	write('e voces atacarao quando estiverem dormindo. O crepusculo surge, e as preparacoes sao realizadas...'), nl,nl,
	write('Ao chegar no acampamento dos saqueadores, apenas um bandido esta acordado, fazendo a vigilia.'), nl,
	write('Os aldeoes, com todas as armas que puderam encontrar, se espalham silenciosamente pelo acampamento.'), nl,
	write('Voce se esquiva dos olhares do bandido, chega por tras e cum uma rapida facada no pescoco, o bandido'), nl,
	write('cai morto. A batalha comeca. Com pouco esforco, os aldeoes conseguem matar alguns bandidos antes de'), nl,
	write('acordarem. Os saqueadores restantes ouvem o barulho, e gritam pedindo armas. Em um combate de espadas,'), nl,
	write('facas e forcados, a batalha termina com a vitoria... Mas nao sem perder alguns aldeoes.'), nl, nl,
	write('O amanhecer surge no horizonte. Os aldeoes sobreviventes recolhem pertences roubados, alem do dinheiro'), nl,
	write('que estava em seus baus. Muitas vidas foram ceifadas. Poucos hao de permanecer na vila, mesmo depois'), nl,
	write('de todo o sacrificio feito para recuperar o que lhes era de direito. Infelizmente, nao ha mais razao para voltar'), nl,
	write('e reconstruir sua antiga casa. Alguns partem em busca de novos lares, outros em busca de esclarecimento,'), nl,
	write('e outros decidem permanecer nas ruinas da vila destruida. O que quer voce faca, as decisoes serao suas.'), nl,
	write('Voce pode ficar. Voce pode partir. Mas no fim de tudo, a decisao sera sempre sua.'), nl,
	write('NEUTRAL END - Parabens! Voce terminou uma das historias que Marcelo pode contar. Obrigado por participar!').

vila(construir) :-
	write('Buscar vinganca nao trara nenhuma vida de volta. Essas pessoas precisam de alguem para liderar,'), nl,
	write('e de todos os aldeoes restantes da vila, voce e o mais capaz. Com paciencia e resiliencia, todos'), nl,
	write('unem forcas e comecam a reconstruir a vila. Com o passar do tempo, os campos de trigo e aveia sao recuperados,'), nl,
	write('as casas elevam-se uma uma a uma, e novas vidas sao geradas. Ao decidir seguir em frente e continuar,'), nl,
	write('as pessoas da vila procuraram criar ao inves de destruir, algo que os saqueadores nao entenderiam.'), nl, nl,
	write('Anos se passam. A memoria dos saqueadores nao foi esquecida. A vila foi reconstruida, mas nao sem'), nl,
	write('preparo: os aldeoes se reuniram e criaram uma forca armada, para o caso de novos ataques. Todos'), nl,
	write('vivem felizes, podendo usufruir dos frutos da natureza e do trabalho humilde mais uma vez. E agora,'), nl,
	write('mesmo nao sendo mais o lar que voce conhecia, voce nao abandonou aqueles que necessitavam de ajuda.'),nl,
	write('E agora, com uma nova vila para liderar, voce pode finalmente aproveitar a vida e deixar todos os pesadelos para tras...'), nl,
	write('HAPPY END - Parabens! Voce terminou uma das historias que Marcelo pode contar. Obrigado por participar!').

