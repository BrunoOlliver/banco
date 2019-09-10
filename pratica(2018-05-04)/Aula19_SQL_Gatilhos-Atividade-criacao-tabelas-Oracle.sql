alter session set nls_date_format = 'DD/MM/YYYY';

DROP TABLE ITEMPED;
DROP TABLE PEDIDO;
DROP TABLE PRODUTO;
DROP TABLE VENDEDOR;
DROP TABLE CLIENTE;

CREATE TABLE CLIENTE (
   CODCLI INTEGER NOT NULL,
   NOMECLI VARCHAR(50) NOT NULL,
   ENDERECO VARCHAR(60),
   CIDADE CHAR (20) NOT NULL,
   CEP CHAR(10),
   UF CHAR (2) NOT NULL, 
   CGC CHAR(14) NOT NULL,
   PRIMARY KEY (CODCLI)
);

CREATE TABLE VENDEDOR (
   CODVEND INTEGER NOT NULL,
   NOMEVEND VARCHAR(50) NOT NULL,
   SALFIXO FLOAT,
   FAIXACOMIS CHAR NOT NULL,
   PRIMARY KEY (CODVEND)
);

CREATE TABLE PRODUTO (
   CODPROD INTEGER NOT NULL,
   UNIDADE CHAR(2) NOT NULL,
   DESCRI VARCHAR(30) NOT NULL,
   VALUNIT FLOAT,
   PRIMARY KEY (CODPROD)
);

CREATE TABLE PEDIDO (
   NUMPED INTEGER NOT NULL,
   PRAZOENTR INTEGER,
   CODCLI INTEGER NOT NULL,
   CODVEND INTEGER,
   DATA DATE,
   PRIMARY KEY (NUMPED),
   FOREIGN KEY (CODCLI) REFERENCES CLIENTE (CODCLI),
   FOREIGN KEY (CODVEND) REFERENCES VENDEDOR (CODVEND)
);

CREATE TABLE ITEMPED (
   NUMPED INTEGER NOT NULL,
   CODPROD INTEGER NOT NULL,
   QUANT INTEGER,
   PRIMARY KEY (NUMPED, CODPROD),
   FOREIGN KEY (NUMPED) REFERENCES PEDIDO (NUMPED),
   FOREIGN KEY (CODPROD) REFERENCES PRODUTO (CODPROD)
);

-- dados dos CLIENTES  --------

INSERT INTO CLIENTE VALUES (20,'BETH DA SILVA','AV. CLIMERIO, 230','SAO PAULO',25678300,'SP','32485211125025');
INSERT INTO CLIENTE VALUES (110,'JORGE BRITO','RUA CAIAPO, 13','CURITIBA',30078500,'PR','14512764983491');
INSERT INTO CLIENTE VALUES (130,'EDMAR CAMARGO','RUA DA PRAIA, S/N','SALVADOR',30099300,'BA','23456890000287');
INSERT INTO CLIENTE VALUES (157,'PAULO SOUSA','TV. MORAES, 230','LONDRINA',89785200,'PR','12748111000125');
INSERT INTO CLIENTE VALUES (180,'LVIO FIGUEIRAS','AV.BEIRA MAR, 1256','FLORIANPOLIS',30001500,'SC','12788888001020');
INSERT INTO CLIENTE VALUES (222,'LUCIA CAMATA','R.ITABIRA, 123 - LOJA 9','BELO HORIZONTE',22124391,'MG','28315213934881');
INSERT INTO CLIENTE VALUES (234,'JOS OLIVEIRA','QUADRA 3, BL.3 - SL.2','BRASLIA',22897100,'DF','21768811000120');
INSERT INTO CLIENTE VALUES (260,'SUSANA OLIVEIRA','R.LOPES MENDES, 200','NITERI',30045500,'RJ','21758855000210');
INSERT INTO CLIENTE VALUES (290,'RENATO SANTIAGO','R.MEIRELES, 200','SAO PAULO',30025400,'SP','13251141000120');
INSERT INTO CLIENTE VALUES (390,'SEBASTIO CORREIA','R.DA IGREJA, 70','UBERABA',30048400,'MG','32179888000120');
INSERT INTO CLIENTE VALUES (410,'RODOLFO BASTOS','LARGO DA LAPA, 27','RIO DE JANEIRO',20101100,'RJ','12833511000387');
INSERT INTO CLIENTE VALUES (720,'ANA FARIAS','RUA 17 , N.19','NITEROI',24358310,'RJ','12113231000134');
INSERT INTO CLIENTE VALUES (830,'MAURICIO FELIX','AV.PAULISTA, 1236 - SL 123','SAO PAULO',3012683,'SP','32816895000256');
INSERT INTO CLIENTE VALUES (870,'FLAVIO CESAR TORRES','AV.PRES.VARGAS, 10','SAO PAULO',22763931,'SP','22534126938790');
INSERT INTO CLIENTE VALUES (871,'JONAS ALBUQUERQUE','AV.PRES.VARGAS, 250','SAO PAULO',22763931,'SP','12345678901234');

