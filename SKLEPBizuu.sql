create database sklepbizuu;
use sklepbizuu;
CREATE TABLE KLIENCI (
    Id_klienta INT PRIMARY KEY,
    imie TEXT,
    nazwisko TEXT,
    miasto TEXT,
    email TEXT,
    telefon INTEGER
);
CREATE TABLE LOGINY (
    Id_klienta INT,
    login TEXT,
    pass TEXT
);
CREATE TABLE PRODUKTY (
    id_produktu INT primary key,
    rodzaj TEXT,
    karaty TEXT,
    kruszec TEXT,
    cena INTEGER,
    cena_promo INTEGER,
    stan_mag INTEGER
);
CREATE TABLE ZAMOWIENIA (
    nr_zamowienia INT primary key,
    id_klienta INTEGER,
    id_produktu INTEGER,
    status_platno TEXT,
    data_zamowienia DATE,
    komentarz TEXT
);
drop table zamowienia;
CREATE TABLE PLATNOSCI (
    id_platno INTEGER,
    status_zamow TEXT,
    id_klienta INTEGER,
    nr_zamowienia INTEGER,
    data_platno DATE);
    insert into klienci values (1, 'Adam', 'Kwiatkowski', 'Warszawa', 'akwiat@abc.pl', 123456789 ); 
insert into klienci values (2, 'Kamil', 'Gruszka', 'Wroclaw', 'kgruszka@def.pl', 123756489 ); 
insert into klienci values (3, 'Ryszard', 'Pietruszka', 'Krakow', 'rpietruszka@abc.pl', 321456789 ); 
insert into klienci values (4, 'Norbert', 'Kabaczek', 'Poznan', 'nkabaczek@def.pl', 125676789 ); 
insert into klienci values (5, 'Jacek', 'Pomidor', 'Katowice', 'jpomidor@abc.pl', 125678389 ); 
insert into klienci values (6, 'Michal', 'Ogorek', 'Warszawa', 'mogorek@def.pl', 123987659 ); 
insert into klienci values (7, 'Anna', 'Truskawka', 'Krakow', 'atruskawka@def.pl', 987654321);
insert into klienci values (8, 'Kasia', 'Morela', 'Lublin', 'kmorela@abc.pl', 978645312);
insert into klienci values (9, 'Gabriela', 'Porzeczka','Warszawa','gporzeczka@def.pl', 456789234);
insert into klienci values (10, 'Ewa', 'Len', 'Bialystok', 'elen@abc.pl', 234765983 );
insert into klienci values (11, 'Ewelina','Cebula','Opole','ecebula@def.pl9', 345789321);
insert into loginy values(1, 'adamkw', 'kotek123');
insert into loginy values(2, 'kamilgr','chomik456');
insert into loginy values(3, 'ryszardpi','swinka658');
insert into loginy values(4, 'norbertka','robak325');
insert into loginy values(5, 'jacekpo','pies983');
insert into loginy values(6, 'michalog','wrobel652');
insert into loginy values(7, 'annatr','mysz546');
insert into loginy values(8, 'kasiamo','mucha902');
insert into loginy values(9, 'gabrielapo','szczur379');
insert into loginy values(10, 'ewale','rys561');
insert into loginy values(11, 'ewelinace','bobr320');
insert into produkty values (1, 'pierscionek', '0,15', 'srebro', 750, 630, 15);
insert into produkty values (2, 'pierscionek', '0,25', 'zloto', 1030, 950, 30);
insert into produkty values (3, 'pierscionek', '0,50', 'biale_zloto', 3500, 3150, 5);
insert into produkty values (13, 'pierscionek', '0,36', 'zloto', 1800, 1690, 5);
insert into produkty values (4, 'kolczyki', '0,25', 'biale_zloto', 1200, 999, 0);
insert into produkty values (5, 'kolczyki', '0,20', 'zloto', 1005, 995, 7);
insert into produkty values (6, 'kolczyki', '0,55', 'biale_zloto', 4000, 3850, 3);
insert into produkty values (14, 'kolczyki', '0,15', 'srebro', 1100, 1010, 8);
insert into produkty values (7, 'bransoletka', '0,65', 'biale_zloto', 6900, 5500, 2);
insert into produkty values (8, 'bransoletka', '0,55', 'biale_zloto', 6000, 5050, 5);
insert into produkty values (9, 'bransoletka', '0,35', 'zloto', 1999, 1699, 1);
insert into produkty values (10, 'zawieszka', '0,10', 'srebro', 660, 599, 6);
insert into produkty values (11, 'zawieszka', '0,35', 'zloto', 1700, 1550, 11);
insert into produkty values (12, 'zawieszka', '0,40', 'biale_zloto', 1960, 1870, 3);
insert into zamowienia values(1,5,9, 'oczekuje na platnosc', '2017-05-20', 'prosze zapakowac na prezent');
insert into zamowienia values(2,11,1, 'zrealizowane', '2017-03-12',NULL);
insert into zamowienia values(3,5,12, 'anulowane', '2017-04-20', 'pomylka, prosba o anulowanie zamowienia');
insert into zamowienia values(4,2,11, 'oczekuje na platnosc', '2017-05-22', 'prosze zapakowac na prezent');
insert into zamowienia values(5,4,10, 'oplacone', '2017-05-19', 'prosze o ekspresowa wysylke');
insert into zamowienia values(6,1,9, 'oczekuje na platnosc', '2017-05-24', 'prosze zapakowac na prezent');
insert into zamowienia values(7,8,8, 'zrealizowane', '2017-02-20', null);
insert into zamowienia values(8,3,7, 'oczekuje na platnosc', '2017-05-26', 'prosze zapakowac na prezent');
insert into zamowienia values(9,10,6, 'anulowane', '2017-04-04','zona sie rozmyslila');
insert into zamowienia values(10,11,5, 'oplacone', '2017-05-21', null);
insert into zamowienia values(11,5,4, 'zrealizowane', '2017-05-02', null);
insert into zamowienia values(12,11,8, 'zrealizowane', '2017-04-20', null);
insert into zamowienia values(13,2,3, 'oczekuje na platnosc', '2017-05-15', 'prosze dolaczyc fakture');
insert into zamowienia values(14,6,2, 'oplacone', '2017-05-20', null);
insert into zamowienia values(15,5,1, 'zrealizowane', '2017-04-06', 'prosze o kontakt telefoniczny gdy przesylka zostanie wyslana');
insert into zamowienia values(16,11,12, 'oczekuje na platnosc', '2017-05-02',NULL);
insert into zamowienia values(17,1,11, 'oczekuje na platnosc', '2017-05-12', 'prosze zapakowac na prezent');
insert into zamowienia values(18,7,10, 'anulowane', '2017-01-31', null);
insert into zamowienia values(19,10,9, 'zrealizowane', '2017-02-18', 'prosze dolaczyc fakture');
insert into zamowienia values(20,9,8, 'oplacone', '2017-05-11', null);
insert into zamowienia values(21,8,7, 'oczekuje na platnosc', '2017-04-20', 'prosze zapakowac na prezent');
select * from klienci;
select * from loginy;
select * from produkty;
select * from zamowienia;
select rodzaj, karaty from produkty order by karaty;
select * from zamowienia where status_platno= 'anulowane';
UPDATE produkty 
SET 
    cena = '1050'
