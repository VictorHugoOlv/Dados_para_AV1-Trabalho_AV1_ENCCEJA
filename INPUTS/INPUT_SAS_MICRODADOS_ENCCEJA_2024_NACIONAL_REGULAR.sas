/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica						               */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2024_REGULAR_NACIONAL	                   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2024- NACIONAL LIBERTOS  */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTIONÁRIO SOCIOECONÔMICO					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e 					   */
/* o arquivo com os dados MICRODADOS_ENCCEJA_2024_REG_NAC.csv                          */
/* no diretório C:\ do computador.		                                   			   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                           
/* Os Rótulos de algumas variáveis não estão completos em virtude do tamanho           */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o      */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem consulta ao Dicionário de      */
/* Variáveis para conhecer o enunciado completo.                                       */
/* 							                                                           */                                                            
/***************************************************************************************/

PROC FORMAT;

VALUE TP_CERTIFICACAO
1= 'Ensino Fundamental'
2= 'Ensino Médio';
VALUE $TP_SEXO
F = 'Feminino'
M = 'Masculino';
VALUE IN_PROVA_LC
0= 'Não'
1= 'Sim';
VALUE IN_PROVA_MT
0= 'Não'
1= 'Sim';
VALUE IN_PROVA_CN
0= 'Não'
1= 'Sim';
VALUE IN_PROVA_CH
0= 'Não'
1= 'Sim';
VALUE TP_PRESENCA_LC
0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova';
VALUE TP_PRESENCA_MT
0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova';
VALUE TP_PRESENCA_CN
0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova';
VALUE TP_PRESENCA_CH
0=	'Faltou à prova'
1=	'Presente à prova'
2=	'Eliminado na prova';
VALUE CO_PROVA_LC
202404=	'Cinza (Ensino Fundamental)'
202464=	'Cinza - Ledor (Ensino Fundamental)'
202410=	'Branca (Ensino Médio)'
202470=	'Branca - Ledor (Ensino Médio)';
VALUE CO_PROVA_MT
202402=	'Amarela (Ensino Fundamental)'
202462=	'Amarela - Ledor  (Ensino Fundamental)'
202408=	'Amarela (Ensino Médio)'
202468=	'Amarela - Ledor (Ensino Médio)';
VALUE CO_PROVA_CN
202401=	'Rosa (Ensino Fundamental)'
202461=	'Rosa - Ledor (Ensino Fundamental)'
202407=	'Rosa (Ensino Médio)'
202467=	'Rosa - Ledor (Ensino Médio)';
VALUE CO_PROVA_CH
202405=	'Azul (Ensino Fundamental)'
202465=	'Azul  - Ledor (Ensino Fundamental)'
202411=	'Azul (Ensino Médio)'
202471=	'Azul - Ledor (Ensino Médio)';
VALUE IN_APROVADO_LC
0= 'Não'
1= 'Sim';
VALUE IN_APROVADO_MT
0= 'Não'
1= 'Sim';
VALUE IN_APROVADO_CN
0= 'Não'
1= 'Sim';
VALUE IN_APROVADO_CH
0= 'Não'
1= 'Sim';
VALUE TP_STATUS_REDACAO
1= 	'Sem problemas'
2=	'Anulada'
3=	'Cópia Texto Motivador'
4=	'Em Branco'
6=	'Fuga ao tema'
7=	'Não atendimento ao tipo textual'
8=	'Texto insuficiente'
9=	'Parte desconectada';
VALUE  TP_FAIXA_ETARIA
1  = 'Menor de 17 anos'
2  = '17 anos'
3  = '18 anos'
4  = '19 anos'
5  = '20 anos'
6  = '21 anos'
7  = '22 anos'
8  = '23 anos'
9  = '24 anos'
10 = '25 anos'
11 = 'Entre 26 e 30 anos'
12 = 'Entre 31 e 35 anos'
13 = 'Entre 36 e 40 anos'
14 = 'Entre 41 e 45 anos'
15 = 'Entre 46 e 50 anos'
16 = 'Entre 51 e 55 anos'
17 = 'Entre 56 e 60 anos'
18 = 'Entre 61 e 65 anos'
19 = 'Entre 66 e 70 anos'
20 = 'Maior de 70 anos';

