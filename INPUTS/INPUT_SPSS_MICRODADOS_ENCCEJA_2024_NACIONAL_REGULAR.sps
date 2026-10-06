/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                         			     */ 
/*                                   			                                                                             */
/*  Coordenação-Geral de Medidas da Educação Básica              		     		    */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2024_NACIONAL_REGULAR	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2024- REGULAR NACIONAL    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTIONÁRIO SOCIOECONÔMICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, é necessário salvar este programa e o				     */
/*arquivo "MICRODADOS_ENCCEJA_2024_REG_NAC.csv" do ENCCEJA no diretório C:\ do computador	     */
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
  /FILE="C:\MICRODADOS_ENCCEJA_2024_REG_NAC.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  NU_INSCRICAO F12.0 
  NU_ANO F4.0 
  TP_CERTIFICACAO F1.0 
  TP_FAIXA_ETARIA F2.0 
  TP_SEXO A1 
  CO_UF_PROVA F2.0 
  SG_UF_PROVA A2 
  NO_ENTIDADE_CERTIFICADORA A105 
  IN_PROVA_LC F1.0
  IN_PROVA_CH F1.0
  IN_PROVA_MT F1.0 
  IN_PROVA_CN F1.0 
  TP_PRESENCA_LC F1.0
  TP_PRESENCA_CH F1.0
  TP_PRESENCA_MT F1.0 
  TP_PRESENCA_CN F1.0 
  CO_PROVA_LC F6.0
  CO_PROVA_CH F6.0
  CO_PROVA_MT F6.0 
  CO_PROVA_CN F6.0 
  NU_NOTA_LC F3.0
  NU_NOTA_CH F3.0
  NU_NOTA_MT F3.0 
  NU_NOTA_CN F3.0 
  IN_APROVADO_LC F1.0
  IN_APROVADO_CH F1.0
  IN_APROVADO_MT F1.0 
  IN_APROVADO_CN F1.0 
  TX_RESPOSTAS_LC A30
  TX_RESPOSTAS_CH A30
  TX_RESPOSTAS_MT A30 
  TX_RESPOSTAS_CN A30 
  TX_GABARITO_LC A30
  TX_GABARITO_CH A30
  TX_GABARITO_MT A30 
  TX_GABARITO_CN A30 
  TP_STATUS_REDACAO F1.0 
  NU_NOTA_COMP1 COMMA4.2 
  NU_NOTA_COMP2 COMMA4.2 
  NU_NOTA_COMP3 COMMA4.2 
  NU_NOTA_COMP4 COMMA4.2 
  NU_NOTA_COMP5 COMMA4.2 
  NU_NOTA_REDACAO COMMA4.2 
  Q01 A1
  Q02 A1
  Q03 A1
  Q04 A1
  Q05 A1
  Q06 A1
  Q07 A1
  Q08 A1
  Q09 A1
  Q10 A1
  Q11 A1
  Q12 A1
  Q13 A1
  Q14 A1
  Q15 A1
  Q16 A1
  Q17 A1
  Q18 A1
  Q19 A1
  Q20 A1
  Q21 A1
  Q22 A1
  Q23 A1
  Q24 A1
  Q25 A1
  Q26 A1
  Q27 A1
  Q28 A1
  Q29 A1
  Q30 A1
  Q31 A1
  Q32 A1
  Q33 A1
  Q34 A1
  Q35 A1
  Q36 A1
  Q37 A1
  Q38 A1
  Q39 A1
  Q40 A1
  Q41 A1
  Q42 A1
  Q43 A1
  Q44 A1
  Q45 A1
  Q46 A1
  Q47 A1
  Q48 A1
  Q49 A1
  Q50 A1
  Q51 A1
  Q52 A1
  Q53 A1
  Q54 A1
  Q55 A1
  Q56 A1
  Q57 A1
  Q58 A1
  Q59 A1
  Q60 A1
  Q61 A1
  Q62 A1
  Q63 A1
  Q64 A1
  Q65 A1
  Q66 A1
  Q67 A1
  Q68 A1
  Q69 A1
  Q70 A1
  Q71 A1
  Q72 A1
  Q73 A1
  Q74 A1
  Q75 A1.

