/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica             					   */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2024_NACIONAL_PPL_QSE                	   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO QUESTIONÁRIO SOCIOECONÔMICO DO   */
/* ENCCEJA 2024 - PARTICIPANTES PPL NACIONAIS										   */
/*																					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o					   */
/* arquivo "MICRODADOS_ENCCEJA_2024_PPL_NAC_QSE.csv" do ENCCEJA no diretório C:\  	   */
/* do computador                                                                       */
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

VALUE $Q01_
'A'= 'Prisional (maiores de 18 anos de idade).'
'B'= 'Socioeducativa (menores de 18 anos de idade).';

VALUE $Q02_
'A'= 'Feminino.'
'B'= 'Masculino.';

VALUE $Q03_
'A'= '15 a 17;'
'B'= '18 a 20;'
'C'= '21 a 25;'
'D'= '26 a 30;'
'E'= '31 a 35;'
'F'= '36 a 40;'
'G'= '41 a 45;'
'H'= '46 a 60;'
'I'= 'A partir de 61.';

VALUE $Q04_
'A'= 'Branco(a).'
'B'= 'Pardo(a).'
'C'= 'Preto(a).'
'D'= 'Amarelo(a).'
'E'= 'Indígena.';

VALUE $Q05A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q05B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q05C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q05D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q05E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q05F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q05G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q06_
'A'= 'Casado(a).'
'B'= 'Divorciado(a).'
'C'= 'Em união estável.'
'D'= 'Solteiro(a).'
'E'= 'Viúvo(a).';

VALUE $Q07_
'A'= 'Própria.'
'B'= 'Alugada.'
'C'= 'Financiada.'
'D'= 'Eu morava de favor.'
'E'= 'Eu morava em situação de rua.'
'F'= 'Eu morava em uma unidade de acolhimento temporário.';

VALUE $Q08_
'A'= 'Zona rural.'
'B'= 'Zona urbana.';

VALUE $Q09_
'A'= 'Sim. (Passe para a questão 12)'
'B'= 'Não.';

VALUE $Q010A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q010B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q010C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q010D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q010E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q010F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q010G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q011_
'A'= 'Com uma pessoa.'
'B'= 'Com 2 ou 3 pessoas.'
'C'= 'Com 4 ou 5 pessoas.'
'D'= 'Com 6 ou 7 pessoas.'
'E'= 'Com mais de 7 pessoas.';

VALUE $Q012_
'A'= 'Sim, só tenho filho(s) menor(es) de 18 anos de idade.'
'B'= 'Sim, só tenho filho(s) de 18 ou mais anos de idade.'
'C'= 'Sim, tenho filho(s) menor(es) e filho(s) maiores de 18 anos de idade.'
'D'= 'Não tenho filho(s). (Passe para a questão 15)';

VALUE $Q013_
'A'= 'Um.'
'B'= 'Dois.'
'C'= 'Três.'
'D'= 'Quatro ou mais.';

VALUE $Q014_
'A'= 'Com a mãe biológica / o pai biológico.'
'B'= 'Com a mãe adotiva / o pai adotivo.'
'C'= 'Com a avó materna / o avô materno.'
'D'= 'Com a avó paterna / o avô paterno.'
'E'= 'Com outro parente.'
'F'= 'Em uma instituição do Estado.'
'G'= 'Não sei.';

VALUE $Q015_
'A'= '1ª série do Ensino Fundamental (antigo primário, 1º grau).'
'B'= '2ª série do Ensino Fundamental (antigo primário, 1º grau).'
'C'= '3ª série do Ensino Fundamental (antigo primário, 1º grau).'
'D'= '4ª série do Ensino Fundamental (antigo primário, 1º grau).'
'E'= '5ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'F'= '6ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'G'= '7ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'H'= '8ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'I'= '1ª série do Ensino Médio (antigo 2º grau).'
'J'= '2ª série do Ensino Médio (antigo 2º grau).'
'K'= '3ª série do Ensino Médio (antigo 2º grau).'
'L'= 'Ensino Superior.'
'M'= 'Pós-Graduação.'
'N'= 'Ele nunca estudou.'
'O'= 'Não sei.';