/*************************************QUESTIONÁRIO**************************************/
VALUE $Q01_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q02_
'A' = 'Um'
'B' = 'Dois'
'C' = 'Três'
'D' = 'Quatro ou mais';
VALUE $Q03_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q04_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q05_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q06_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q07_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q08_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q09_
'A' = 'Sim, curso de informática'
'B' = 'Sim, de alfabetização fora da escola'
'C' = 'Sim, curso(s) profissionalizante(s)'
'D' = 'Sim, curso(s) supletivo(s)'
'E' = 'Sim, curso(s) de idiomas/línguas (inglês, espanhol ou outro)'
'F' = 'Sim, curso preparatório para o Encceja'
'G' = 'Sim, outros cursos'
'H' = 'Não frequentei nenhum curso';
VALUE $Q10_
'A' = 'Sim, já frequentei escola'
'B' = 'Sim, estou frequentando escola'
'C' = 'Não, nunca frequentei';
VALUE $Q11_
'A' = '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B' = '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C' = '3ª série do ensino fundamental (antigo primário, 1º grau)'
'D' = '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E' = '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F' = '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G' = '7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H' = '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I' = '1ª série do ensino médio (antigo 2º grau)'
'J' = '2ª série do ensino médio (antigo 2º grau)'
'K' = '3ª série do ensino médio (antigo 2º grau)';
VALUE $Q12_
'A' = 'Menos de 10 anos de idade'
'B' = 'Entre 10 e 14 anos de idade'
'C' = 'Entre 15 e 17 anos de idade'
'D' = 'Mais de 17 anos de idade';
VALUE $Q13_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q14_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q15_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q16_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q17_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q18_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q19_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q20_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q21_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q22_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q23_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q24_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q25_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q26_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q27_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q28_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q29_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q30_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q31_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q32_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q33_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q34_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q35_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q36_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q37_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q38_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q39_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q40_
'A' = '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B' = '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C' = '3ª série do ensino fundamental (antigo primário, 1º grau)'
'D' = '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E' = '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F' = '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G' = '7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H' = '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I' = '1ª série do ensino médio (antigo 2º grau)'
'J' = '2ª série do ensino médio (antigo 2º grau)'
'K' = '3ª série do ensino médio (antigo 2º grau)'
'L' = 'Ensino Superior'
'M' = 'Pós-Graduação'
'N' = 'Ele nunca estudou'
'O' = 'Não sei';
VALUE $Q41_
'A' = 'Formal (com carteira assinada)'
'B' = 'Informal (sem carteira assinada)'
'C' = 'Serviço público (concursado ou militar)'
'D' = 'Negócio próprio com CNPJ'
'E' = 'Trabalho doméstico sem remuneração'
'F' = 'Trabalho voluntário'
'G' = 'Não sei';
VALUE $Q42_
'A' = '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B' = '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C' = '3ª série do ensino fundamental (antigo primário, 1º grau)'
'D' = '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E' = '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F' = '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G' = '7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H' = '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I' = '1ª série do ensino médio (antigo 2º grau)'
'J' = '2ª série do ensino médio (antigo 2º grau)'
'K' = '3ª série do ensino médio (antigo 2º grau)'
'L' = 'Ensino Superior'
'M' = 'Pós-Graduação'
'N' = 'Ele nunca estudou'
'O' = 'Não sei';
VALUE $Q43_
'A' = 'Formal (com carteira assinada)'
'B' = 'Informal (sem carteira assinada)'
'C' = 'Serviço público (concursado ou militar)'
'D' = 'Negócio próprio com CNPJ'
'E' = 'Trabalho doméstico sem remuneração'
'F' = 'Trabalho voluntário'
'G' = 'Não sei';
VALUE $Q44_
'A' = 'Sim, exerço um trabalho remunerado'
'B' = 'Sim, mas trabalho sem remuneração'
'C' = 'Não';
VALUE $Q45_
'A' = 'Em estabelecimento comercial'
'B' = 'Em domicílio de quem me contrata'
'C' = 'Em instituição pública'
'D' = 'Em meu próprio domicílio'
'E' = 'Em área pública (via, praça, calçada, parque, praia, etc)'
'F' = 'Em área rural (chácara, sítio, fazenda etc)'
'G' = 'Em veículo automotor (bicicleta, carro, motocicleta, caminhão, ônibus, trem, embarcação, etc)';
VALUE $Q46_
'A' = 'Formal (com carteira assinada)'
'B' = 'Informal (sem carteira assinada)'
'C' = 'Serviço público (concursado ou militar)'
'D' = 'Negócio próprio com CNPJ'
'E' = 'Trabalho doméstico sem remuneração'
'F' = 'Menor aprendiz'
'G' = 'Estágio profissional'
'H' = 'Voluntário';
VALUE $Q47_
'A' = 'Até 10 horas semanais'
'B' = 'De 11 a 20 horas semanais'
'C' = 'De 21 a 30 horas semanais'
'D' = 'De 31 a 44 horas semanais'
'E' = 'Acima de 44 horas semanais';
VALUE $Q48_
'A' = 'Nenhuma renda'
'B' = 'Até 1 salário mínimo (até R$ 1.412,00)'
'C' = 'De 1 a 2 salários mínimos (de R$ 1.412,01 até R$ 2.824,00)'
'D' = 'De 2 a 3 salários mínimos (de R$ 2.824,01 até R$ 4.236,00)'
'E' = 'De 3 a 4 salários mínimos (de R$ 4.236,01 até R$ 5.648,00)'
'F' = 'De 4 a 5 salários mínimos (de R$ 5.648,01 até R$ 7.060,00)'
'G' = 'Acima de 5 salários mínimos (mais de R$ 7.060,00)';
VALUE $Q49_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q50_
'A' = 'Nenhuma renda'
'B' = 'Até 1 salário mínimo (até R$ 1.412,00)'
'C' = 'De 1 a 2 salários mínimos (de R$ 1.412,01 até R$ 2.824,00)'
'D' = 'De 2 a 3 salários mínimos (de R$ 2.824,01 até R$ 4.236,00)'
'E' = 'De 3 a 4 salários mínimos (de R$ 4.236,01 até R$ 5.648,00)'
'F' = 'De 4 a 5 salários mínimos (de R$ 5.648,01 até R$ 7.060,00)'
'G' = 'Acima de 5 salários mínimos (mais de R$ 7.060,00)'
'H' = 'Não sei';
VALUE $Q51_
'A' = 'Uma pessoa por dormitório'
'B' = '2 ou 3 pessoas'
'C' = '4 ou 5 pessoas'
'D' = '6 ou 7 pessoas'
'E' = 'Mais de 7 pessoas';
VALUE $Q52_
'A' = 'zona rural.'
'B' = 'zona urbana.';
VALUE $Q53_
'A' = 'casa alugada.'
'B' = 'casa cedida.'
'C' = 'casa financiada.'
'D' = 'casa própria.'
'E' = 'situação de rua.'
'F' = 'unidade de acolhimento temporário.';
VALUE $Q54_
'A' = 'Sim, mas pago parte do valor'
'B' = 'Sim, pago todo o valor'
'C' = 'Não sou responsável por esse pagamento';
VALUE $Q55_
'A' = 'A maior parte da renda familiar'
'B' = 'Perto da metade da renda familiar'
'C' = 'Uma pequena parte da renda familiar'
'D' = 'A renda familiar não é usada para pagar moradia'
'E' = 'Não sei';
VALUE $Q56_
'A' = 'Aparelho celular'
'B' = 'Computador'
'C' = 'Tablet'
'D' = 'Nenhum';
VALUE $Q57_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q58_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q59_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q60_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q61_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q62_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q63_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q64_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q65_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q66_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q67_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q68_
'A' = 'Todos os dias'
'B' = 'Três vezes ou mais por semana'
'C' = 'Menos de três vezes por semana'
'D' = 'Nenhuma vez por semana';
VALUE $Q69_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q70_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q71_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q72_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q73_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q74_
'A' = 'Sim'
'B' = 'Não';
VALUE $Q75_
'A' = 'Sim'
'B' = 'Não';