CACHE. 
EXECUTE.
DATASET NAME ENCCEJA_2024_REG_NAC WINDOW=FRONT.


VALUE LABELS
TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino Médio'
/TP_FAIXA_ETARIA
1   'Menor de 17 anos'
2   '17 anos'
3   '18 anos'
4   '19 anos'
5   '20 anos'
6   '21 anos'
7   '22 anos'
8   '23 anos'
9   '24 anos'
10  '25 anos'
11  'Entre 26 e 30 anos'
12  'Entre 31 e 35 anos'
13  'Entre 36 e 40 anos'
14  'Entre 41 e 45 anos'
15  'Entre 46 e 50 anos'
16  'Entre 51 e 55 anos'
17  'Entre 56 e 60 anos'
18  'Entre 61 e 65 anos'
19  'Entre 66 e 70 anos'
20  'Maior de 70 anos'
/TP_SEXO
'F'  'Feminino'
'M'  'Masculino'
/IN_PROVA_LC
0 'Não'
1 'Sim'
/IN_PROVA_MT
0 'Não'
1 'Sim'
/IN_PROVA_CN
0 'Não'
1 'Sim'
/IN_PROVA_CH
0 'Não'
1 'Sim'
/TP_PRESENCA_LC
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
/TP_PRESENCA_MT
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
/TP_PRESENCA_CN
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
/TP_PRESENCA_CH
0	'Faltou à prova'
1	'Presente à prova'
2	'Eliminado na prova'
/CO_PROVA_LC
202404 'Cinza (Ensino Fundamental)'
202464 'Cinza - Ledor (Ensino Fundamental)'
202410 'Branca (Ensino Médio)'
202470 'Branca - Ledor (Ensino Médio)'
/CO_PROVA_MT
202402 'Amarela (Ensino Fundamental)'
202462 'Amarela - Ledor  (Ensino Fundamental)'
202408 'Amarela (Ensino Médio)'
202468 'Amarela - Ledor (Ensino Médio)'
/CO_PROVA_CN
202401 'Rosa (Ensino Fundamental)'
202461 'Rosa - Ledor (Ensino Fundamental)'
202407 'Rosa (Ensino Médio)'
202467 'Rosa - Ledor (Ensino Médio)'
/CO_PROVA_CH
202405 'Azul (Ensino Fundamental)'
202465 'Azul  - Ledor (Ensino Fundamental)'
202411 'Azul (Ensino Médio)'
202471 'Azul - Ledor (Ensino Médio)'
/IN_APROVADO_LC
0 'Não'
1 'Sim'
/IN_APROVADO_MT
0 'Não'
1 'Sim'
/IN_APROVADO_CN
0 'Não'
1 'Sim'
/IN_APROVADO_CH
0 'Não'
1 'Sim'
/TP_STATUS_REDACAO
1 'Sem problemas'
2	'Anulada'
3	'Cópia Texto Motivador'
4	'Em Branco'
6	'Fuga ao tema'
7	'Não atendimento ao tipo textual'
8	'Texto insuficiente'
9	'Parte desconectada'
/Q01
'A' 'Sim'
'B' 'Não'
/Q02
'A' 'Um'
'B' 'Dois'
'C' 'Três'
'D' 'Quatro ou mais'
/Q03
'A' 'Sim'
'B' 'Não'
/Q04
'A' 'Sim'
'B' 'Não'
/Q05
'A' 'Sim'
'B' 'Não'
/Q06
'A' 'Sim'
'B' 'Não'
/Q07
'A' 'Sim'
'B' 'Não'
/Q08
'A' 'Sim'
'B' 'Não'
/Q09
'A' 'Sim, curso de informática'
'B' 'Sim, de alfabetização fora da escola'
'C' 'Sim, curso(s) profissionalizante(s)'
'D' 'Sim, curso(s) supletivo(s)'
'E' 'Sim, curso(s) de idiomas/línguas (inglês, espanhol ou outro)'
'F' 'Sim, curso preparatório para o Encceja'
'G' 'Sim, outros cursos'
'H' 'Não frequentei nenhum curso'
/Q10
'A' 'Sim, já frequentei escola'
'B' 'Sim, estou frequentando escola'
'C' 'Não, nunca frequentei'
/Q11
'A' '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B' '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C' '3ª série do ensino fundamental (antigo primário, 1º grau)'
'D' '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E' '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F' '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G' '7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H' '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I' '1ª série do ensino médio (antigo 2º grau)'
'J' '2ª série do ensino médio (antigo 2º grau)'
'K' '3ª série do ensino médio (antigo 2º grau)'
/Q12
'A' 'Menos de 10 anos de idade'
'B' 'Entre 10 e 14 anos de idade'
'C' 'Entre 15 e 17 anos de idade'
'D' 'Mais de 17 anos de idade'
/Q13
'A' 'Sim'
'B' 'Não'
/Q14
'A' 'Sim'
'B' 'Não'
/Q15
'A' 'Sim'
'B' 'Não'
/Q16
'A' 'Sim'
'B' 'Não'
/Q17
'A' 'Sim'
'B' 'Não'
/Q18
'A' 'Sim'
'B' 'Não'
/Q19
'A' 'Sim'
'B' 'Não'
/Q20
'A' 'Sim'
'B' 'Não'
/Q21
'A' 'Sim'
'B' 'Não'
/Q22
'A' 'Sim'
'B' 'Não'
/Q23
'A' 'Sim'
'B' 'Não'
/Q24
'A' 'Sim'
'B' 'Não'
/Q25
'A' 'Sim'
'B' 'Não'
/Q26
'A' 'Sim'
'B' 'Não'
/Q27
'A' 'Sim'
'B' 'Não'
/Q28
'A' 'Sim'
'B' 'Não'
/Q29
'A' 'Sim'
'B' 'Não'
/Q30
'A' 'Sim'
'B' 'Não'
/Q31
'A' 'Sim'
'B' 'Não'
/Q32
'A' 'Sim'
'B' 'Não'
/Q33
'A' 'Sim'
'B' 'Não'
/Q34
'A' 'Sim'
'B' 'Não'
/Q35
'A' 'Sim'
'B' 'Não'
/Q36
'A' 'Sim'
'B' 'Não'
/Q37
'A' 'Sim'
'B' 'Não'
/Q38
'A' 'Sim'
'B' 'Não'
/Q39
'A' 'Sim'
'B' 'Não'
/Q40
'A' '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B' '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C' '3ª série do ensino fundamental (antigo primário, 1º grau)'
'D' '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E' '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F' '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G' '7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H' '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I' '1ª série do ensino médio (antigo 2º grau)'
'J' '2ª série do ensino médio (antigo 2º grau)'
'K' '3ª série do ensino médio (antigo 2º grau)'
'L' 'Ensino Superior'
'M' 'Pós-Graduação'
'N' 'Ele nunca estudou'
'O' 'Não sei'
/Q41
'A' 'Formal (com carteira assinada)'
'B' 'Informal (sem carteira assinada)'
'C' 'Serviço público (concursado ou militar)'
'D' 'Negócio próprio com CNPJ'
'E' 'Trabalho doméstico sem remuneração'
'F' 'Trabalho voluntário'
'G' 'Não sei'
/Q42
'A' '1ª série do ensino fundamental (antigo primário, 1º grau)'
'B' '2ª série do ensino fundamental (antigo primário, 1º grau)'
'C' '3ª série do ensino fundamental (antigo primário, 1º grau)'
'D' '4ª série do ensino fundamental (antigo primário, 1º grau)'
'E' '5ª série do ensino fundamental (antigo ginásio, 1º grau)'
'F' '6ª série do ensino fundamental (antigo ginásio, 1º grau)'
'G' '7ª série do ensino fundamental (antigo ginásio, 1º grau)'
'H' '8ª série do ensino fundamental (antigo ginásio, 1º grau)'
'I' '1ª série do ensino médio (antigo 2º grau)'
'J' '2ª série do ensino médio (antigo 2º grau)'
'K' '3ª série do ensino médio (antigo 2º grau)'
'L' 'Ensino Superior'
'M' 'Pós-Graduação'
'N' 'Ele nunca estudou'
'O' 'Não sei'
/Q43
'A' 'Formal (com carteira assinada)'
'B' 'Informal (sem carteira assinada)'
'C' 'Serviço público (concursado ou militar)'
'D' 'Negócio próprio com CNPJ'
'E' 'Trabalho doméstico sem remuneração'
'F' 'Trabalho voluntário'
'G' 'Não sei'
/Q44
'A' 'Sim, exerço um trabalho remunerado'
'B' 'Sim, mas trabalho sem remuneração'
'C' 'Não'
/Q45
'A' 'Em estabelecimento comercial'
'B' 'Em domicílio de quem me contrata'
'C' 'Em instituição pública'
'D' 'Em meu próprio domicílio'
'E' 'Em área pública (via, praça, calçada, parque, praia, etc)'
'F' 'Em área rural (chácara, sítio, fazenda etc)'
'G' 'Em veículo automotor (bicicleta, carro, motocicleta, caminhão, ônibus, trem, embarcação, etc)'
/Q46
'A' 'Formal (com carteira assinada)'
'B' 'Informal (sem carteira assinada)'
'C' 'Serviço público (concursado ou militar)'
'D' 'Negócio próprio com CNPJ'
'E' 'Trabalho doméstico sem remuneração'
'F' 'Menor aprendiz'
'G' 'Estágio profissional'
'H' 'Voluntário'
/Q47
'A' 'Até 10 horas semanais'
'B' 'De 11 a 20 horas semanais'
'C' 'De 21 a 30 horas semanais'
'D' 'De 31 a 44 horas semanais'
'E' 'Acima de 44 horas semanais'
/Q48
'A' 'Nenhuma renda'
'B' 'Até 1 salário mínimo (até R$ 1.412,00)'
'C' 'De 1 a 2 salários mínimos (de R$ 1.412,01 até R$ 2.824,00)'
'D' 'De 2 a 3 salários mínimos (de R$ 2.824,01 até R$ 4.236,00)'
'E' 'De 3 a 4 salários mínimos (de R$ 4.236,01 até R$ 5.648,00)'
'F' 'De 4 a 5 salários mínimos (de R$ 5.648,01 até R$ 7.060,00)'
'G' 'Acima de 5 salários mínimos (mais de R$ 7.060,00)'
/Q49
'A' 'Sim'
'B' 'Não'
/Q50
'A' 'Nenhuma renda'
'B' 'Até 1 salário mínimo (até R$ 1.412,00)'
'C' 'De 1 a 2 salários mínimos (de R$ 1.412,01 até R$ 2.824,00)'
'D' 'De 2 a 3 salários mínimos (de R$ 2.824,01 até R$ 4.236,00)'
'E' 'De 3 a 4 salários mínimos (de R$ 4.236,01 até R$ 5.648,00)'
'F' 'De 4 a 5 salários mínimos (de R$ 5.648,01 até R$ 7.060,00)'
'G' 'Acima de 5 salários mínimos (mais de R$ 7.060,00)'
'H' 'Não sei'
/Q51
'A' 'Uma pessoa por dormitório'
'B' '2 ou 3 pessoas'
'C' '4 ou 5 pessoas'
'D' '6 ou 7 pessoas'
'E' 'Mais de 7 pessoas'
/Q52
'A' 'zona rural.'
'B' 'zona urbana.'
/Q53
'A' 'casa alugada.'
'B' 'casa cedida.'
'C' 'casa financiada.'
'D' 'casa própria.'
'E' 'situação de rua.'
'F' 'unidade de acolhimento temporário.'
/Q54
'A' 'Sim, mas pago parte do valor'
'B' 'Sim, pago todo o valor'
'C' 'Não sou responsável por esse pagamento'
/Q55
'A' 'A maior parte da renda familiar'
'B' 'Perto da metade da renda familiar'
'C' 'Uma pequena parte da renda familiar'
'D' 'A renda familiar não é usada para pagar moradia'
'E' 'Não sei'
/Q56
'A' 'Aparelho celular'
'B' 'Computador'
'C' 'Tablet'
'D' 'Nenhum'
/Q57
'A' 'Sim'
'B' 'Não'
/Q58
'A' 'Sim'
'B' 'Não'
/Q59
'A' 'Sim'
'B' 'Não'
/Q60
'A' 'Sim'
'B' 'Não'
/Q61
'A' 'Sim'
'B' 'Não'
/Q62
'A' 'Sim'
'B' 'Não'
/Q63
'A' 'Sim'
'B' 'Não'
/Q64
'A' 'Sim'
'B' 'Não'
/Q65
'A' 'Sim'
'B' 'Não'
/Q66
'A' 'Sim'
'B' 'Não'
/Q67
'A' 'Sim'
'B' 'Não'
/Q68
'A' 'Todos os dias'
'B' 'Três vezes ou mais por semana'
'C' 'Menos de três vezes por semana'
'D' 'Nenhuma vez por semana'
/Q69
'A' 'Sim'
'B' 'Não'
/Q70
'A' 'Sim'
'B' 'Não'
/Q71
'A' 'Sim'
'B' 'Não'
/Q72
'A' 'Sim'
'B' 'Não'
/Q73
'A' 'Sim'
'B' 'Não'
/Q74
'A' 'Sim'
'B' 'Não'
/Q75
'A' 'Sim'
'B' 'Não'.