VALUE $Q016_
'A'= '1ª série do Ensino Fundamental (antigo primário, 1º grau).'
'B'= '2ª série do Ensino Fundamental (antigo primário, 1º grau).'
'C'= '3ª série do Ensino Fundamental (antigo primário, 1º grau).'
'D'= '4ª série do Ensino Fundamental (antigo primário, 1º grau).'
'E'= '5ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'F'= '6ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'G'= '7ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'H'= '8ª série do Ensino Fundamental (antigo ginásio, 1º grau).'
'I'= '1ª série do Ensino Médio (antigo 2º grau).'
'J'= '2ª série do Ensino Médio (antigo 2º grau).'
'K'= '3ª série do Ensino Médio (antigo 2º grau).'
'L'= 'Ensino Superior.'
'M'= 'Pós-Graduação.'
'N'= 'Ela nunca estudou.'
'O'= 'Não sei.';

VALUE $Q017_
'A'= 'Sim, já frequentei escola.'
'B'= 'Sim, estou frequentando escola na Unidade em que estou inserido(a). (Passe para a questão 23).'
'C'= 'Não, nunca frequentei escola. (Passe para a questão 23).';

VALUE $Q018_
'A'= 'Em escola pública.'
'B'= 'Em escola particular.'
'C'= 'Em escola indígena.'
'D'= 'Em escola situada em comunidade quilombola.'
'E'= 'Em escola da Unidade Prisional/ Socioeducativa.';

VALUE $Q019_
'A'= '1º ano do Ensino Fundamental.'
'B'= '2º ano do Ensino Fundamental (antiga 1ª série, antigo primário, 1º grau).'
'C'= '3º ano do Ensino Fundamental (antiga 2ª série, antigo primário, 1º grau).'
'D'= '4º ano do Ensino Fundamental (antiga 3ª série, antigo primário, 1º grau).'
'E'= '5º ano do Ensino Fundamental (antiga 4ª série, antigo primário, 1° grau).'
'F'= '6º ano do Ensino Fundamental (antiga 5ª série, antigo ginásio, 1° grau).'
'G'= '7º ano do Ensino Fundamental (antiga 6ª série, antigo ginásio, 1º grau).'
'H'= '8º ano do Ensino Fundamental (antiga 7ª série, antigo ginásio, 1º grau).'
'I'= '9º ano do Ensino Fundamental (antiga 8ª série, antigo ginásio, 1º grau).'
'J'= '1ª série do Ensino Médio (antigo 2º grau).'
'K'= '2ª série do Ensino Médio (antigo 2º grau).'
'L'= '3ª série do Ensino Médio (antigo 2º grau).';

VALUE $Q020_
'A'= 'Menos de 10 anos de idade.'
'B'= 'Entre 10 e 14 anos de idade.'
'C'= 'Entre 15 e 17 anos de idade.'
'D'= 'Mais de 17 anos de idade.';

VALUE $Q021A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q021B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q021C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q021D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q021E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q021F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q021G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022H_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022I_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q022J_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q023_
'A'= 'Sim.'
'B'= 'Não. (Passe para a pergunta 25).';

VALUE $Q024_
'A'= 'Menos de 10 anos de idade.'
'B'= 'Entre 10 e 14 anos de idade.'
'C'= 'Entre 15 e 18 anos de idade.'
'D'= 'Após 18 anos de idade.';

VALUE $Q025_
'A'= 'Sim.'
'B'= 'Não. (Passe para a questão 30).';

VALUE $Q026_
'A'= 'Até 1 salário-mínimo (Até R$ 1.412,00).'
'B'= 'De 1 a 2 salários-mínimos (de R$ 1.412,01 até R$ 2.824,00).'
'C'= 'De 2 a 3 salários-mínimos (de R$ 2.824,01 até R$ 4.236,00).'
'D'= 'Não sou remunerado(a) pelo trabalho que exerço na Unidade em que estou inserido(a). (Passe para a questão 28).';

VALUE $Q027A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q027B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q027C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q027D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q027E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q027F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q028_
'A'= 'Menos de seis horas diárias.'
'B'= 'Seis horas diárias.'
'C'= 'Sete horas diárias.'
'D'= 'Oito horas diárias.'
'E'= 'Sem jornada fixa, até 8 horas semanais.';