-- dados dos VENDEDORES --------

INSERT INTO VENDEDOR VALUES(11,'JOAO SANTOS OLIVEIRA', 2780.00,'C');
INSERT INTO VENDEDOR VALUES(101,'JOAO SANTOS SILVA', 2650.00,'C');
INSERT INTO VENDEDOR VALUES(111,'CARLOS VIEIRA', 2490.00,'A');
INSERT INTO VENDEDOR VALUES(209,'JOSE FELISBERTO', 1800.00,'C');
INSERT INTO VENDEDOR VALUES(213,'JONAS SILVA', 2300.00,'A');
INSERT INTO VENDEDOR VALUES(240,'ANTONIO MORAIS', 9500.00,'C');
INSERT INTO VENDEDOR VALUES(250,'MAURICIO SERRA', 2930.00,'B');
INSERT INTO VENDEDOR VALUES(310,'JOSIAS DA SILVA', 870.00,'B');
INSERT INTO VENDEDOR VALUES(720,'FELIPE NASCIMENTO', 4600.00,'A');
INSERT INTO VENDEDOR VALUES(100,'MARCOS FARIAS', 800.00,'D');
INSERT INTO VENDEDOR VALUES(200,'MONICA DA SILVA', 1600.00,'D');
INSERT INTO VENDEDOR VALUES(280,'SAMANTA DE OLIVEIRA', 3600.00,'C');

-- dados dos PRODUTOS -------- 

INSERT INTO PRODUTO VALUES (13,'G','OURO', 6.18);
INSERT INTO PRODUTO VALUES (22,'M','LINHO', 0.11);
INSERT INTO PRODUTO VALUES (25,'KG','QUEIJO', 0.97);
INSERT INTO PRODUTO VALUES (30,'AS','AUCAR', 0.30);
INSERT INTO PRODUTO VALUES (31,'BA','CHOCOLATE', 0.87);
INSERT INTO PRODUTO VALUES (45,'M','MADEIRA', 0.25);
INSERT INTO PRODUTO VALUES (53,'M','LINHA', 1.80);
INSERT INTO PRODUTO VALUES (77,'M','PAPEL', 1.05);
INSERT INTO PRODUTO VALUES (78,'L','VINHO', 2.00);

