select * from cidades

CREATE TABLE cidades (
    nome            varchar(40),
    localizacao     point,
    altitude        float4
);

INSERT INTO CIDADES VALUES('Jucurutu', '(6.02, 37.01)',63);
INSERT INTO CIDADES VALUES('Mossoró', '(5.11, 37.20)',16);
INSERT INTO CIDADES VALUES('Caicó', '(6.27, 37.5)',151);
INSERT INTO CIDADES VALUES('Cerro Corá', '(6.02, 36.20)',575);
INSERT INTO CIDADES VALUES('Santa Cruz', '(6.13, 36.1)',236);
INSERT INTO CIDADES VALUES('Tangará', '(6.11, 35.48)',186);
INSERT INTO CIDADES VALUES('Parnamirim', '(5.54, 35.15)',53);
INSERT INTO CIDADES VALUES('Natal', '(5.47,-35.12)', 30);


CREATE TABLE CLIMA(
CIDADE VARCHAR(40),
MESSOREGIAO VARCHAR(20),
PRCP FLOAT4,
DATA DATE);

select * from clima


INSERT INTO CLIMA VALUES('Jucurutu', 'OESTE POTIGUAR', 10.0, '2009-03-04');
INSERT INTO CLIMA VALUES('Mossoró', 'OESTE POTIGUAR', 5.6, '2009-03-04');
INSERT INTO CLIMA VALUES('Caicó', 'CENTRAL POTIGUAR', 36.7, '2009-03-04');
INSERT INTO CLIMA VALUES('Cerro Corá', 'CENTRAL POTIGUAR', 13.0, '2009-03-04');
INSERT INTO CLIMA VALUES('Santa Cruz', 'AGRESTE POTIGUAR', 12.6, '2009-03-04');
INSERT INTO CLIMA VALUES('Tangara', 'AGRESTE POTIGUAR', 10.0, '2009-03-04');
INSERT INTO CLIMA VALUES('Parnamirim', 'LESTE POTIGUAR', 20.4, '2009-03-04');
INSERT INTO CLIMA VALUES('Natal', 'LESTE POTIGUAR', 20.0, '2009-03-04');

INSERT INTO CLIMA VALUES('Mossoró(Particular)', 'OESTE POTIGUAR', 6.8, '2009-03-18');
INSERT INTO CLIMA VALUES('Jucurutu(Delegacia)', 'OESTE POTIGUAR', 4.2, '2009-03-18');
INSERT INTO CLIMA VALUES('Cerro Corá(Emater)', 'CENTRAL POTIGUAR', 11.0, '2009-03-18');
INSERT INTO CLIMA VALUES('Caicó(Acude Mundo Novo-emparn)', 'CENTRAL POTIGUAR', 8.0, '2009-03-18');
INSERT INTO CLIMA VALUES('Parnamirim (Base Fisica Da Emparn)', 'LESTE POTIGUAR', 2.5, '2009-03-18');
INSERT INTO CLIMA VALUES('Natal', 'LESTE POTIGUAR', 2.2, '2009-03-18');

INSERT INTO CLIMA VALUES('Jucurutu(Delegacia)', 'OESTE POTIGUAR', 19.9, '2009-04-08');
INSERT INTO CLIMA VALUES('Mossoró(Particular) ', 'OESTE POTIGUAR', 8.5, '2009-04-08');
INSERT INTO CLIMA VALUES('Cerro Corá(Emater) ', 'CENTRAL POTIGUAR', 7.5, '2009-04-08');

INSERT INTO CLIMA VALUES('Mossoró(Particular)', 'OESTE POTIGUAR', 6.5, '2009-04-24');
INSERT INTO CLIMA VALUES('Jucurutu(Delegacia)', 'OESTE POTIGUAR', 4.2, '2009-04-24');
INSERT INTO CLIMA VALUES('Caicó(Emater)', 'CENTRAL POTIGUAR', 35.5, '2009-04-24');
INSERT INTO CLIMA VALUES('Santa Cruz(Emater) ', 'AGRESTE POTIGUAR', 6.1, '2009-04-24');
INSERT INTO CLIMA VALUES('Santa Cruz(Emater) ', 'AGRESTE POTIGUAR', 6.1, '2009-04-24');
INSERT INTO CLIMA VALUES('Natal  ', 'LESTE POTIGUAR', 15.2, '2009-04-24');
INSERT INTO CLIMA VALUES('Parnamirim(Emater)', 'LESTE POTIGUAR', 1.0, '2009-04-24');

SELECT * FROM CIDADES
SELECT * FROM CLIMA
SELECT * FROM clima WHERE cidade = 'Natal' AND prcp > 0.0;
SELECT * FROM clima ORDER BY cidade;
    --ORDER BY cidade;

SELECT * FROM clima, cidades WHERE cidade = nome;

SELECT cidade, max(prcp)
    FROM clima
    GROUP BY cidade;

SELECT cidade, max(prcp)
FROM clima
GROUP BY cidade
HAVING max(prcp) < 32;  