VALUE $Q030A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q030H_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q031H_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q032_
'A'= 'Sim, frequento o Ensino Médio regular.'
'B'= 'Sim, frequento aulas de alfabetização em turma de EJA.'
'C'= 'Sim, frequento o Ensino Fundamental em turma de EJA.'
'D'= 'Sim, frequento o Ensino Médio em turma de EJA.'
'E'= 'Não estudo regularmente. (Passe para a questão 34).';

VALUE $Q033A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q033B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q033C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q033D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q033E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q033F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q034_
'A'= 'Sim.'
'B'= 'Não. (Passe para a questão 36).';

VALUE $Q035_
'A'= 'Uma vez por semana.'
'B'= 'Duas a três vezes por semana.'
'C'= 'De quatro a cinco vezes por semana.'
'D'= 'Diariamente.';

VALUE $Q036A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036E_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036F_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036G_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036H_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036I_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036J_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q036K_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q037A_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q037B_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q037C_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q037D_
'A'= 'Sim'
'B'= 'Não';

VALUE $Q037E_
'A'= 'Sim'
'B'= 'Não';


DATA ENCCEJA_2024_PPL_NAC_QSE;

INFILE 'C:\MICRODADOS_ENCCEJA_2024_PPL_NAC_QSE.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=250
		FIRSTOBS=2
        DLM=';'
		MISSOVER
        DSD ;
   INPUT
        Q01              : $CHAR1.
        Q02              : $CHAR1.
        Q03              : $CHAR1.
        Q04              : $CHAR1.
        Q05A             : $CHAR1.
        Q05B             : $CHAR1.
        Q05C             : $CHAR1.
        Q05D             : $CHAR1.
        Q05E             : $CHAR1.
        Q05F             : $CHAR1.
        Q05G             : $CHAR1.
        Q06              : $CHAR1.
        Q07              : $CHAR1.
        Q08              : $CHAR1.
        Q09              : $CHAR1.
        Q010A            : $CHAR1.
        Q010B            : $CHAR1.
        Q010C            : $CHAR1.
        Q010D            : $CHAR1.
        Q010E            : $CHAR1.
        Q010F            : $CHAR1.
        Q010G            : $CHAR1.
        Q011             : $CHAR1.
        Q012             : $CHAR1.
        Q013             : $CHAR1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019             : $CHAR1.
        Q020             : $CHAR1.
        Q021A            : $CHAR1.
        Q021B            : $CHAR1.
        Q021C            : $CHAR1.
        Q021D            : $CHAR1.
        Q021E            : $CHAR1.
        Q021F            : $CHAR1.
        Q021G            : $CHAR1.
        Q022A            : $CHAR1.
        Q022B            : $CHAR1.
        Q022C            : $CHAR1.
        Q022D            : $CHAR1.
        Q022E            : $CHAR1.
        Q022F            : $CHAR1.
        Q022G            : $CHAR1.
        Q022H            : $CHAR1.
        Q022I            : $CHAR1.
        Q022J            : $CHAR1.
        Q023             : $CHAR1.
        Q024             : $CHAR1.
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027A            : $CHAR1.
        Q027B            : $CHAR1.
        Q027C            : $CHAR1.
        Q027D            : $CHAR1.
        Q027E            : $CHAR1.
        Q027F            : $CHAR1.
        Q028             : $CHAR1.
        Q029A            : ?? BEST1.
        Q029B            : ?? BEST1.
        Q029C            : ?? BEST1.
        Q029D            : ?? BEST1.
        Q029E            : ?? BEST1.
        Q029F            : ?? BEST1.
        Q029G            : ?? BEST1.
        Q030A            : $CHAR1.
        Q030B            : $CHAR1.
        Q030C            : $CHAR1.
        Q030D            : $CHAR1.
        Q030E            : $CHAR1.
        Q030F            : $CHAR1.
        Q030G            : $CHAR1.
        Q030H            : $CHAR1.
        Q031A            : $CHAR1.
        Q031B            : $CHAR1.
        Q031C            : $CHAR1.
        Q031D            : $CHAR1.
        Q031E            : $CHAR1.
        Q031F            : $CHAR1.
        Q031G            : $CHAR1.
        Q031H            : $CHAR1.
        Q032             : $CHAR1.
        Q033A            : $CHAR1.
        Q033B            : $CHAR1.
        Q033C            : $CHAR1.
        Q033D            : $CHAR1.
        Q033E            : $CHAR1.
        Q033F            : $CHAR1.
        Q034             : $CHAR1.
        Q035             : $CHAR1.
        Q036A            : $CHAR1.
        Q036B            : $CHAR1.
        Q036C            : $CHAR1.
        Q036D            : $CHAR1.
        Q036E            : $CHAR1.
        Q036F            : $CHAR1.
        Q036G            : $CHAR1.
        Q036H            : $CHAR1.
        Q036I            : $CHAR1.
        Q036J            : $CHAR1.
        Q036K            : $CHAR1.
        Q037A            : $CHAR1.
        Q037B            : $CHAR1.
        Q037C            : $CHAR1.
        Q037D            : $CHAR1.
        Q037E            : $CHAR1.
        Q038A            : ?? BEST1.
        Q038B            : ?? BEST1.
        Q038C            : ?? BEST1.
        Q038D            : ?? BEST1.
        Q038E            : ?? BEST1.
        Q038F            : ?? BEST1.
        Q038G            : ?? BEST1. ;