DATA ENCCEJA_2024_REG_NAC;

INFILE 'C:\MICRODADOS_ENCCEJA_2024_REG_NAC.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=700
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
   INPUT
        NU_INSCRICAO     : ?? BEST12.
        NU_ANO           : ?? BEST4.
        TP_CERTIFICACAO  : ?? BEST1.
        TP_FAIXA_ETARIA  : ?? BEST2.
        TP_SEXO          : $CHAR1.
        CO_UF_PROVA      : ?? BEST2.
        SG_UF_PROVA      : $CHAR2.
        NO_ENTIDADE_CERTIFICADORA : $CHAR89.
        IN_PROVA_LC      : ?? BEST1.
        IN_PROVA_CH      : ?? BEST1.
        IN_PROVA_MT      : ?? BEST1.
        IN_PROVA_CN      : ?? BEST1.
        TP_PRESENCA_LC   : ?? BEST1.
        TP_PRESENCA_CH   : ?? BEST1.
        TP_PRESENCA_MT   : ?? BEST1.
        TP_PRESENCA_CN   : ?? BEST1.
        CO_PROVA_LC      : ?? BEST6.
        CO_PROVA_CH      : ?? BEST6.
        CO_PROVA_MT      : ?? BEST6.
        CO_PROVA_CN      : ?? BEST6.
        NU_NOTA_LC       : ?? BEST3.
        NU_NOTA_CH       : ?? BEST3.
        NU_NOTA_MT       : ?? BEST3.
        NU_NOTA_CN       : ?? BEST3.
        IN_APROVADO_LC   : ?? BEST1.
        IN_APROVADO_CH   : ?? BEST1.
        IN_APROVADO_MT   : ?? BEST1.
        IN_APROVADO_CN   : ?? BEST1.
        TX_RESPOSTAS_LC  : $CHAR30.
        TX_RESPOSTAS_CH  : $CHAR30.
        TX_RESPOSTAS_MT  : $CHAR30.
        TX_RESPOSTAS_CN  : $CHAR30.
        TX_GABARITO_LC   : $CHAR30.
        TX_GABARITO_CH   : $CHAR30.
        TX_GABARITO_MT   : $CHAR30.
        TX_GABARITO_CN   : $CHAR30.
        TP_STATUS_REDACAO : ?? BEST1.
        NU_NOTA_COMP1    : ?? COMMA4.
        NU_NOTA_COMP2    : ?? COMMA4.
        NU_NOTA_COMP3    : ?? COMMA4.
        NU_NOTA_COMP4    : ?? COMMA4.
        NU_NOTA_COMP5    : ?? COMMA3.
        NU_NOTA_REDACAO  : ?? COMMA4.
        Q01              : $CHAR1.
        Q02              : $CHAR1.
        Q03              : $CHAR1.
        Q04              : $CHAR1.
        Q05              : $CHAR1.
        Q06              : $CHAR1.
        Q07              : $CHAR1.
        Q08              : $CHAR1.
        Q09              : $CHAR1.
        Q10              : $CHAR1.
        Q11              : $CHAR1.
        Q12              : $CHAR1.
        Q13              : $CHAR1.
        Q14              : $CHAR1.
        Q15              : $CHAR1.
        Q16              : $CHAR1.
        Q17              : $CHAR1.
        Q18              : $CHAR1.
        Q19              : $CHAR1.
        Q20              : $CHAR1.
        Q21              : $CHAR1.
        Q22              : $CHAR1.
        Q23              : $CHAR1.
        Q24              : $CHAR1.
        Q25              : $CHAR1.
        Q26              : $CHAR1.
        Q27              : $CHAR1.
        Q28              : $CHAR1.
        Q29              : $CHAR1.
        Q30              : $CHAR1.
        Q31              : $CHAR1.
        Q32              : $CHAR1.
        Q33              : $CHAR1.
        Q34              : $CHAR1.
        Q35              : $CHAR1.
        Q36              : $CHAR1.
        Q37              : $CHAR1.
        Q38              : $CHAR1.
        Q39              : $CHAR1.
        Q40              : $CHAR1.
        Q41              : $CHAR1.
        Q42              : $CHAR1.
        Q43              : $CHAR1.
        Q44              : $CHAR1.
        Q45              : $CHAR1.
        Q46              : $CHAR1.
        Q47              : $CHAR1.
        Q48              : $CHAR1.
        Q49              : $CHAR1.
        Q50              : $CHAR1.
        Q51              : $CHAR1.
        Q52              : $CHAR1.
        Q53              : $CHAR1.
        Q54              : $CHAR1.
        Q55              : $CHAR1.
        Q56              : $CHAR1.
        Q57              : $CHAR1.
        Q58              : $CHAR1.
        Q59              : $CHAR1.
        Q60              : $CHAR1.
        Q61              : $CHAR1.
        Q62              : $CHAR1.
        Q63              : $CHAR1.
        Q64              : $CHAR1.
        Q65              : $CHAR1.
        Q66              : $CHAR1.
        Q67              : $CHAR1.
        Q68              : $CHAR1.
        Q69              : $CHAR1.
        Q70              : $CHAR1.
        Q71              : $CHAR1.
        Q72              : $CHAR1.
        Q73              : $CHAR1.
        Q74              : $CHAR1.
        Q75              : $CHAR1. ;