VARIABLE LABELS
NU_INSCRICAO 'Campo com máscara no número de inscrição do candidato.'
NU_ANO 'Ano do Exame Encceja que está em análise.'    
TP_CERTIFICACAO 'Indicador do tipo de certificação pedida pelo participante.'
TP_FAIXA_ETARIA 'Faixa etária do participante'         
TP_SEXO 'Sexo do participante.'          
CO_UF_PROVA 'Código da Unidade da Federação da aplicação da prova'
SG_UF_PROVA 'Sigla da Unidade da Federação da aplicação da prova'
NO_ENTIDADE_CERTIFICADORA 'Nome da Unidade Participante responsável pela certificação do exame.'
IN_PROVA_LC 'Indica solicitação de inscrição do participante na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e (Cf. Dic.).'     
IN_PROVA_MT 'Indica solicitação de inscrição do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_PROVA_CN 'Indica solicitação de inscrição do participante na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_PROVA_CH 'Indica solicitação de inscrição do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TP_PRESENCA_LC 'Indica a presença do participante na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos (Cf. Dic.).' 
TP_PRESENCA_MT 'Indica a presença do participante na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TP_PRESENCA_CN 'Indica a presença do participante na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TP_PRESENCA_CH 'Indica a presença do participante na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
CO_PROVA_LC 'Código da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação (Cf. Dic.).'      
CO_PROVA_MT 'Código da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
CO_PROVA_CN 'Código da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
CO_PROVA_CH 'Código da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
NU_NOTA_LC 'Nota da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos e suas Tecnologias e Redação(Cf. Dic.).'
NU_NOTA_MT 'Nota da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
NU_NOTA_CN 'Nota da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'     
NU_NOTA_CH 'Nota da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
IN_APROVADO_LC 'Indica se o participante foi aprovado na prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos (Cf. Dic.).'
IN_APROVADO_MT 'Indica se o participante foi aprovado na prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
IN_APROVADO_CN 'Indica se o participante foi aprovado na prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'   
IN_APROVADO_CH 'Indica se o participante foi aprovado na prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_LC 'Vetor com as respostas da parte objetiva da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e (Cf. Dic.).'
TX_RESPOSTAS_MT 'Vetor com as respostas da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_CN 'Vetor com as respostas da parte objetiva da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_RESPOSTAS_CH 'Vetor com as respostas da parte objetiva da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'
TX_GABARITO_LC 'Vetor com o gabarito da parte objetiva da prova de: Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação para os que solicitaram certificação do Ensino Fundamental; ou Linguagens e Códigos (Cf. Dic.).'
TX_GABARITO_MT 'Vetor com o gabarito da parte objetiva da prova de: Matemática para os que solicitaram certificação do Ensino Fundamental; ou Matemática e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'  
TX_GABARITO_CN 'Vetor com o gabarito da parte objetiva da prova de: Ciências Naturais para os que solicitaram certificação do Ensino Fundamental; ou Ciências da Natureza e suas Tecnologias para os que solicitaram certificação do Ensino Médio.'
TX_GABARITO_CH 'Vetor com o gabarito da parte objetiva da prova de: História e Geografia para os que solicitaram certificação de Ensino Fundamental; ou Ciências Humanas e suas Tecnologias para os solicitaram certificação do Ensino Médio.'  
TP_STATUS_REDACAO 'Situação da redação do participante'
NU_NOTA_COMP1 'Nota da competência 1 - Demonstrar domínio da modalidade escrita formal da Língua Portuguesa.' 
NU_NOTA_COMP2 'Nota da competência 2 - Compreender a proposta de redação e aplicar conceitos das várias áreas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'
NU_NOTA_COMP3 'Nota da competência 3 - Selecionar, relacionar, organizar e interpretar informações, fatos, opiniões e argumentos em defesa de um ponto de vista.'
NU_NOTA_COMP4 'Nota da competência 4 - Demonstrar conhecimento dos mecanismos linguísticos necessários para a construção da argumentação.'   
NU_NOTA_COMP5 'Nota da competência 5 - Elaborar proposta de intervenção para o problema abordado, respeitando os direitos humanos. Essa nota será atribuída apenas para os participantes que solicitaram certificação de Ensino Médio.'
NU_NOTA_REDACAO 'Nota da prova de redação.'
Q01 'Você tem filho(s)?'
Q02 'Quanto(s) filho(s) você tem?'
Q03 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Filho(a) menor de idade'
Q04 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Filho(a) maior de idade'
Q05 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Enteado(a)'
Q06 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Cônjuge/Companheiro(a)'
Q07 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Outro(s) parente(s)'
Q08 'Em sua vida, há pessoas que dependem diretamente dos seus cuidados ou do seu dinheiro? Amigo(a)/colega/agregado(a)'
Q09 'Você já frequentou algum curso?'
Q10 'Você já frequentou a escola?'
Q11 'Em que série você parou de estudar?'
Q12 'Que idade você tinha quando deixou de frequentar a escola?'
Q13 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Exposição a situação de maus tratos na família.'
Q14 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Falta de tempo para estudar.'
Q15 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Maternidade/paternidade na adolescência.'
Q16 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Necessidade de ajudar nas tarefas de casa.'
Q17 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Necessidade de trabalhar para ajudar a família.'
Q18 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Proibição de estudar.'
Q19 'A seguir, são apresentadas algumas situações de vida pessoal. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Repetidas mudanças de domicílio.'
Q20 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Constante falta de professores.'
Q21 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Dificuldade de relacionamento com os professores.'
Q22 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Dificuldade de relacionamento com os colegas.'
Q23 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito por causa do gênero/sexo.'
Q24 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela raça/cor.'
Q25 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela renda/classe social.'
Q26 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Escola mal conservada e insegura.'
Q27 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Falta de escola perto de casa.'
Q28 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Formas de ensino/avaliação desestimulantes.'
Q29 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Inexistência de vaga em escola pública.'
Q30 'A seguir, são apresentadas algumas situações relativas ao meio escolar. Marque "sim" ou "não" se você acredita que cada situação te influenciou a abandonar a escola: Percepção de que os conteúdos das aulas não serviam para a vida.'
Q31 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Terminar/concluir os estudos.'
Q32 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Ingressar na faculdade/curso superior.'
Q33 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Conseguir emprego.'
Q34 'Marque "sim" ou "não" se você acredita que cada situação a seguir te influenciou a se inscrever no Encceja: Ser promovido(a) no trabalho.'
Q35 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Estudei materiais em papel.'
Q36 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Estudei materiais na internet.'
Q37 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Frequentei turma de EJA.'
Q38 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Fiz curso preparatório na internet.'
Q39 'Assinale "Sim" ou "Não" se você realizou as seguintes atividades para participar do Encceja: Tive ajuda de familiares ou amigos para fazer as lições e tarefas.'
Q40 'Indique o maior nível de escolaridade do seu pai:'
Q41 'Qual o tipo de vínculo de trabalho do seu pai?'
Q42 'Indique o maior nível de escolaridade da sua mãe:'
Q43 'Qual o tipo de vínculo de trabalho da sua mãe?'
Q44 'Você trabalha?'
Q45 'Onde você costuma exercer o seu trabalho?'
Q46 'Qual o tipo de vínculo do seu trabalho?'
Q47 'Quantas horas semanais você trabalha?'
Q48 'Qual é a sua renda mensal, aproximadamente? (Considere bolsa, pensão, auxílio, salário, mesada, etc)'
Q49 'Você mora sozinho(a)?'
Q50 'Somando a sua renda com a renda das pessoas que moram com você, quanto é, aproximadamente, a renda mensal familiar?'
Q51 'No local em que você mora, quantas pessoas compartilham o mesmo ambiente para dormir?'
Q52 'O local onde você mora situa-se em:'
Q53 'Você mora em:'
Q54 'Você paga o aluguel ou financiamento do local onde você mora?'
Q55 'Quanto da renda mensal familiar é usado para pagar moradia? (Se você mora sozinho(a), considere apenas a sua renda mensal)'
Q56 'Qual desses dispositivos eletrônicos você usa mais em seu dia-a-dia?'
Q57 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Acessar redes sociais (Whatsapp, Facebook, Instagram, TikTok).'
Q58 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Assistir videos, videoaulas ou ouvir podcasts.'
Q59 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Realizar atividades de trabalho'
Q60 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Buscar informações e notícias atuais.'
Q61 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Escrever e editar textos.'
Q62 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Elaborar apresentações.'
Q63 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Enviar e receber e-mails.'
Q64 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Fazer fotos e/ou gravar vídeos.'
Q65 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Fazer planilhas e tabelas.'
Q66 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Fazer cálculos matemáticos.'
Q67 'Marque "Sim" ou "Não" se você realiza as seguintes atividades quando usa seu dispositivo eletrônico: Ouvir músicas e/ou assistir filmes.'
Q68 'Qual a sua frequência semanal de leitura?'
Q69 'O que você leu nos últimos três meses? Jornais, revistas e blogs'
Q70 'O que você leu nos últimos três meses? Livros didáticos'
Q71 'O que você leu nos últimos três meses? Livros de literatura'
Q72 'O que você leu nos últimos três meses? Livros religiosos'
Q73 'O que você leu nos últimos três meses? Livros de trabalho, técnicos, para formação profissional'
Q74 'O que você leu nos últimos três meses? Livros em geral, de outros tipos'
Q75 'O que você leu nos últimos três meses? Gibis ou histórias em quadrinhos'.
