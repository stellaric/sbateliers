DROP DATABASE IF EXISTS sbateliers ;
CREATE DATABASE IF NOT EXISTS sbateliers ;
use sbateliers ; 
        
CREATE TABLE Atelier
(
  numAtelier          INT         NOT NULL,
  dateEnregistrement  DATE        NOT NULL,
  dateHeureProogramme DATETIME    NOT NULL,
  duree               VARCHAR(5)  NOT NULL,
  nbPlace             INT         NOT NULL,
  theme               VARCHAR(50) NOT NULL,
  PRIMARY KEY (numAtelier)
);

CREATE TABLE Client
(
  numClient      INT          NOT NULL auto_increment,
  civilite       BOOLEAN      NOT NULL,
  nomClient      VARCHAR(50)  NOT NULL,
  prenomClient   VARCHAR(50)  NOT NULL,
  dateNaissance  DATE         NOT NULL,
  emailClient    VARCHAR(90)  NOT NULL,
  mdpClient      VARCHAR(8)   NOT NULL,
  adressePostale VARCHAR(200) NOT NULL,
  codePostal     VARCHAR(7)   NOT NULL,
  ville          VARCHAR(50)  NOT NULL,
  tel            VARCHAR(10)  NOT NULL,
  PRIMARY KEY (numClient)
);

CREATE TABLE participer
(
  numClient       INT  NOT NULL,
  numAtelier      INT  NOT NULL,
  dateInscription DATE NOT NULL,
  PRIMARY KEY (dateInscription)
);

CREATE TABLE programmer
(
  numAtelier INT NOT NULL,
  numResp    INT NOT NULL
);

CREATE TABLE ResponsableAteliers
(
  numResp   INT         NOT NULL,
  loginResp VARCHAR(15) NOT NULL,
  mdpResp   VARCHAR(8)  NOT NULL,
  nomResp   VARCHAR(50) NOT NULL,
  prenomResp   VARCHAR(50) NOT NULL,
  PRIMARY KEY (numResp)
);

ALTER TABLE participer
  ADD CONSTRAINT FK_Client_TO_participer
    FOREIGN KEY (numClient)
    REFERENCES Client (numClient);

ALTER TABLE participer
  ADD CONSTRAINT FK_Atelier_TO_participer
    FOREIGN KEY (numAtelier)
    REFERENCES Atelier (numAtelier);

ALTER TABLE programmer
  ADD CONSTRAINT FK_Atelier_TO_programmer
    FOREIGN KEY (numAtelier)
    REFERENCES Atelier (numAtelier);

ALTER TABLE programmer
  ADD CONSTRAINT FK_ResponsableAteliers_TO_programmer
    FOREIGN KEY (numResp)
    REFERENCES ResponsableAteliers (numResp);

        
      