ATTRIB	Q01	FORMAT=$Q01_.;
ATTRIB	Q02	FORMAT=$Q02_.;
ATTRIB	Q03	FORMAT=$Q03_.;
ATTRIB	Q04	FORMAT=$Q04_.;
ATTRIB	Q05A	FORMAT=$Q05A_.;
ATTRIB	Q05B	FORMAT=$Q05B_.;
ATTRIB	Q05C	FORMAT=$Q05C_.;
ATTRIB	Q05D	FORMAT=$Q05D_.;
ATTRIB	Q05E	FORMAT=$Q05E_.;
ATTRIB	Q05F	FORMAT=$Q05F_.;
ATTRIB	Q05G	FORMAT=$Q05G_.;
ATTRIB	Q06	FORMAT=$Q06_.;
ATTRIB	Q07	FORMAT=$Q07_.;
ATTRIB	Q08	FORMAT=$Q08_.;
ATTRIB	Q09	FORMAT=$Q09_.;
ATTRIB	Q010A	FORMAT=$Q010A_.;
ATTRIB	Q010B	FORMAT=$Q010B_.;
ATTRIB	Q010C	FORMAT=$Q010C_.;
ATTRIB	Q010D	FORMAT=$Q010D_.;
ATTRIB	Q010E	FORMAT=$Q010E_.;
ATTRIB	Q010F	FORMAT=$Q010F_.;
ATTRIB	Q010G	FORMAT=$Q010G_.;
ATTRIB	Q011	FORMAT=$Q011_.;
ATTRIB	Q012	FORMAT=$Q012_.;
ATTRIB	Q013	FORMAT=$Q013_.;
ATTRIB	Q014	FORMAT=$Q014_.;
ATTRIB	Q015	FORMAT=$Q015_.;
ATTRIB	Q016	FORMAT=$Q016_.;
ATTRIB	Q017	FORMAT=$Q017_.;
ATTRIB	Q018	FORMAT=$Q018_.;
ATTRIB	Q019	FORMAT=$Q019_.;
ATTRIB	Q020	FORMAT=$Q020_.;
ATTRIB	Q021A	FORMAT=$Q021A_.;
ATTRIB	Q021B	FORMAT=$Q021B_.;
ATTRIB	Q021C	FORMAT=$Q021C_.;
ATTRIB	Q021D	FORMAT=$Q021D_.;
ATTRIB	Q021E	FORMAT=$Q021E_.;
ATTRIB	Q021F	FORMAT=$Q021F_.;
ATTRIB	Q021G	FORMAT=$Q021G_.;
ATTRIB	Q022A	FORMAT=$Q022A_.;
ATTRIB	Q022B	FORMAT=$Q022B_.;
ATTRIB	Q022C	FORMAT=$Q022C_.;
ATTRIB	Q022D	FORMAT=$Q022D_.;
ATTRIB	Q022E	FORMAT=$Q022E_.;
ATTRIB	Q022F	FORMAT=$Q022F_.;
ATTRIB	Q022G	FORMAT=$Q022G_.;
ATTRIB	Q022H	FORMAT=$Q022H_.;
ATTRIB	Q022I	FORMAT=$Q022I_.;
ATTRIB	Q022J	FORMAT=$Q022J_.;
ATTRIB	Q023	FORMAT=$Q023_.;
ATTRIB	Q024	FORMAT=$Q024_.;
ATTRIB	Q025	FORMAT=$Q025_.;
ATTRIB	Q026	FORMAT=$Q026_.;
ATTRIB	Q027A	FORMAT=$Q027A_.;
ATTRIB	Q027B	FORMAT=$Q027B_.;
ATTRIB	Q027C	FORMAT=$Q027C_.;
ATTRIB	Q027D	FORMAT=$Q027D_.;
ATTRIB	Q027E	FORMAT=$Q027E_.;
ATTRIB	Q027F	FORMAT=$Q027F_.;
ATTRIB	Q028	FORMAT=$Q028_.;
ATTRIB	Q030A	FORMAT=$Q030A_.;
ATTRIB	Q030B	FORMAT=$Q030B_.;
ATTRIB	Q030C	FORMAT=$Q030C_.;
ATTRIB	Q030D	FORMAT=$Q030D_.;
ATTRIB	Q030E	FORMAT=$Q030E_.;
ATTRIB	Q030F	FORMAT=$Q030F_.;
ATTRIB	Q030G	FORMAT=$Q030G_.;
ATTRIB	Q030H	FORMAT=$Q030H_.;
ATTRIB	Q031A	FORMAT=$Q031A_.;
ATTRIB	Q031B	FORMAT=$Q031B_.;
ATTRIB	Q031C	FORMAT=$Q031C_.;
ATTRIB	Q031D	FORMAT=$Q031D_.;
ATTRIB	Q031E	FORMAT=$Q031E_.;
ATTRIB	Q031F	FORMAT=$Q031F_.;
ATTRIB	Q031G	FORMAT=$Q031G_.;
ATTRIB	Q031H	FORMAT=$Q031H_.;
ATTRIB	Q032	FORMAT=$Q032_.;
ATTRIB	Q033A	FORMAT=$Q033A_.;
ATTRIB	Q033B	FORMAT=$Q033B_.;
ATTRIB	Q033C	FORMAT=$Q033C_.;
ATTRIB	Q033D	FORMAT=$Q033D_.;
ATTRIB	Q033E	FORMAT=$Q033E_.;
ATTRIB	Q033F	FORMAT=$Q033F_.;
ATTRIB	Q034	FORMAT=$Q034_.;
ATTRIB	Q035	FORMAT=$Q035_.;
ATTRIB	Q036A	FORMAT=$Q036A_.;
ATTRIB	Q036B	FORMAT=$Q036B_.;
ATTRIB	Q036C	FORMAT=$Q036C_.;
ATTRIB	Q036D	FORMAT=$Q036D_.;
ATTRIB	Q036E	FORMAT=$Q036E_.;
ATTRIB	Q036F	FORMAT=$Q036F_.;
ATTRIB	Q036G	FORMAT=$Q036G_.;
ATTRIB	Q036H	FORMAT=$Q036H_.;
ATTRIB	Q036I	FORMAT=$Q036I_.;
ATTRIB	Q036J	FORMAT=$Q036J_.;
ATTRIB	Q036K	FORMAT=$Q036K_.;
ATTRIB	Q037A	FORMAT=$Q037A_.;
ATTRIB	Q037B	FORMAT=$Q037B_.;
ATTRIB	Q037C	FORMAT=$Q037C_.;
ATTRIB	Q037D	FORMAT=$Q037D_.;
ATTRIB	Q037E	FORMAT=$Q037E_.;

