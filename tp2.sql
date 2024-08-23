CREATE TABLE ARTICLE (
    ID int NOT NULL PRIMARY KEY, 
    REF varchar(13) NOT NULL, 
    DESIGNATION varchar(255) NOT NULL, 
    PRIX decimal(7,2) NOT NULL, 
    ID_FOU int NOT NULL);

CREATE TABLE FOURNISSEUR (
    ID int NOT NULL PRIMARY KEY, 
    NOM varchar(25) NOT NULL);

CREATE TABLE BON (
    ID int NOT NULL PRIMARY KEY, 
    NUMERO int, 
    DATE_CMDE DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
    DELAI int, 
    ID_FOU int not null);

CREATE TABLE COMPO (
    ID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    ID_ART int, 
    ID_BON int, 
    QTE int);


ALTER TABLE ARTICLE add constraint FOREIGN KEY (ID_FOU) REFERENCES FOURNISSEUR(ID);
ALTER TABLE BON add constraint FOREIGN KEY (ID_FOU) REFERENCES FOURNISSEUR(ID) ;
ALTER TABLE COMPO add constraint FOREIGN KEY (ID_ART) REFERENCES ARTICLE(ID) ;
ALTER TABLE COMPO add constraint FOREIGN KEY (ID_BON) REFERENCES BON(ID) ;

Insert into FOURNISSEUR (ID, NOM) values (1, 'Française d''Imports') ;
Insert into FOURNISSEUR (ID, NOM) values (2, 'FDM SA') ;
Insert into FOURNISSEUR (ID, NOM) values (3, 'Dubois & Fils') ;

Insert into ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) values 
(1, 'A01', 'Perceuse P1', 74.99, 1) ;
(2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2) ;
(3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2) ;
(4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.4, 3) ;
(5, 'A02', 'Meuleuse 125mm', 37.85, 1) ;
(6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.8, 3) ;
(7, 'A03', 'Perceuse à colonne', 185.25, 1) ;
(8, 'D04', 'Coffret mêches à bois', 12.25, 3) ;
(9, 'F03', 'Coffret mêches plates', 6.25, 2) ;
(10, 'F04', 'Fraises d’encastrement', 8.14, 2) ;


INSERT INTO BON (ID, NUMERO, DATE_CMDE, DELAI , ID_FOU) VALUES
(1, 1, '2024-08-23 14:30:00', 3, 1)

insert into COMPO (ID_ART, ID_BON, QTE) values (1, 1, 3);
insert into COMPO (ID_ART, ID_BON, QTE) values (5, 1, 4);
insert into COMPO (ID_ART, ID_BON, QTE) values (7, 1, 1);