ATTRIB NU_INSCRICAO   FORMAT=21.;
ATTRIB NU_ANO         FORMAT=4.;         
ATTRIB TP_CERTIFICACAO FORMAT=TP_CERTIFICACAO.;
ATTRIB TP_FAIXA_ETARIA FORMAT=TP_FAIXA_ETARIA.;       
ATTRIB TP_SEXO        FORMAT=$TP_SEXO.;        
ATTRIB CO_UF_PROVA     FORMAT=2.;
ATTRIB IN_PROVA_LC     FORMAT=IN_PROVA_LC.;     
ATTRIB IN_PROVA_MT     FORMAT=IN_PROVA_MT.;     
ATTRIB IN_PROVA_CN     FORMAT=IN_PROVA_CN.;     
ATTRIB IN_PROVA_CH     FORMAT=IN_PROVA_CH.;     
ATTRIB  TP_PRESENCA_LC  FORMAT=TP_PRESENCA_LC.;  
ATTRIB	TP_PRESENCA_MT FORMAT=TP_PRESENCA_MT.; 
ATTRIB	TP_PRESENCA_CN FORMAT=TP_PRESENCA_CN.; 
ATTRIB	TP_PRESENCA_CH FORMAT=TP_PRESENCA_CH.; 
ATTRIB	CO_PROVA_LC    FORMAT=CO_PROVA_LC.;    
ATTRIB	CO_PROVA_MT    FORMAT=CO_PROVA_MT.;    
ATTRIB	CO_PROVA_CN    FORMAT=CO_PROVA_CN.;    
ATTRIB	CO_PROVA_CH    FORMAT=CO_PROVA_CH.;    
ATTRIB	NU_NOTA_LC     FORMAT=4.;     
ATTRIB	NU_NOTA_MT     FORMAT=4.;     
ATTRIB	NU_NOTA_CN     FORMAT=4.;     
ATTRIB	NU_NOTA_CH     FORMAT=4.;     
ATTRIB	IN_APROVADO_LC FORMAT=IN_APROVADO_LC.; 
ATTRIB	IN_APROVADO_MT FORMAT=IN_APROVADO_MT.; 
ATTRIB	IN_APROVADO_CN FORMAT=IN_APROVADO_CN.; 
ATTRIB	IN_APROVADO_CH FORMAT=IN_APROVADO_CH.; 
ATTRIB	TP_STATUS_REDACAO FORMAT=TP_STATUS_REDACAO.;
ATTRIB	NU_NOTA_COMP1  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP2  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP3  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP4  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP5  FORMAT=4.2;
ATTRIB	NU_NOTA_REDACAO FORMAT=4.2;
ATTRIB	Q01           FORMAT=$Q01_.;
ATTRIB	Q02           FORMAT=$Q02_.;
ATTRIB	Q03           FORMAT=$Q03_.;
ATTRIB	Q04           FORMAT=$Q04_.;
ATTRIB	Q05           FORMAT=$Q05_.;
ATTRIB	Q06           FORMAT=$Q06_.;
ATTRIB	Q07           FORMAT=$Q07_.;
ATTRIB	Q08           FORMAT=$Q08_.;
ATTRIB	Q09           FORMAT=$Q09_.;
ATTRIB	Q10           FORMAT=$Q10_.;
ATTRIB	Q11           FORMAT=$Q11_.;
ATTRIB	Q12           FORMAT=$Q12_.;
ATTRIB	Q13           FORMAT=$Q13_.;
ATTRIB	Q14           FORMAT=$Q14_.;
ATTRIB	Q15           FORMAT=$Q15_.;
ATTRIB	Q16           FORMAT=$Q16_.;
ATTRIB	Q17           FORMAT=$Q17_.;
ATTRIB	Q18           FORMAT=$Q18_.;
ATTRIB	Q19           FORMAT=$Q19_.;
ATTRIB	Q20           FORMAT=$Q20_.;
ATTRIB	Q21           FORMAT=$Q21_.;
ATTRIB	Q22           FORMAT=$Q22_.;
ATTRIB	Q23           FORMAT=$Q23_.;
ATTRIB	Q24           FORMAT=$Q24_.;
ATTRIB	Q25           FORMAT=$Q25_.;
ATTRIB	Q26           FORMAT=$Q26_.;
ATTRIB	Q27           FORMAT=$Q27_.;
ATTRIB	Q28           FORMAT=$Q28_.;
ATTRIB	Q29           FORMAT=$Q29_.;
ATTRIB	Q30           FORMAT=$Q30_.;
ATTRIB	Q31           FORMAT=$Q31_.;
ATTRIB	Q32           FORMAT=$Q32_.;
ATTRIB	Q33           FORMAT=$Q33_.;
ATTRIB	Q34           FORMAT=$Q34_.;
ATTRIB	Q35           FORMAT=$Q35_.;
ATTRIB	Q36           FORMAT=$Q36_.;
ATTRIB	Q37           FORMAT=$Q37_.;
ATTRIB	Q38           FORMAT=$Q38_.;
ATTRIB	Q39           FORMAT=$Q39_.;
ATTRIB	Q40           FORMAT=$Q40_.;
ATTRIB	Q41           FORMAT=$Q41_.;
ATTRIB	Q42           FORMAT=$Q42_.;
ATTRIB	Q43           FORMAT=$Q43_.;
ATTRIB	Q44           FORMAT=$Q44_.;
ATTRIB	Q45           FORMAT=$Q45_.;
ATTRIB	Q46           FORMAT=$Q46_.;
ATTRIB	Q47           FORMAT=$Q47_.;
ATTRIB	Q48           FORMAT=$Q48_.;
ATTRIB	Q49           FORMAT=$Q49_.;
ATTRIB	Q50           FORMAT=$Q50_.;
ATTRIB	Q51           FORMAT=$Q51_.;
ATTRIB	Q52           FORMAT=$Q52_.;
ATTRIB	Q53           FORMAT=$Q53_.;
ATTRIB	Q54           FORMAT=$Q54_.;
ATTRIB	Q55           FORMAT=$Q55_.;
ATTRIB	Q56           FORMAT=$Q56_.;
ATTRIB	Q57           FORMAT=$Q57_.;
ATTRIB	Q58           FORMAT=$Q58_.;
ATTRIB	Q59           FORMAT=$Q59_.;
ATTRIB	Q60           FORMAT=$Q60_.;
ATTRIB	Q61           FORMAT=$Q61_.;
ATTRIB	Q62           FORMAT=$Q62_.;
ATTRIB	Q63           FORMAT=$Q63_.;
ATTRIB	Q64           FORMAT=$Q64_.;
ATTRIB	Q65           FORMAT=$Q65_.;
ATTRIB	Q66           FORMAT=$Q66_.;
ATTRIB	Q67           FORMAT=$Q67_.;
ATTRIB	Q68           FORMAT=$Q68_.;
ATTRIB	Q69           FORMAT=$Q69_.;
ATTRIB	Q70           FORMAT=$Q70_.;
ATTRIB	Q71           FORMAT=$Q71_.;
ATTRIB	Q72           FORMAT=$Q72_.;
ATTRIB	Q73           FORMAT=$Q73_.;
ATTRIB	Q74           FORMAT=$Q74_.;
ATTRIB	Q75           FORMAT=$Q75_.;