LABEL
Q01= 'Você está inserido(a) em que tipo de Unidade?'
Q02= 'Qual o seu sexo?'
Q03= 'Quantos anos de idade você possui?'
Q04= 'Como você se considera?'
Q05A= 'Qual(is) documento(s) abaixo você possui? Certidão de nascimento.'
Q05B= 'Qual(is) documento(s) abaixo você possui? Carteira de Identidade.'
Q05C= 'Qual(is) documento(s) abaixo você possui? CPF.'
Q05D= 'Qual(is) documento(s) abaixo você possui? Carteira de Trabalho.'
Q05E= 'Qual(is) documento(s) abaixo você possui? Carteira de Motorista.'
Q05F= 'Qual(is) documento(s) abaixo você possui? Título de Eleitor.'
Q05G= 'Qual(is) documento(s) abaixo você possui? Não tenho nenhum dos documentos acima mencionados'
Q06= 'Qual o seu estado civil?'
Q07= 'Como era a sua moradia antes de ser privado(a) de liberdade?'
Q08= 'Onde se situava o local onde você morava antes de ser privado(a) de liberdade?'
Q09= 'Você morava sozinho(a) antes de ser privado(a) de liberdade?'
Q010A= 'Quem morava com você antes de ser privado(a) de liberdade? Pai/Mãe.'
Q010B= 'Quem morava com você antes de ser privado(a) de liberdade? Cônjuge/companheiro(a).'
Q010C= 'Quem morava com você antes de ser privado(a) de liberdade? Filho(s) ou filha(s).'
Q010D= 'Quem morava com você antes de ser privado(a) de liberdade? Irmão(s) ou irmã(s).'
Q010E= 'Quem morava com você antes de ser privado(a) de liberdade? Outro(s) parente(s).'
Q010F= 'Quem morava com você antes de ser privado(a) de liberdade? Amigo(s), colega(s) ou conhecido(s).'
Q010G= 'Quem morava com você antes de ser privado(a) de liberdade? Pessoas abrigadas/institucionalizadas.'
Q011= 'No local onde você morava antes de ser privado(a) de liberdade, com quantas pessoas você dividia o mesmo ambiente para dormir?'
Q012= 'Você tem filho(s)?'
Q013= 'Quantos filhos você tem?'
Q014= 'Com quem está ou estão seu(s) filho(s) menor(es) de idade?'
Q015= 'Qual é o nível de escolaridade do seu pai?'
Q016= 'Qual é o nível de escolaridade da sua mãe?'
Q017= 'Você já frequentou a escola?'
Q018= 'Em que tipo de escola você cursou a maior parte do Ensino Fundamental ou Ensino Médio?'
Q019= 'Em que série você parou de frequentar a escola?'
Q020= 'Que idade você tinha quando deixou de frequentar a escola?'
Q021A= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Exposição a situações de maus-tratos na família.'
Q021B= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Falta de tempo para estudar'
Q021C= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Maternidade/paternidade na adolescência.'
Q021D= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Necessidade de ajudar nas tarefas de casa.'
Q021E= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Necessidade de trabalhar para ajudar a família.'
Q021F= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Proibição de estudar.'
Q021G= 'Assinale ?sim? ou ?não? se os seguintes motivos pessoais influenciaram você a deixar de frequentar a escola regular: Repetidas mudanças de domicílio.'
Q022A= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Constante falta de professores.'
Q022B= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Dificuldade de relacionamento com colegas ou os professores.'
Q022C= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito por causa do gênero/sexo.'
Q022D= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela raça/cor.'
Q022E= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Ter sofrido preconceito pela renda/classe social.'
Q022F= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Escola mal-conservada e insegura.'
Q022G= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Falta de escola perto de casa.'
Q022H= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Formas de ensino/avaliação desestimulantes.'
Q022I= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Inexistência de vaga em escola pública.'
Q022J= 'A seguir, são apresentadas algumas situações do meio escolar. Marque ?sim? ou ?não? se você acredita que cada situação te influenciou a abandonar a escola: Percepção de que os conteúdos das aulas não serviam para a vida.'
Q023= 'Antes de ter sua liberdade privada, você trabalhava?'
Q024= 'Com que idade você começou a trabalhar?'
Q025= 'Você realiza algum trabalho na Unidade em que está inserido?'
Q026= 'Qual é a sua renda mensal aproximadamente?'
Q027A= 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Compor uma caderneta de poupança.'
Q027B= 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Custear despesas pessoais.'
Q027C= 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Pagar indenização determinada judicialmente.'
Q027D= 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Prestar assistência à família.'
Q027E= 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Ressarcir o Estado.'
Q027F= 'O valor que você recebe pelo trabalho remunerado na Unidade em que você está inserido(a) destina-se a: Outro objetivo.'
Q028= 'Quantas horas você trabalha na Unidade em que você está inserido(a)?'
Q029A= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Adquirir experiência para reinserção social.'
Q029B= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Aprender uma profissão.'
Q029C= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ganhar meu próprio dinheiro.'
Q029D= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Pagar uma indenização.'
Q029E= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Possibilitar a remição da pena.'
Q029F= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Ressarcir o Estado.'
Q029G= 'Indique o grau de importância de cada um dos motivos abaixo na sua decisão de trabalhar na Unidade em que você está inserido(a): Sustentar minha família.'
Q030A= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso de informática.'
Q030B= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso de alfabetização.'
Q030C= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso(s) profissionalizante(s).'
Q030D= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso(s) supletivo(s).'
Q030E= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso de idiomas/línguas (inglês, espanhol ou outro).'
Q030F= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Curso preparatório para o Encceja.'
Q030G= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Outro curso.'
Q030H= 'Qual dos cursos abaixo você já frequentou desde sua privação de liberdade? Não frequentei nenhum curso.'
Q031A= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso profissionalizante.'
Q031B= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de língua estrangeira.'
Q031C= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, faço curso de computação ou informática.'
Q031D= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de oficinas culturais.'
Q031E= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, participo de grupos religiosos/de estudo bíblico.'
Q031F= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, realizo atividade regular de leitura.'
Q031G= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Sim, pratico atividades de esporte/lazer.'
Q031H= 'Você realiza atividades educacionais ou culturais regularmente na Unidade em que você está inserido(a)? Não realizo nenhuma dessas atividades regularmente.'
Q032= 'Você estuda regularmente na Unidade em que você está inserido(a)?'
Q033A= 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado(a).'
Q033B= 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Atender à expectativa de meus familiares.'
Q033C= 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir entrar na faculdade.'
Q033D= 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Conseguir um emprego.'
Q033E= 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Desenvolver novas habilidades.'
Q033F= 'Qual o principal motivo te influencia a estudar na Unidade em que você está inserido(a)? Possibilitar a remição da pena.'
Q034= 'Você, hoje, tem acesso a biblioteca ou sala de leitura na Unidade em que você está inserido(a)?'
Q035= 'Com que frequência você visita a biblioteca ou a sala de leitura na Unidade em que você está inserido(a)?'
Q036A= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Artes/música.'
Q036B= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Autoajuda.'
Q036C= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Biografias.'
Q036D= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Didáticos escolares.'
Q036E= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Infanto-juvenil.'
Q036F= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Literatura brasileira/estrangeira.'
Q036G= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Poesia/poemas.'
Q036H= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Religião.'
Q036I= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Revistas/gibis.'
Q036J= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Técnico-científico, jurídicos.'
Q036K= 'Que gênero de livros você tem o hábito de ler em sua Unidade? Não tenho o hábito de ler livros. (Passe para a questão 38).'
Q037A= 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Adquirir mais conhecimento, ficar atualizado(a).'
Q037B= 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Desenvolver autoconhecimento.'
Q037C= 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Relaxar, me distrair.'
Q037D= 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Melhorar minhas habilidades de comunicação.'
Q037E= 'Qual o principal motivo de você ler livros na Unidade em que você está inserido(a)? Possibilitar a remição da pena.'
Q038A= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Atender à expectativa dos meus familiares.'
Q038B= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Conquistar reconhecimento profissional.'
Q038C= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Conseguir entrar na faculdade.'
Q038D= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Conseguir um emprego.'
Q038E= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Obter um certificado do Ensino Fundamental/Médio.'
Q038F= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Possibilitar a remição da pena.'
Q038G= 'Indique o grau de importância dos motivos que levaram você a participar do ENCCEJA: Testar meus conhecimentos.';

RUN;QUIT;
