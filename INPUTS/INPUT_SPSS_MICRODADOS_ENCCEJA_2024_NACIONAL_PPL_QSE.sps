**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral de Medidas da Educação Básica              		    		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2024_NACIONAL_PPL_QSE	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2024- REGULAR NACIONAL    */
/* COM DADOS DO  QUESTIONÁRIO SOCIOECONÔMICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e 				     */
/* o arquivo "MICRODADOS_ENCCEJA_2024_PPL_NAC_QSE.csv" do ENCCEJA no diretório C:\ do computador.  */
/*							                                         */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                                                             */
/* as variáveis de interesse.                                                                                                                               */
/************************************************************************************************************************************ */
/*                                  ATENÇÃO                                                                                                                   */ 
/**************************************************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               			     */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir                                                          */
/* os dados sem os rótulos, basta importar diretamente no SPSS.                                                                        */
/* 							                                         */                                                           
/* Os Rótulos de algumas variáveis não estão completos em virtude do tamanho           		     */
/* das opções questões. Tais enunciados foram resumidos e indicados com o      		                       */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem consulta ao Dicionário de      			     */
/* Variáveis para conhecer o enunciado completo.                                       			     */
/* 							                                         */                                                            
/**************************************************************************************************************************************/

GET DATA 
  /TYPE=TXT 
  /FILE="C:\MICRODADOS_ENCCEJA_2024_PPL_NAC_QSE.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";" 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  Q01 A1
  Q02 A1
  Q03 A1
  Q04 A1
  Q05A A1
  Q05B A1
  Q05C A1
  Q05D A1
  Q05E A1
  Q05F A1
  Q05G A1
  Q06 A1
  Q07 A1
  Q08 A1
  Q09 A1
  Q010A A1
  Q010B A1
  Q010C A1
  Q010D A1
  Q010E A1
  Q010F A1
  Q010G A1
  Q011 A1
  Q012 A1
  Q013 A1
  Q014 A1
  Q015 A1
  Q016 A1
  Q017 A1
  Q018 A1
  Q019 A1
  Q020 A1
  Q021A A1
  Q021B A1
  Q021C A1
  Q021D A1
  Q021E A1
  Q021F A1
  Q021G A1
  Q022A A1
  Q022B A1
  Q022C A1
  Q022D A1
  Q022E A1
  Q022F A1
  Q022G A1
  Q022H A1
  Q022I A1
  Q022J A1
  Q023 A1
  Q024 A1
  Q025 A1
  Q026 A1
  Q027A A1
  Q027B A1
  Q027C A1
  Q027D A1
  Q027E A1
  Q027F A1
  Q028 A1
  Q029A F1.0
  Q029B F1.0
  Q029C F1.0
  Q029D F1.0
  Q029E F1.0
  Q029F F1.0
  Q029G F1.0
  Q030A A1
  Q030B A1
  Q030C A1
  Q030D A1
  Q030E A1
  Q030F A1
  Q030G A1
  Q030H A1
  Q031A A1
  Q031B A1
  Q031C A1
  Q031D A1
  Q031E A1
  Q031F A1
  Q031G A1
  Q031H A1
  Q032 A1
  Q033A A1
  Q033B A1
  Q033C A1
  Q033D A1
  Q033E A1
  Q033F A1
  Q034 A1
  Q035 A1
  Q036A A1
  Q036B A1
  Q036C A1
  Q036D A1
  Q036E A1
  Q036F A1
  Q036G A1
  Q036H A1
  Q036I A1
  Q036J A1
  Q036K A1
  Q037A A1
  Q037B A1
  Q037C A1
  Q037D A1
  Q037E A1
  Q038A F1.0
  Q038B F1.0
  Q038C F1.0
  Q038D F1.0
  Q038E F1.0
  Q038F F1.0
  Q038G F1.0. 

CACHE. 
EXECUTE. 
DATASET NAME ENCCEJA_2024_NAC_PPL_QSE WINDOW=FRONT.

