/* PROCEDURE */

/* 1. dodaj_artysta - dodaje nowego artystę do tabeli artysta */

CREATE PROCEDURE dodaj_artysta @imie VARCHAR(50), @nazwisko VARCHAR(50), @pseudonim VARCHAR, @rok_urodzenia INT, @rok_smierci INT
AS
INSERT INTO artysta (imie, nazwisko, pseudonim, rok_urodzenia, rok_smierci) VALUES (@imie, @nazwisko, @pseudonim, @rok_urodzenia, @rok_smierci);

/* Przykład */

EXEC dodaj_artysta @imie='Raffaello', @nazwisko='Santi', @pseudonim=NULL, @rok_urodzenia=1483, @rok_smierci=1520;


SELECT * FROM artysta


/* 2. data_zakonczenia - dodaje/zmienia datę zakończenia zdarzenia */

CREATE PROCEDURE data_zakonczenia @id_zdarzenie_eksponatu INT, @data_do DATE
AS
UPDATE zdarzenie_eksponatu
SET data_do = @data_do
WHERE id_zdarzenie_eksponatu = @id_zdarzenie_eksponatu;

/* Przykład */

EXEC data_zwrotu @id_zdarzenie_eksponatu= 5, @data_do = '07-06-2021';

SELECT * FROM zdarzenie_eksponatu

/* FUNCTION */

/* 1. ilosc_zdarzen - wyświetla ilość zdarzeń przypisanych do podanego id eksponatu */

CREATE FUNCTION ilosc_zdarzen (@id_eksponat int)
returns INT
BEGIN
return (select count(*) from zdarzenie_eksponatu where id_eksponat=@id_eksponat)
end

/* Przykład */

SELECT dbo.ilosc_zdarzen (3) AS zdarzenia

/* 2. przedzial_powstanie - wyświetala eksponaty, które powstały w podanym przedziale czasowym */

CREATE FUNCTION przedzial_powstanie (@rok_od int, @rok_do int)
returns INT
BEGIN
return (select count(*) from eksponat where rok_powstania between @rok_od and @rok_do)
end

/* Przykład */

SELECT dbo.przedzial_powstanie ('1501', '1600') as ilosc_w_XVI_w

/* VIEW */

/* 1. artysta_obrazy - wyświetla, ile dany artysta namalował obrazów */

CREATE VIEW artysta_obrazy AS 
SELECT artysta.id_artysta, artysta.imie, artysta.nazwisko, artysta.pseudonim, artysta.rok_urodzenia, artysta.rok_smierci, count(eksponat.id_artysta) AS 'Ilosc obrazow' FROM artysta
LEFT JOIN eksponat ON eksponat.id_artysta = artysta.id_artysta
GROUP BY artysta.id_artysta, artysta.imie, artysta.nazwisko, artysta.pseudonim, artysta.rok_urodzenia, artysta.rok_smierci, eksponat.typ
HAVING eksponat.typ = 'obraz'

/* Przykład */

SELECT * FROM artysta_obrazy;


/* TRIGGER */

/* 1. zmien_wiek - reaguje na update roku powstania eksponatu, automatycznie zmieniają wiek powstania */

CREATE TRIGGER zmien_wiek
ON eksponat
FOR UPDATE
as
BEGIN
	SET NOCOUNT ON
    UPDATE eksponat SET wiek_powstania = 'XV' where rok_powstania BETWEEN '1401' and '1500' 
    UPDATE eksponat SET wiek_powstania = 'XVI' where rok_powstania BETWEEN '1501' and '1600' 
    UPDATE eksponat SET wiek_powstania = 'XVII' where rok_powstania BETWEEN '1601' and '1700' 
    UPDATE eksponat SET wiek_powstania = 'XVIII' where rok_powstania BETWEEN '1701' and '1800' 
    UPDATE eksponat SET wiek_powstania = 'XIX' where rok_powstania BETWEEN '1801' and '1900' 
    UPDATE eksponat SET wiek_powstania = 'XX' where rok_powstania BETWEEN '1901' and '2000'
    UPDATE eksponat SET wiek_powstania = 'XXI' where rok_powstania BETWEEN '2001' and '2100' 
END

/* Przykład */
 
UPDATE eksponat SET rok_powstania = '1805'
where id_eksponat = '1';

SELECT * FROM eksponat


/* 2. usun_pochodzenie - automatycznie usuwa pochodzenie po usunięciu ostatniego eksponatu powiązanego z tym pochodzeniem - nie działa z jakichś przyczyn, wymaga modyfikacji */

CREATE TRIGGER usun_pochodzenie
ON eksponat
FOR DELETE
as
BEGIN
	SET NOCOUNT ON
    DELETE FROM pochodzenie
    WHERE id_pochodzenie NOT IN (SELECT pochodzenie.id_pochodzenie FROM pochodzenie 
                                 FULL JOIN eksponat ON pochodzenie.id_pochodzenie = eksponat.id_pochodzenie GROUP BY pochodzenie.id_pochodzenie);
END


/* Przykład */

SELECT pochodzenie.id_pochodzenie, pochodzenie.kraj, pochodzenie.region, count(eksponat.id_pochodzenie) AS 'ilosc dziel' from pochodzenie
LEFT JOIN eksponat ON pochodzenie.id_pochodzenie=eksponat.id_pochodzenie
GROUP BY pochodzenie.id_pochodzenie, pochodzenie.kraj, pochodzenie.region

DELETE from eksponat where id_eksponat = '5'

/* id_eksponat 4,5,6 usuwa sie bez konfliktów */
 