LABEL
NU_INSCRICAO= 'Campo com máscara no número de inscrição do candidato.'
NU_ANO= 'Ano do Exame Encceja que está em análise.'    
TP_CERTIFICACAO= 'Indicador do tipo de certificação pedida pelo participante.'
TP_FAIXA_ETARIA= 'Faixa etária do participante'         
TP_SEXO= 'Sexo do participante.'          
CO_UF_PROVA= 'Código da Unidade da Federação da aplicação da prova'
SG_UF_PROVA= 'Sigla da Unidade da Federação da aplicação da prova'
NO_ENTIDADE_CERTIFICADORA= 'Nome da Unidade Participante responsável pela certificação do exame.'
IN_PROVA_LC= 'Indica solicitação de inscrição do participante na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias(Cf. Dic.).'     
IN_PROVA_MT= 'Indica solicitação de inscrição do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_PROVA_CN= 'Indica solicitação de inscrição do participante na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_PROVA_CH= 'Indica solicitação de inscrição do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TP_PRESENCA_LC= 'Indica a presença do participante na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação(Cf. Dic.).' 
TP_PRESENCA_MT= 'Indica a presença do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TP_PRESENCA_CN= 'Indica a presença do participante na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TP_PRESENCA_CH= 'Indica a presença do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
CO_PROVA_LC= 'Código da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação (Cf. Dic.).'      
CO_PROVA_MT= 'Código da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
CO_PROVA_CN= 'Código da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
CO_PROVA_CH= 'Código da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
NU_NOTA_LC= 'Nota da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação(Cf. Dic.).'
NU_NOTA_MT= 'Nota da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
NU_NOTA_CN= 'Nota da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'     
NU_NOTA_CH= 'Nota da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
IN_APROVADO_LC= 'Indica se o participante foi aprovado na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação (Cf. Dic.).'
IN_APROVADO_MT= 'Indica se o participante foi aprovado na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_APROVADO_CN= 'Indica se o participante foi aprovado na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'   
IN_APROVADO_CH= 'Indica se o participante foi aprovado na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_LC= 'Vetor com as respostas da parte objetiva da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Red(Cf. Dic.).'
TX_RESPOSTAS_MT= 'Vetor com as respostas da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_CN= 'Vetor com as respostas da parte objetiva da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_CH= 'Vetor com as respostas da parte objetiva da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TX_GABARITO_LC= 'Vetor com o gabarito da parte objetiva da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação (Cf. Dic.).'
TX_GABARITO_MT= 'Vetor com o gabarito da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'  
TX_GABARITO_CN= 'Vetor com o gabarito da parte objetiva da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_GABARITO_CH= 'Vetor com o gabarito da parte objetiva da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'  
TP_STATUS_REDACAO= 'Situação da redação do participante'
NU_NOTA_COMP1= 'Nota da competência 1 - Demonstrar domínio da modalidade escrita formal da Língua Portuguesa.' 
NU_NOTA_COMP2= 'Nota da competência 2 - Compreender a proposta de redação e aplicar conceitos das várias áreas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'
NU_NOTA_COMP3= 'Nota da competência 3 - Selecionar, relacionar, organizar e interpretar informações, fatos, opiniões e argumentos em defesa de um ponto de vista.'
NU_NOTA_COMP4= 'Nota da competência 4 - Demonstrar conhecimento dos mecanismos linguísticos necessários para a construção da argumentação.'   
NU_NOTA_COMP5= 'Nota da competência 5 - Elaborar proposta de intervenção para o problema abordado, respeitando os direitos humanos. Essa nota será atribuída apenas para os participantes que solicitaram certificação de Ensino Médio.'
NU_NOTA_REDACAO= 'Nota da prova de redação.'
Q01= 'Você tem filho(s)?'
Q02= 'Quanto(s) filho(s) você tem?'
Q03= 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Filho(a) menor de idade'
Q04= 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Filho(a) maior de idade'
Q05= 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Enteado(a)'
Q06= 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Cônjuge/Companheiro(a)'
Q07= 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Outro(s) parente(s)'
Q08= 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Amigo(a)/colega/agregado(a)'
Q09= 'Você já frequentou algum curso?'
Q10= 'Você já frequentou a escola?'
Q11= 'Em que série você parou de estudar?'
Q12= 'Que idade você tinha quando deixou de frequentar a escola?'
Q13= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Exposição a situação de maus tratos na família.'
Q14= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Falta de tempo para estudar.'
Q15= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Maternidade/paternidade na adolescência.'
Q16= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Necessidade de ajudar nas tarefas de casa.'
Q17= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Necessidade de trabalhar para ajudar a família.'
Q18= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Proibição de estudar.'
Q19= 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Repetidas mudanças de domicílio.'
Q20= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Constante falta de professores.'
Q21= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Dificuldade de relacionamento com os professores.'
Q22= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Dificuldade de relacionamento com os colegas.'
Q23= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito por causa do gênero/sexo.'
Q24= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela raça/cor.'
Q25= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela renda/classe social.'
Q26= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Escola mal conservada e insegura.'
Q27= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Falta de escola perto de casa.'
Q28= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Formas de ensino/avaliação desestimulantes.'
Q29= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Inexistência de vaga em escola pública.'
Q30= 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Percepção de que os conteúdos das aulas não serviam para a vida.'
Q31= 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Terminar/concluir os estudos.'
Q32= 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Ingressar na faculdade/curso superior.'
Q33= 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Conseguir emprego.'
Q34= 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Ser promovido(a) no trabalho.'
Q35= 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Estudei materiais em papel.'
Q36= 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Estudei materiais na internet.'
Q37= 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Frequentei turma de EJA.'
Q38= 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Fiz curso preparatório na internet.'
Q39= 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Tive ajuda de familiares ou amigos para fazer as lições e tarefas.'
Q40= 'Indique o maior nível de escolaridade do seu pai:'
Q41= 'Qual o tipo de vínculo de trabalho do seu pai?'
Q42= 'Indique o maior nível de escolaridade da sua mãe:'
Q43= 'Qual o tipo de vínculo de trabalho da sua mãe?'
Q44= 'Você trabalha?'
Q45= 'Onde você costuma exercer o seu trabalho?'
Q46= 'Qual o tipo de vínculo do seu trabalho?'
Q47= 'Quantas horas semanais você trabalha?'
Q48= 'Qual é a sua renda mensal, aproximadamente? (Considere bolsa, pensão, auxílio, salário, mesada, etc)'
Q49= 'Você mora sozinho(a)?'
Q50= 'Somando a sua renda com a renda das pessoas que moram com você, quanto é, aproximadamente, a renda mensal familiar?'
Q51= 'No local em que você mora, quantas pessoas compartilham o mesmo ambiente para dormir?'
Q52= 'O local onde você mora situa-se em:'
Q53= 'Você mora em:'
Q54= 'Você paga o aluguel ou financiamento do local onde você mora?'
Q55= 'Quanto da renda mensal familiar é usado para pagar moradia? (Se você mora sozinho(a), considere apenas a sua renda mensal)'
Q56= 'Qual desses dispositivos eletrônicos você usa mais em seu dia-a-dia?'
Q57= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Acessar redes sociais (Whatsapp, Facebook, Instagram, TikTok).'
Q58= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Assistir videos, videoaulas ou ouvir podcasts.'
Q59= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Realizar atividades de trabalho'
Q60= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Buscar informações e notícias atuais.'
Q61= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Escrever e editar textos.'
Q62= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Elaborar apresentações.'
Q63= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Enviar e receber e-mails.'
Q64= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Fazer fotos e/ou gravar vídeos.'
Q65= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Fazer planilhas e tabelas.'
Q66= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Fazer cálculos matemáticos.'
Q67= 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Ouvir músicas e/ou assistir filmes.'
Q68= 'Qual a sua frequência semanal de leitura?'
Q69= 'O que você leu nos últimos três meses? Jornais, revistas e blogs'
Q70= 'O que você leu nos últimos três meses? Livros didáticos'
Q71= 'O que você leu nos últimos três meses? Livros de literatura'
Q72= 'O que você leu nos últimos três meses? Livros religiosos'
Q73= 'O que você leu nos últimos três meses? Livros de trabalho, técnicos, para formação profissional'
Q74= 'O que você leu nos últimos três meses? Livros em geral, de outros tipos'
Q75= 'O que você leu nos últimos três meses? Gibis ou histórias em quadrinhos';

RUN;QUIT;
