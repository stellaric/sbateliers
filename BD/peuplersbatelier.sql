use sbateliers;

-- Client
insert into Client values (1,true,"Mermaid","Paola","1993-02-15","merpaola@laposte.net","azerty","104 rue de Ariel","78000","Oceano","0698752265");
insert into Client values (2,true,"Bernapé","Mona","1999-05-26","monab.pro@gmail.com","1234","12 allée Mona Lisa","92000","Louvre","0656124578");
insert into  Client values (3,false,"Champagne","Luc","2000-04-18","luchampagne@yahoo.com","champ","50 rue des Champetre","45120","Vignes","0614789562");
insert into  Client values (4,false,"Eldora","Michelin","1997-12-31","elmichelin@laposte.net","mimi","2 avenue des Roux","129568","Rouxelles","0321569875");
insert into Client values (5,true,"Pomin","Dora","1994-10-28","dora.pomin@gmail.com","babouche","23 allée de l'explo ","25698","Salvadorada","0123456784");

-- Atelier
insert into Atelier values (1,"2021-10-20","2021-10-25 16:30","1h30",4,"création de savon bio");
insert into Atelier values (2,"2021-11-10","2021-11-30 15:00","1h",10,"Création de parfum bio");
insert into Atelier values (3,"2021-08-10","2021-08-15 10:00","2h",8,"Conférence sur les produits cosmétiques bio");
insert into Atelier values (4,"2021-11-15","2021-11-18 8:00","1h30",6,"Visite de l'enseigne Sanayabio");
insert into  Atelier values (5,"2021-11-30","2021-12-02 10:00","1h30",4,"Fabrication de parfum bio cosmétique");

-- Responsable Ateliers
insert into ResponsableAteliers values (1,"paulibio","azerty","Alain","Paul");
insert into ResponsableAteliers  values (2,"mariabio","azerty","Débé","Maria");
insert into ResponsableAteliers  values (3,"philbio","azerty","Boulin","Phil");
insert into ResponsableAteliers  values (4,"ravenbio","azerty","Raven","Victor");
insert into ResponsableAteliers  values (5,"monabio","azerty","Mira","Mona");

--participer
insert into participer values (1,2,"2021-11-12");
insert into participer values (3,5,"2021-11-27");
insert into participer  values (4,1,"2021-10-23");
insert into participer values (5,4,"2021-11-14");
insert into participer values (2,3,"2021-08-12");