VARIABLE LABELS	
Q01 'Você está inserido(a) em que tipo de Unidade?'
Q02 'Qual o seu sexo?'
Q03 'Quantos anos de idade você possui?'
Q04 'Como você se considera?'
Q05A 'Qual(is) documento(s) abaixo você possui? Certidão de nascimento.'
Q05B 'Qual(is) documento(s) abaixo você possui? Carteira de Identidade.'
Q05C 'Qual(is) documento(s) abaixo você possui? CPF.'
Q05D 'Qual(is) documento(s) abaixo você possui? Carteira de Trabalho.'
Q05E 'Qual(is) documento(s) abaixo você possui? Carteira de Motorista.'
Q05F 'Qual(is) documento(s) abaixo você possui? Título de Eleitor.'
Q05G 'Qual(is) documento(s) abaixo você possui? Não tenho nenhum dos documentos acima mencionados'
Q06 'Qual o seu estado civil?'
Q07 'Como era a sua moradia antes de ser privado(a) de liberdade?'
Q08 'Onde se situava o local onde você morava antes de ser privado(a) de liberdade?'
Q09 'Você morava sozinho(a) antes de ser privado(a) de liberdade?'
Q010A 'Quem morava com você antes de ser privado(a) de liberdade? Pai/Mãe.'
Q010B 'Quem morava com você antes de ser privado(a) de liberdade? Cônjuge/companheiro(a).'
Q010C 'Quem morava com você antes de ser privado(a) de liberdade? Filho(s) ou filha(s).'
Q010D 'Quem morava com você antes de ser privado(a) de liberdade? Irmão(s) ou irmã(s).'
Q010E 'Quem morava com você antes de ser privado(a) de liberdade? Outro(s) parente(s).'
Q010F 'Quem morava com você antes de ser privado(a) de liberdade? Amigo(s), colega(s) ou conhecido(s).'
Q010G 'Quem morava com você antes de ser privado(a) de liberdade? Pessoas abrigadas/institucionalizadas.'
Q011 'No local onde você morava antes de ser privado(a) de liberdade, com quantas pessoas você dividia o mesmo ambiente para dormir?'
Q012 'Você tem filho(s)?'
Q013 'Quantos filhos você tem?'
Q014 'Com quem está ou estão seu(s) filho(s) menor(es) de idade?'
Q015 'Qual é o nível de escolaridade do seu pai?'
Q016 'Qual é o nível de escolaridade da sua mãe?'
Q017 'Você já frequentou a escola?'
Q018 'Em que tipo de escola você cursou a maior parte do Ensino Fundamental ou Ensino Médio?'
Q019 'Em que série você parou de frequentar a escola?'
Q020 'Que idade você tinha quando deixou de frequentar a escola?'
Q021A 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Exposição a situações de maus-tratos na família.'
Q021B 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Falta de tempo para estudar'
Q021C 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Maternidade/paternidade na adolescência.'
Q021D 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Necessidade de ajudar nas tarefas de casa.'
Q021E 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Necessidade de trabalhar para ajudar a família.'
Q021F 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Proibição de estudar.'
Q021G 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Repetidas mudanças de domicílio.'
Q022A 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Constante falta de professores.'
Q022B 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Dificuldade de relacionamento com colegas ou os professores.'
Q022C 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito por causa do gênero/sexo.'
Q022D 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela raça/cor.'
Q022E 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela renda/classe social.'
Q022F 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Escola mal-conservada e insegura.'
Q022G 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Falta de escola perto de casa.'
Q022H 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Formas de ensino/avaliação desestimulantes.'
Q022I 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Inexistência de vaga em escola pública.'
Q022J 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Percepção de que os conteúdos das aulas não serviam para a vida.'
Q023 'Antes de ter sua liberdade privada, você trabalhava?'
Q024 'Com que idade você começou a trabalhar?'
Q025 'Você realiza algum trabalho na Unidade em que está inserido?'
Q026 'Qual é a sua renda mensal aproximadamente?'
Q027A 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Compor uma caderneta de poupança.'
Q027B 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Custear despesas pessoais.'
Q027C 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Pagar indenização determinada judicialmente.'
Q027D 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Prestar assistência à família.'
Q027E 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Ressarcir o Estado.'
Q027F 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Outro objetivo.'
Q028 'Quantas horas você trabalha na Unidade em que você está inserido(a)?'
Q029A 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Adquirir experiência para reinserção social.'
Q029B 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Aprender uma profissão.'
Q029C 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ganhar meu próprio dinheiro.'
Q029D 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Pagar uma indenização.'
Q029E 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Possibilitar a remição da pena.'
Q029F 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ressarcir o Estado.'
Q029G 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Sustentar minha família.'
Q030A 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso de informática.'
Q030B 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso de alfabetização.'
Q030C 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso(s) profissionalizante(s).'
Q030D 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso(s) supletivo(s).'
Q030E 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso de idiomas/línguas (inglês, espanhol ou outro).'
Q030F 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso preparatório para o Encceja.'
Q030G 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Outro curso.'
Q030H 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Não frequentei nenhum curso.'
Q031A 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso profissionalizante.'
Q031B 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de língua estrangeira.'
Q031C 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de computação ou informática.'
Q031D 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de oficinas culturais.'
Q031E 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de grupos religiosos/de estudo bíblico.'
Q031F 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, realizo atividade regular de leitura.'
Q031G 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, pratico atividades de esporte/lazer.'
Q031H 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Não realizo nenhuma dessas atividades regularmente.'
Q032 'Você estuda regularmente na Unidade em que você está inserido(a)?'
Q033A 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado(a).'
Q033B 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Atender à expectativa de meus familiares.'
Q033C 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir entrar na faculdade.'
Q033D 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir um emprego.'
Q033E 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Desenvolver novas habilidades.'
Q033F 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Possibilitar a remição da pena.'
Q034 'Você, hoje, tem acesso a biblioteca ou sala de leitura na Unidade em que você está inserido(a)?'
Q035 'Com que frequência você visita a biblioteca ou a sala de leitura na Unidade em que você está inserido(a)?'
Q036A 'Que gênero de livros você tem o hábito de ler em sua Unidade? Artes/música.'
Q036B 'Que gênero de livros você tem o hábito de ler em sua Unidade? Autoajuda.'
Q036C 'Que gênero de livros você tem o hábito de ler em sua Unidade? Biografias.'
Q036D 'Que gênero de livros você tem o hábito de ler em sua Unidade? Didáticos escolares.'
Q036E 'Que gênero de livros você tem o hábito de ler em sua Unidade? Infanto-juvenil.'
Q036F 'Que gênero de livros você tem o hábito de ler em sua Unidade? Literatura brasileira/estrangeira.'
Q036G 'Que gênero de livros você tem o hábito de ler em sua Unidade? Poesia/poemas.'
Q036H 'Que gênero de livros você tem o hábito de ler em sua Unidade? Religião.'
Q036I 'Que gênero de livros você tem o hábito de ler em sua Unidade? Revistas/gibis.'
Q036J 'Que gênero de livros você tem o hábito de ler em sua Unidade? Técnico-científico, jurídicos.'
Q036K 'Que gênero de livros você tem o hábito de ler em sua Unidade? Não tenho o hábito de ler livros. (Passe para a questão 38).'
Q037A 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado(a).'
Q037B 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Desenvolver autoconhecimento.'
Q037C 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Relaxar, me distrair.'
Q037D 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Melhorar minhas habilidades de comunicação.'
Q037E 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Possibilitar a remição da pena.'
Q038A 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Atender à expectativa dos meus familiares.'
Q038B 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Conquistar reconhecimento profissional.'
Q038C 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Conseguir entrar na faculdade.'
Q038D 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Conseguir um emprego.'
Q038E 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Obter um certificado do Ensino Fundamental/Médio.'
Q038F 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Possibilitar a remição da pena.'
Q038G 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Testar meus conhecimentos.'.