INSERT INTO PEDIDO VALUES (300, 20, 180, 720, '6/5/2016');
INSERT INTO ITEMPED VALUES (300, 22, 229);
INSERT INTO ITEMPED VALUES (300, 25, 295);
INSERT INTO ITEMPED VALUES (300, 31, 146);
INSERT INTO ITEMPED VALUES (300, 45, 223);
INSERT INTO ITEMPED VALUES (300, 53, 109);
INSERT INTO ITEMPED VALUES (300, 77, 168);
INSERT INTO PEDIDO VALUES (301, 60, 260, 209, '6/5/2016');
INSERT INTO ITEMPED VALUES (301, 53, 208);
INSERT INTO ITEMPED VALUES (301, 77, 49);
INSERT INTO ITEMPED VALUES (301, 78, 202);
INSERT INTO ITEMPED VALUES (301, 13, 70);
INSERT INTO ITEMPED VALUES (301, 22, 190);
INSERT INTO PEDIDO VALUES (302, 30, 110, 720, '6/5/2016');
INSERT INTO ITEMPED VALUES (302, 25, 6);
INSERT INTO ITEMPED VALUES (302, 31, 82);
INSERT INTO ITEMPED VALUES (302, 45, 118);
INSERT INTO ITEMPED VALUES (302, 53, 265);
INSERT INTO ITEMPED VALUES (302, 77, 192);
INSERT INTO PEDIDO VALUES (303, 20, 20, 101, '6/5/2016');
INSERT INTO ITEMPED VALUES (303, 31, 280);
INSERT INTO ITEMPED VALUES (303, 45, 231);
INSERT INTO ITEMPED VALUES (303, 53, 199);
INSERT INTO PEDIDO VALUES (304, 45, 830, 720, '6/5/2016');
INSERT INTO ITEMPED VALUES (304, 53, 95);
INSERT INTO ITEMPED VALUES (304, 77, 134);
INSERT INTO PEDIDO VALUES (305, 30, 871, 310, '6/5/2016');
INSERT INTO ITEMPED VALUES (305, 13, 256);
INSERT INTO PEDIDO VALUES (306, 10, 410, 213, '6/5/2016');
INSERT INTO ITEMPED VALUES (306, 31, 53);
INSERT INTO ITEMPED VALUES (306, 45, 105);
INSERT INTO ITEMPED VALUES (306, 53, 85);
INSERT INTO ITEMPED VALUES (306, 77, 10);
INSERT INTO PEDIDO VALUES (307, 20, 390, 720, '7/5/2016');
INSERT INTO ITEMPED VALUES (307, 13, 180);
INSERT INTO ITEMPED VALUES (307, 22, 223);
INSERT INTO ITEMPED VALUES (307, 25, 148);
INSERT INTO PEDIDO VALUES (308, 45, 290, 310, '7/5/2016');
INSERT INTO ITEMPED VALUES (308, 22, 300);
INSERT INTO ITEMPED VALUES (308, 25, 293);
INSERT INTO PEDIDO VALUES (309, 20, 20, 720, '7/5/2016');
INSERT INTO ITEMPED VALUES (309, 13, 142);
INSERT INTO ITEMPED VALUES (309, 22, 115);
INSERT INTO ITEMPED VALUES (309, 25, 240);
INSERT INTO ITEMPED VALUES (309, 31, 45);
INSERT INTO PEDIDO VALUES (310, 45, 410, 11, '7/5/2016');
INSERT INTO ITEMPED VALUES (310, 53, 159);
INSERT INTO PEDIDO VALUES (311, 30, 870, 310, '7/5/2016');
INSERT INTO ITEMPED VALUES (311, 77, 6);
INSERT INTO ITEMPED VALUES (311, 78, 210);
INSERT INTO ITEMPED VALUES (311, 13, 247);
INSERT INTO ITEMPED VALUES (311, 22, 43);
INSERT INTO PEDIDO VALUES (312, 20, 290, 250, '7/5/2016');
INSERT INTO ITEMPED VALUES (312, 13, 134);
INSERT INTO ITEMPED VALUES (312, 22, 79);
INSERT INTO ITEMPED VALUES (312, 25, 282);
INSERT INTO ITEMPED VALUES (312, 31, 73);
INSERT INTO ITEMPED VALUES (312, 45, 100);
INSERT INTO ITEMPED VALUES (312, 53, 81);
INSERT INTO PEDIDO VALUES (313, 10, 180, 209, '7/5/2016');
INSERT INTO ITEMPED VALUES (313, 22, 120);
INSERT INTO PEDIDO VALUES (314, 30, 830, 310, '7/5/2016');
INSERT INTO ITEMPED VALUES (314, 53, 113);
INSERT INTO ITEMPED VALUES (314, 77, 232);
INSERT INTO ITEMPED VALUES (314, 78, 20);
INSERT INTO ITEMPED VALUES (314, 13, 68);
INSERT INTO PEDIDO VALUES (315, 45, 720, 101, '7/5/2016');
INSERT INTO ITEMPED VALUES (315, 45, 75);
INSERT INTO ITEMPED VALUES (315, 53, 284);
INSERT INTO ITEMPED VALUES (315, 77, 285);
INSERT INTO ITEMPED VALUES (315, 78, 278);
INSERT INTO PEDIDO VALUES (316, 60, 20, 310, '7/5/2016');
INSERT INTO ITEMPED VALUES (316, 31, 51);
INSERT INTO ITEMPED VALUES (316, 45, 71);
INSERT INTO ITEMPED VALUES (316, 53, 175);
INSERT INTO ITEMPED VALUES (316, 77, 25);
INSERT INTO ITEMPED VALUES (316, 78, 163);
INSERT INTO ITEMPED VALUES (316, 13, 194);
INSERT INTO PEDIDO VALUES (317, 20, 871, 111, '7/5/2016');
INSERT INTO ITEMPED VALUES (317, 25, 282);
INSERT INTO ITEMPED VALUES (317, 31, 171);
INSERT INTO ITEMPED VALUES (317, 45, 257);
INSERT INTO ITEMPED VALUES (317, 53, 102);
INSERT INTO ITEMPED VALUES (317, 77, 150);
INSERT INTO ITEMPED VALUES (317, 78, 55);
INSERT INTO PEDIDO VALUES (318, 45, 180, 101, '7/5/2016');
INSERT INTO ITEMPED VALUES (318, 45, 132);
INSERT INTO ITEMPED VALUES (318, 53, 180);
INSERT INTO ITEMPED VALUES (318, 77, 265);
INSERT INTO ITEMPED VALUES (318, 78, 154);
INSERT INTO ITEMPED VALUES (318, 13, 201);
INSERT INTO ITEMPED VALUES (318, 22, 95);
INSERT INTO PEDIDO VALUES (319, 10, 870, 720, '7/5/2016');
INSERT INTO ITEMPED VALUES (319, 22, 72);
INSERT INTO PEDIDO VALUES (320, 20, 110, 213, '7/5/2016');
INSERT INTO ITEMPED VALUES (320, 31, 264);
INSERT INTO ITEMPED VALUES (320, 45, 261);
INSERT INTO ITEMPED VALUES (320, 53, 270);
INSERT INTO ITEMPED VALUES (320, 77, 83);
INSERT INTO ITEMPED VALUES (320, 78, 249);
INSERT INTO PEDIDO VALUES (321, 10, 410, 250, '7/5/2016');
INSERT INTO ITEMPED VALUES (321, 25, 173);
INSERT INTO PEDIDO VALUES (322, 30, 260, 213, '8/5/2016');
INSERT INTO ITEMPED VALUES (322, 53, 209);
INSERT INTO ITEMPED VALUES (322, 77, 41);
INSERT INTO ITEMPED VALUES (322, 78, 24);
INSERT INTO ITEMPED VALUES (322, 13, 276);
INSERT INTO PEDIDO VALUES (323, 10, 390, 310, '8/5/2016');
INSERT INTO ITEMPED VALUES (323, 31, 62);
INSERT INTO ITEMPED VALUES (323, 45, 221);
INSERT INTO ITEMPED VALUES (323, 53, 50);
INSERT INTO ITEMPED VALUES (323, 77, 8);
INSERT INTO ITEMPED VALUES (323, 78, 173);
INSERT INTO ITEMPED VALUES (323, 13, 7);
INSERT INTO PEDIDO VALUES (324, 20, 260, 250, '8/5/2016');
INSERT INTO ITEMPED VALUES (324, 13, 76);
INSERT INTO ITEMPED VALUES (324, 22, 33);
INSERT INTO ITEMPED VALUES (324, 25, 240);
INSERT INTO ITEMPED VALUES (324, 31, 15);
INSERT INTO PEDIDO VALUES (325, 60, 720, 213, '8/5/2016');
INSERT INTO ITEMPED VALUES (325, 25, 111);
INSERT INTO ITEMPED VALUES (325, 31, 295);
INSERT INTO PEDIDO VALUES (326, 45, 390, 209, '8/5/2016');
INSERT INTO ITEMPED VALUES (326, 77, 196);
INSERT INTO ITEMPED VALUES (326, 78, 231);
INSERT INTO PEDIDO VALUES (327, 30, 180, 240, '8/5/2016');
INSERT INTO ITEMPED VALUES (327, 53, 123);
INSERT INTO ITEMPED VALUES (327, 77, 258);
INSERT INTO ITEMPED VALUES (327, 78, 218);
INSERT INTO ITEMPED VALUES (327, 13, 10);
INSERT INTO ITEMPED VALUES (327, 22, 29);
INSERT INTO PEDIDO VALUES (328, 45, 290, 101, '8/5/2016');
INSERT INTO ITEMPED VALUES (328, 13, 125);
INSERT INTO ITEMPED VALUES (328, 22, 79);
INSERT INTO ITEMPED VALUES (328, 25, 294);
INSERT INTO ITEMPED VALUES (328, 31, 271);
INSERT INTO ITEMPED VALUES (328, 45, 254);
INSERT INTO PEDIDO VALUES (329, 10, 720, 213, '8/5/2016');
INSERT INTO ITEMPED VALUES (329, 53, 215);
INSERT INTO ITEMPED VALUES (329, 77, 34);
INSERT INTO PEDIDO VALUES (330, 45, 110, 11, '8/5/2016');
INSERT INTO ITEMPED VALUES (330, 13, 84);
INSERT INTO ITEMPED VALUES (330, 22, 152);
INSERT INTO ITEMPED VALUES (330, 25, 159);
INSERT INTO ITEMPED VALUES (330, 31, 206);
INSERT INTO ITEMPED VALUES (330, 45, 235);
INSERT INTO PEDIDO VALUES (331, 20, 390, 310, '8/5/2016');
INSERT INTO ITEMPED VALUES (331, 22, 263);
INSERT INTO ITEMPED VALUES (331, 25, 201);
INSERT INTO ITEMPED VALUES (331, 31, 109);
INSERT INTO ITEMPED VALUES (331, 45, 211);
INSERT INTO PEDIDO VALUES (332, 45, 290, 101, '8/5/2016');
INSERT INTO ITEMPED VALUES (332, 25, 77);
INSERT INTO ITEMPED VALUES (332, 31, 228);
INSERT INTO ITEMPED VALUES (332, 45, 170);
INSERT INTO ITEMPED VALUES (332, 53, 56);
INSERT INTO PEDIDO VALUES (333, 60, 260, 240, '8/5/2016');
INSERT INTO ITEMPED VALUES (333, 22, 171);
INSERT INTO ITEMPED VALUES (333, 25, 160);
INSERT INTO ITEMPED VALUES (333, 31, 28);
INSERT INTO ITEMPED VALUES (333, 45, 142);
INSERT INTO ITEMPED VALUES (333, 53, 55);
INSERT INTO PEDIDO VALUES (334, 30, 20, 111, '8/5/2016');
INSERT INTO ITEMPED VALUES (334, 31, 54);
INSERT INTO ITEMPED VALUES (334, 45, 63);
INSERT INTO ITEMPED VALUES (334, 53, 25);
INSERT INTO ITEMPED VALUES (334, 77, 187);
INSERT INTO ITEMPED VALUES (334, 78, 268);
INSERT INTO PEDIDO VALUES (335, 20, 290, 11, '8/5/2016');
INSERT INTO ITEMPED VALUES (335, 22, 284);
INSERT INTO ITEMPED VALUES (335, 25, 257);
INSERT INTO PEDIDO VALUES (336, 10, 871, 111, '8/5/2016');
INSERT INTO ITEMPED VALUES (336, 77, 175);
INSERT INTO ITEMPED VALUES (336, 78, 60);
INSERT INTO ITEMPED VALUES (336, 13, 212);
INSERT INTO ITEMPED VALUES (336, 22, 133);
INSERT INTO PEDIDO VALUES (337, 60, 110, 240, '9/5/2016');
INSERT INTO ITEMPED VALUES (337, 25, 119);
INSERT INTO ITEMPED VALUES (337, 31, 145);
INSERT INTO PEDIDO VALUES (338, 10, 870, 101, '9/5/2016');
INSERT INTO ITEMPED VALUES (338, 13, 99);
INSERT INTO ITEMPED VALUES (338, 22, 129);
INSERT INTO ITEMPED VALUES (338, 25, 95);
INSERT INTO PEDIDO VALUES (339, 30, 180, 213, '9/5/2016');
INSERT INTO ITEMPED VALUES (339, 53, 298);
INSERT INTO ITEMPED VALUES (339, 77, 171);
INSERT INTO ITEMPED VALUES (339, 78, 46);
INSERT INTO ITEMPED VALUES (339, 13, 298);
INSERT INTO ITEMPED VALUES (339, 22, 152);
INSERT INTO ITEMPED VALUES (339, 25, 201);
INSERT INTO PEDIDO VALUES (340, 20, 720, 111, '9/5/2016');
INSERT INTO ITEMPED VALUES (340, 25, 199);
INSERT INTO ITEMPED VALUES (340, 31, 22);
INSERT INTO ITEMPED VALUES (340, 45, 157);
INSERT INTO ITEMPED VALUES (340, 53, 58);
INSERT INTO PEDIDO VALUES (341, 60, 410, 250, '9/5/2016');
INSERT INTO ITEMPED VALUES (341, 22, 74);
INSERT INTO ITEMPED VALUES (341, 25, 18);
INSERT INTO PEDIDO VALUES (342, 45, 871, 111, '9/5/2016');
INSERT INTO ITEMPED VALUES (342, 13, 193);
INSERT INTO ITEMPED VALUES (342, 22, 271);
INSERT INTO ITEMPED VALUES (342, 25, 238);
INSERT INTO ITEMPED VALUES (342, 31, 216);
INSERT INTO PEDIDO VALUES (343, 10, 870, 310, '9/5/2016');
INSERT INTO ITEMPED VALUES (343, 31, 273);
INSERT INTO ITEMPED VALUES (343, 45, 284);
INSERT INTO ITEMPED VALUES (343, 53, 259);
INSERT INTO ITEMPED VALUES (343, 77, 153);
INSERT INTO PEDIDO VALUES (344, 30, 871, 240, '10/5/2016');
INSERT INTO ITEMPED VALUES (344, 22, 103);
INSERT INTO ITEMPED VALUES (344, 25, 257);
INSERT INTO ITEMPED VALUES (344, 31, 60);
INSERT INTO ITEMPED VALUES (344, 45, 231);
INSERT INTO ITEMPED VALUES (344, 53, 126);
INSERT INTO ITEMPED VALUES (344, 77, 115);
INSERT INTO PEDIDO VALUES (345, 60, 390, 101, '10/5/2016');
INSERT INTO ITEMPED VALUES (345, 45, 81);
INSERT INTO ITEMPED VALUES (345, 53, 258);
INSERT INTO ITEMPED VALUES (345, 77, 15);
INSERT INTO ITEMPED VALUES (345, 78, 13);
INSERT INTO ITEMPED VALUES (345, 13, 22);

commit;

-- verificar numero de linhas das tabelas
select 'cliente'  as tabela, (select count(*) from cliente)  as linhas from dual union
select 'vendedor' as tabela, (select count(*) from vendedor) as linhas from dual union
select 'produto'  as tabela, (select count(*) from produto)  as linhas from dual union
select 'pedido'   as tabela, (select count(*) from pedido)   as linhas from dual union
select 'itemped'  as tabela, (select count(*) from itemped)  as linhas from dual;