WHERE
    (rodzaj = 'kolczyki' AND karaty = '0,15'
        AND kruszec = 'srebro');
SELECT 
    id_produktu,
    rodzaj,
    karaty,
    kruszec,
    cena,
    ROUND((cena * 0.85), 2) AS promo_minus_15
FROM
    produkty;
SELECT 
    id_produktu, rodzaj, karaty, kruszec, cena
FROM
    produkty
WHERE
    (karaty > '0,30' AND karaty < '0,60');
SELECT 
    nr_zamowienia,
    status_platno,
    data_zamowienia,
    ADDDATE(data_zamowienia,
        INTERVAL 21 DAY) AS 'termin platnosci'
FROM
    zamowienia;
SELECT 
    *
FROM
    klienci
        NATURAL RIGHT JOIN
    loginy
        NATURAL LEFT JOIN
    zamowienia
        NATURAL LEFT JOIN
    produkty
        NATURAL LEFT JOIN
    platnosci;
SELECT 
    *
FROM
    zamowienia
        NATURAL LEFT JOIN
    produkty
WHERE
    (status_platno = 'zrealizowane')
ORDER BY cena;
SELECT 
    *
FROM
    zamowienia
WHERE
    MONTH(data_zamowienia) = 05
ORDER BY data_zamowienia;
SELECT 
    *,
    CASE
        WHEN (cena > 3500) THEN 'za drogi'
        WHEN (cena < 1500) THEN 'za tani'
        ELSE 'w budżecie'
    END AS budzet
FROM
    produkty
ORDER BY budzet;
select rodzaj, count(*) as suma from produkty group by rodzaj;
select kruszec, count(*) as suma from produkty group by kruszec ;
SELECT 
    id_produktu, rodzaj, karaty, kruszec
FROM
    produkty
WHERE
    karaty < (SELECT 
            karaty
        FROM
            produkty
        WHERE
            (rodzaj = 'pierscionek'
                AND karaty = '0,25')); 
CREATE VIEW bestsellery AS
    SELECT 
        id_produktu, rodzaj, karaty, kruszec, cena
    FROM
        produkty
    WHERE
        stan_mag > 5;
select * from bestsellery;
CREATE VIEW biale_zloto AS
    SELECT 
        id_produktu, rodzaj, karaty, kruszec, cena
    FROM
        produkty
    WHERE
        kruszec = 'biale_zloto';
select * from biale_zloto;
CREATE VIEW klienci_zamowienia AS
    SELECT 
        id_klienta, imie, nazwisko, miasto, rodzaj, cena
    FROM
        klienci
            NATURAL LEFT JOIN
        zamowienia
            NATURAL LEFT JOIN
        produkty;

select * from klienci_zamowienia order by miasto;
drop view klienci_zamowienia;
alter table produkty drop column l_produktow;
select * from produkty;
update produkty set l_produktow= 4 where rodzaj='pierscionek';
update produkty set l_produktow= 3 where rodzaj='bransoletka';
update produkty set l_produktow= 4 where rodzaj='kolczyki';
update produkty set l_produktow= 3 where rodzaj='zawieszka';

alter table produkty add column komentarz text;
select*from produkty;
select id_produktu, rodzaj, stan_mag from produkty;