VALUE LABELS
Q01
'A' 'Prisional (maiores de 18 anos de idade).'
'B' 'Socioeducativa (menores de 18 anos de idade).'
/Q02
'A' 'Feminino.'
'B' 'Masculino.'
/Q03
'A' '15 a 17;'
'B' '18 a 20;'
'C' '21 a 25;'
'D' '26 a 30;'
'E' '31 a 35;'
'F' '36 a 40;'
'G' '41 a 45;'
'H' '46 a 60;'
'I' 'A partir de 61.'
/Q04
'A' 'Branco(a).'
'B' 'Pardo(a).'
'C' 'Preto(a).'
'D' 'Amarelo(a).'
'E' 'Indígena.'
/Q05A
'A' 'Sim'
'B' 'Não'
/Q05B
'A' 'Sim'
'B' 'Não'
/Q05C
'A' 'Sim'
'B' 'Não'
/Q05D
'A' 'Sim'
'B' 'Não'
/Q05E
'A' 'Sim'
'B' 'Não'
/Q05F
'A' 'Sim'
'B' 'Não'
/Q05G
'A' 'Sim'
'B' 'Não'
/Q06
'A' 'Casado(a).'
'B' 'Divorciado(a).'
'C' 'Em união estável.'
'D' 'Solteiro(a).'
'E' 'Viúvo(a).'
/Q07
'A' 'Própria.'
'B' 'Alugada.'
'C' 'Financiada.'
'D' 'Eu morava de favor.'
'E' 'Eu morava em situação de rua.'
'F' 'Eu morava em uma unidade de acolhimento temporário.'
/Q08
'A' 'Zona rural.'
'B' 'Zona urbana.'
/Q09
'A' 'Sim. (Passe para a questão 12)'
'B' 'Não.'
/Q010A
'A' 'Sim'
'B' 'Não'
/Q010B
'A' 'Sim'
'B' 'Não'
/Q010C
'A' 'Sim'
'B' 'Não'
/Q010D
'A' 'Sim'
'B' 'Não'
/Q010E
'A' 'Sim'
'B' 'Não'
/Q010F
'A' 'Sim'
'B' 'Não'
/Q010G
'A' 'Sim'
'B' 'Não'
/Q011
'A' 'Com uma pessoa.'
'B' 'Com 2 ou 3 pessoas.'
'C' 'Com 4 ou 5 pessoas.'
'D' 'Com 6 ou 7 pessoas.'
'E' 'Com mais de 7 pessoas.'
/Q012
'A' 'Sim, só tenho filho(s) menor(es) de 18 anos de idade.'
'B' 'Sim, só tenho filho(s) de 18 ou mais anos de idade.'
'C' 'Sim, tenho filho(s) menor(es) e filho(s) maiores de 18 anos de idade.'
'D' 'Não tenho filho(s). (Passe para a questão 15)'
/Q013
'A' 'Um.'
'B' 'Dois.'
'C' 'Três.'
'D' 'Quatro ou mais.'
/Q014
'A' 'Com a mãe biológica / o pai biológico.'
'B' 'Com a mãe adotiva / o pai adotivo.'
'C' 'Com a avó materna / o avô materno.'
'D' 'Com a avó paterna / o avô paterno.'
'E' 'Com outro parente.'
'F' 'Em uma instituição do Estado.'
'G' 'Não sei.'
/Q015
'A' '1ª série do Ensino Fundamental (antigo primário, 1º grau).'
'B' '2ª série do Ensino Fundamental (antigo primário, 1º grau).'
'C' '3ª série do Ensino Fundamental (antigo primário, 1º grau).'
'D' '4ª série do Ensino Fundamental (antigo primário, 1º grau).'
'E' '5ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'F' '6ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'G' '7ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'H' '8ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'I' '1ª série do Ensino Médio (antigo 2º grau).'
'J' '2ª série do Ensino Médio (antigo 2º grau).'
'K' '3ª série do Ensino Médio (antigo 2º grau).'
'L' 'Ensino Superior.'
'M' 'Pós-Graduação.'
'N' 'Ele nunca estudou.'
'O' 'Não sei.'
/Q016
'A' '1ª série do Ensino Fundamental (antigo primário, 1º grau).'
'B' '2ª série do Ensino Fundamental (antigo primário, 1º grau).'
'C' '3ª série do Ensino Fundamental (antigo primário, 1º grau).'
'D' '4ª série do Ensino Fundamental (antigo primário, 1º grau).'
'E' '5ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'F' '6ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'G' '7ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'H' '8ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'I' '1ª série do Ensino Médio (antigo 2º grau).'
'J' '2ª série do Ensino Médio (antigo 2º grau).'
'K' '3ª série do Ensino Médio (antigo 2º grau).'
'L' 'Ensino Superior.'
'M' 'Pós-Graduação.'
'N' 'Ela nunca estudou.'
'O' 'Não sei.'
/Q017
'A' 'Sim, já frequentei escola.'
'B' 'Sim, estou frequentando escola na Unidade em que estou inserido(a). (Passe para a questão 23).'
'C' 'Não, nunca frequentei escola. (Passe para a questão 23).'
/Q018
'A' 'Em escola pública.'
'B' 'Em escola particular.'
'C' 'Em escola indígena.'
'D' 'Em escola situada em comunidade quilombola.'
'E' 'Em escola da Unidade Prisional/ Socioeducativa.'
/Q019
'A' '1º ano do Ensino Fundamental.'
'B' '2º ano do Ensino Fundamental (antiga 1ª série, antigo primário, 1º grau).'
'C' '3º ano do Ensino Fundamental (antiga 2ª série, antigo primário, 1º grau).'
'D' '4º ano do Ensino Fundamental (antiga 3ª série, antigo primário, 1º grau).'
'E' '5º ano do Ensino Fundamental (antiga 4ª série, antigo primário, 1° grau).'
'F' '6º ano do Ensino Fundamental (antiga 5ª série, antigo ginásio, 1° grau).'
'G' '7º ano do Ensino Fundamental (antiga 6ª série, antigo ginásio, 1º grau).'
'H' '8º ano do Ensino Fundamental (antiga 7ª série, antigo ginásio, 1º grau).'
'I' '9º ano do Ensino Fundamental (antiga 8ª série, antigo ginásio, 1º grau).'
'J' '1ª série do Ensino Médio (antigo 2º grau).'
'K' '2ª série do Ensino Médio (antigo 2º grau).'
'L' '3ª série do Ensino Médio (antigo 2º grau).'
/Q020
'A' 'Menos de 10 anos de idade.'
'B' 'Entre 10 e 14 anos de idade.'
'C' 'Entre 15 e 17 anos de idade.'
'D' 'Mais de 17 anos de idade.'
/Q021A
'A' 'Sim'
'B' 'Não'
/Q021B
'A' 'Sim'
'B' 'Não'
/Q021C
'A' 'Sim'
'B' 'Não'
/Q021D
'A' 'Sim'
'B' 'Não'
/Q021E
'A' 'Sim'
'B' 'Não'
/Q021F
'A' 'Sim'
'B' 'Não'
/Q021G
'A' 'Sim'
'B' 'Não'
/Q022A
'A' 'Sim'
'B' 'Não'
/Q022B
'A' 'Sim'
'B' 'Não'
/Q022C
'A' 'Sim'
'B' 'Não'
/Q022D
'A' 'Sim'
'B' 'Não'
/Q022E
'A' 'Sim'
'B' 'Não'
/Q022F
'A' 'Sim'
'B' 'Não'
/Q022G
'A' 'Sim'
'B' 'Não'
/Q022H
'A' 'Sim'
'B' 'Não'
/Q022I
'A' 'Sim'
'B' 'Não'
/Q022J
'A' 'Sim'
'B' 'Não'
/Q023
'A' 'Sim.'
'B' 'Não. (Passe para a pergunta 25).'
/Q024
'A' 'Menos de 10 anos de idade.'
'B' 'Entre 10 e 14 anos de idade.'
'C' 'Entre 15 e 18 anos de idade.'
'D' 'Após 18 anos de idade.'
/Q025
'A' 'Sim.'
'B' 'Não. (Passe para a questão 30).'
/Q026
'A' 'Até 1 salário-mínimo (Até R$ 1.412,00).'
'B' 'De 1 a 2 salários-mínimos (de R$ 1.412,01 até R$ 2.824,00).'
'C' 'De 2 a 3 salários-mínimos (de R$ 2.824,01 até R$ 4.236,00).'
'D' 'Não sou remunerado(a) pelo trabalho que exerço na Unidade em que estou inserido(a). (Passe para a questão 28).'
/Q027A
'A' 'Sim'
'B' 'Não'
/Q027B
'A' 'Sim'
'B' 'Não'
/Q027C
'A' 'Sim'
'B' 'Não'
/Q027D
'A' 'Sim'
'B' 'Não'
/Q027E
'A' 'Sim'
'B' 'Não'
/Q027F
'A' 'Sim'
'B' 'Não'
/Q028
'A' 'Menos de seis horas diárias.'
'B' 'Seis horas diárias.'
'C' 'Sete horas diárias.'
'D' 'Oito horas diárias.'
'E' 'Sem jornada fixa, até 8 horas semanais.'
/Q030A
'A' 'Sim'
'B' 'Não'
/Q030B
'A' 'Sim'
'B' 'Não'
/Q030C
'A' 'Sim'
'B' 'Não'
/Q030D
'A' 'Sim'
'B' 'Não'
/Q030E
'A' 'Sim'
'B' 'Não'
/Q030F
'A' 'Sim'
'B' 'Não'
/Q030G
'A' 'Sim'
'B' 'Não'
/Q030H
'A' 'Sim'
'B' 'Não'
/Q031A
'A' 'Sim'
'B' 'Não'
/Q031B
'A' 'Sim'
'B' 'Não'
/Q031C
'A' 'Sim'
'B' 'Não'
/Q031D
'A' 'Sim'
'B' 'Não'
/Q031E
'A' 'Sim'
'B' 'Não'
/Q031F
'A' 'Sim'
'B' 'Não'
/Q031G
'A' 'Sim'
'B' 'Não'
/Q031H
'A' 'Sim'
'B' 'Não'
/Q032
'A' 'Sim, frequento o Ensino Médio regular.'
'B' 'Sim, frequento aulas de alfabetização em turma de EJA.'
'C' 'Sim, frequento o Ensino Fundamental em turma de EJA.'
'D' 'Sim, frequento o Ensino Médio em turma de EJA.'
'E' 'Não estudo regularmente. (Passe para a questão 34).'
/Q033A
'A' 'Sim'
'B' 'Não'
/Q033B
'A' 'Sim'
'B' 'Não'
/Q033C
'A' 'Sim'
'B' 'Não'
/Q033D
'A' 'Sim'
'B' 'Não'
/Q033E
'A' 'Sim'
'B' 'Não'
/Q033F
'A' 'Sim'
'B' 'Não'
/Q034
'A' 'Sim.'
'B' 'Não. (Passe para a questão 36).'
/Q035
'A' 'Uma vez por semana.'
'B' 'Duas a três vezes por semana.'
'C' 'De quatro a cinco vezes por semana.'
'D' 'Diariamente.'
/Q036A
'A' 'Sim'
'B' 'Não'
/Q036B
'A' 'Sim'
'B' 'Não'
/Q036C
'A' 'Sim'
'B' 'Não'
/Q036D
'A' 'Sim'
'B' 'Não'
/Q036E
'A' 'Sim'
'B' 'Não'
/Q036F
'A' 'Sim'
'B' 'Não'
/Q036G
'A' 'Sim'
'B' 'Não'
/Q036H
'A' 'Sim'
'B' 'Não'
/Q036I
'A' 'Sim'
'B' 'Não'
/Q036J
'A' 'Sim'
'B' 'Não'
/Q036K
'A' 'Sim'
'B' 'Não'
/Q037A
'A' 'Sim'
'B' 'Não'
/Q037B
'A' 'Sim'
'B' 'Não'
/Q037C
'A' 'Sim'
'B' 'Não'
/Q037D
'A' 'Sim'
'B' 'Não'
/Q037E
'A' 'Sim'
'B' 'Não'.
