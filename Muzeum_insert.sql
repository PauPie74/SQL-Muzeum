INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES ('Michelangelo', 'Merisi','Caravaggio',1571,1610);
INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES ('Michelangelo','di Lodovico Buonarroti Simoni','Michał Anioł',1475,1564);
INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES ('Hans','Memling',NULL,1435,1494);
INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES ('Vincent','van Gogh',NULL,1853,1890);
INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES ('Roy', 'Lichtenstein',NULL,1923,1997);
INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES ('Hokusai', 'Katsushika',NULL,1760,1849);

INSERT INTO instytucja (nazwa, miasto, kraj) VALUES ('Sothebys','Hong Kong','Hong Kong');
INSERT INTO instytucja (nazwa, miasto, kraj) VALUES ('Christies','Londyn','Wielka Brytania');
INSERT INTO instytucja (nazwa, miasto, kraj) VALUES ('Muzeum Narodowe w Gdańsku', 'Gdańsk','Polska');
INSERT INTO instytucja (nazwa, miasto, kraj) VALUES ('British Museum','Londyn','Wielka Brytania');
INSERT INTO instytucja (nazwa, miasto, kraj) VALUES ('Gallerie degli Uffizi','Florencja','Włochy');
INSERT INTO instytucja (nazwa, miasto, kraj) VALUES ('Łódzkie Towarzystwo Zachęty Sztuk Pięknych','Łódź','Polska');


INSERT INTO zakup (id_instytucja, cena) VALUES (1,110000000);
INSERT INTO zakup (id_instytucja, cena) VALUES (1,100000000);
INSERT INTO zakup (id_instytucja, cena) VALUES (2,20000000);
INSERT INTO zakup (id_instytucja, cena) VALUES (2,5000000);

INSERT INTO osoba_prywatna (imie, nazwisko) VALUES ('Agatha', 'Christie');
INSERT INTO osoba_prywatna (imie, nazwisko) VALUES ('Ernest', 'Hemingway');
INSERT INTO osoba_prywatna (imie, nazwisko) VALUES ('Luo','Guanzhong');

INSERT INTO dar (id_instytucja, id_osoba_prywatna) VALUES (6,NULL);
INSERT INTO dar (id_instytucja, id_osoba_prywatna) VALUES (NULL,1);
INSERT INTO dar (id_instytucja, id_osoba_prywatna) VALUES (NULL,2);
INSERT INTO dar (id_instytucja, id_osoba_prywatna) VALUES (NULL,3);

INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (NULL,NULL,NULL,'W zbiorach przed 1942 rokiem');
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (1,NULL,'1987-01-30',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (2,NULL,'1995-06-10',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (3,NULL,'2001-05-15',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (4,NULL,'2016-09-19',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (NULL,1,'1993-02-14',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (NULL,2,'2014-08-31',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (NULL,3,'2020-01-15',NULL);
INSERT INTO nabycie_eksponatu (id_zakup, id_dar, data_nabycia, notatka) VALUES (NULL,4,'2021-03-03',NULL);

INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Lacjum','Rzym','Włochy');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Toskania','Florencja','Włochy');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Flandria Zachodnia','Brugia','Belgia');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES (NULL,NULL, 'Francja');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Arles','Saint-Remy', 'Francja');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Nowy Jork','Nowy Jork','USA');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Kantou','Edo','Japonia');
INSERT INTO pochodzenie (region, miasto, kraj) VALUES ('Jiangxi','Jingdezhen','Chiny');

INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Chłopiec z koszem owoców',1,'obraz','olej na płótnie',1593,'XVI','barok',1,67,53,6);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Powołanie świętego Mateusza',1,'obraz','olej na płótnie',1600,'XVI','barok',1,322,340,1);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Dawid',2,'rzeźba','marmur',1504,'XVI','renesans',2,517,NULL,4);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Pieta Watykańska', 2,'rzeźba', 'marmur',1500,'XV','renesans',1,174,NULL,2);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Sąd Ostateczny',3,'obraz','tempera i olej na desce',1471,'XV','średniowiecze',3,242,180,3);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Słoneczniki',4,'obraz','olej na płótnie',1888,'XIX','postimpresjonizm',4,73,58,5);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Gwiaździsta noc',4,'obraz','olej na płótnie',1889,'XIX','postimpresjoznizm',5,74,92,7);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('M-Maybe',5,'grafika','litografia',1965,'XX','pop-art',6,152,152,8);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Wielka fala w Kanagawie',6,'grafika','drzeworyt',1833,'XIX','ukiyo-e',7,26,38,1);
INSERT INTO eksponat (tytul, id_artysta, typ, tworzywo_technika, rok_powstania, wiek_powstania, epoka_styl, id_pochodzenie, wysokosc_cm, szerokosc_cm,id_nabycie_eksponatu)
VALUES ('Waza z miedzianym smokiem',NULL,'ceramika','porcelana',1688,'XVII','dynastia Qing, Kangxi',8,421,170,9);

INSERT INTO magazynowanie (powod) VALUES ('renowacja');
INSERT INTO magazynowanie (powod) VALUES ('przechowanie');
INSERT INTO magazynowanie (powod) VALUES ('badania naukowe');

INSERT INTO wypozyczenie (id_instytucja) VALUES (3);
INSERT INTO wypozyczenie (id_instytucja) VALUES (4);
INSERT INTO wypozyczenie (id_instytucja) VALUES (5);

INSERT INTO galeria (nazwa) VALUES ('Sztuka XVI wieku');
INSERT INTO galeria (nazwa) VALUES ('Sztuka orientalna');
INSERT INTO galeria (nazwa) VALUES ('Malarstwo niderlandzkie');
INSERT INTO galeria (nazwa) VALUES ('Malarstwo Vincenta van Gogha');
INSERT INTO galeria (nazwa) VALUES ('Rzeźba włoska');
INSERT INTO galeria (nazwa) VALUES ('Malarstwo i grafika współczesna');

INSERT INTO sala (id_galeria) VALUES (1);
INSERT INTO sala (id_galeria) VALUES (1);
INSERT INTO sala (id_galeria) VALUES (2);
INSERT INTO sala (id_galeria) VALUES (3);
INSERT INTO sala (id_galeria) VALUES (4);
INSERT INTO sala (id_galeria) VALUES (4);
INSERT INTO sala (id_galeria) VALUES (5);
INSERT INTO sala (id_galeria) VALUES (5);

INSERT INTO wystawa (id_sala) VALUES (1);
INSERT INTO wystawa (id_sala) VALUES (3);
INSERT INTO wystawa (id_sala) VALUES (4);
INSERT INTO wystawa (id_sala) VALUES (5);
INSERT INTO wystawa (id_sala) VALUES (8);

INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (1,NULL,1,NULL,'1980-10-12','1982-10-12');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (2,1,NULL,NULL,'2001-01-20','2001-10-02');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (3,NULL,3,NULL,'2002-02-12','2002-05-20');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (1,NULL,NULL,1,'2005-02-20','2010-07-25');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (9,NULL,NULL,2,'2010-07-30',NULL);
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (7,3,NULL,NULL,'2010-10-10','2011-01-01');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (2,1,NULL,NULL,'2011-02-01','2012-01-02');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (8,NULL,NULL,5,'2012-09-11','2020-11-11');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (10,NULL,NULL,2,'2016-03-06','2017-01-02');
INSERT INTO zdarzenie_eksponatu (id_eksponat, id_magazynowanie, id_wypozyczenie, id_wystawa, data_od, data_do) VALUES (3,NULL,2,NULL,'2020-12-05',NULL);
