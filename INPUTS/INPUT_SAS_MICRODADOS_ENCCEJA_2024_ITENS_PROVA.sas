/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENCCEJA_2024_ITENS_PROVA.sas	          */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS ITENS DAS PROVAS DO ENCCEJA 2024 */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENCCEJA_2024_ITENS_PROVA.CSV no diretório C:\ do computador.*/
/*															 			  */                                           
/* Ao terminar esses procedimentos execute o programa salvo utilizando    */
/* as variáveis de interesse.                                             */
/**************************************************************************/
/*				                  ATENÇÃO                                 */  
/**************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	  */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir */
/* os dados sem os rótulos basta importar diretamente no SAS.			  */
/* 																	      */ 																          
/**************************************************************************/

PROC FORMAT;

VALUE TP_PROVA
		1= 'Nacional Regular'
		2= 'Nacional PPL'
		3= 'Exterior Regular'
		4= 'Exterior PPL'
		5= 'Nacional Regular (Reaplicação)'
		6= 'Exterior Regular (Reaplicação)';

VALUE $SG_AREA
		HG='História e Geografia(EF)'
		CI='Ciências Naturais(EF)'
		LP='Língua Portuguesa, Língua Estrangeira Moderna, Artes, Educação Física e Redação(EF)'
		MA='Matemática(EF)'
		CH='Ciências Humanas(EM)'
		CN='Ciências da Natureza(EM)'
		LC='Linguagens e Códigos(EM)'
		MT='Matemática(EM)';

VALUE TP_CERTIFICACAO
		1='Ensino Fundamental'
		2='Ensino Médio';

VALUE IN_ITEM_ADAPTADO
		0='Não'
		1='Sim';

VALUE IN_ITEM_ABAN
		0='Não'
		1='Sim';

DATA WORK.ITENS_PROVA_2024;
INFILE 'C:\MICRODADOS_ENCCEJA_2024_ITENS_PROVA.csv' /*Endereço do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/

        LRECL=100
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;

INPUT
        TP_PROVA         : ?? BEST1.
        CO_POSICAO       : ?? BEST2.
        SG_AREA          : $CHAR2.
        CO_ITEM          : ?? BEST6.
        TX_GABARITO      : $CHAR1.
        CO_HABILIDADE    : $CHAR3.
        CO_PROVA         : ?? BEST6.
        IN_ITEM_ABAN     : ?? BEST1.
        TX_MOTIVO_ABAN   : $CHAR25.
        NU_PARAM_A       : $CHAR7.
        NU_PARAM_B       : $CHAR8.
        NU_PARAM_C       : $CHAR7.
        TX_COR           : $CHAR7.
        TP_CERTIFICACAO  : ?? BEST1.
        IN_ITEM_ADAPTADO : ?? BEST1. ;

ATTRIB	TP_PROVA		 FORMAT = TP_PROVA.;
ATTRIB  SG_AREA          FORMAT = $SG_AREA.;         
ATTRIB  TP_CERTIFICACAO  FORMAT = TP_CERTIFICACAO.;       
ATTRIB  IN_ITEM_ADAPTADO FORMAT = IN_ITEM_ADAPTADO.;
ATTRIB  IN_ITEM_ABAN	 FORMAT = IN_ITEM_ABAN.;

LABEL
TP_PROVA='Tipo da Prova'
CO_POSICAO='Posição do Item na Prova'
SG_AREA='Área de Conhecimento do Item'
CO_ITEM='Código do Item'
TX_GABARITO='Gabarito do Item'
CO_HABILIDADE='Habilidade do Item'
CO_PROVA='Identificador da Prova'
IN_ITEM_ABAN='Indicador de item abandonado'	
TX_MOTIVO_ABAN='Motivo para o abandono do item'  
NU_PARAM_A='Parâmetro de discriminação (a)'		
NU_PARAM_B='Parâmetro de dificuldade (b)'		
NU_PARAM_C='Parâmetro de acerto ao acaso (c)'	
TX_COR='Cor da Prova'
TP_CERTIFICACAO='Tipo de Certificação'
IN_ITEM_ADAPTADO='Item pertencente à prova adaptada';

RUN;