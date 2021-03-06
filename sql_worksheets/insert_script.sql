--insert stravnici
INSERT INTO STRAVNIK VALUES (1, 'Michal', 'Moudrý', 'moum02@vse.cz');
INSERT INTO STRAVNIK VALUES (2, 'Michal', 'Černý', 'cerny.michal@gmail.com');
INSERT INTO STRAVNIK VALUES (3, 'Jakub', 'Moudrý', 'jakub.moudry@seznam.cz');
INSERT INTO STRAVNIK VALUES (4, 'Petr', 'Zbořil', 'zborilPetr@outlook.com');
INSERT INTO STRAVNIK VALUES (5, 'Tomáš', 'Novotný', 'novotny.tomas2@gmail.com');
INSERT INTO STRAVNIK VALUES (6, 'Jan', 'Vejdělek', 'jan.veldelek33@seznam.cz');
INSERT INTO STRAVNIK VALUES (7, 'Petr', 'Horák', 'PetrHor@outlook.com');
INSERT INTO STRAVNIK VALUES (8, 'Jan', 'Malý', 'malyja14@sps-prosek.cz');
INSERT INTO STRAVNIK VALUES (9, 'Michael', 'Stárek', 'mstarek@gmail.com');
INSERT INTO STRAVNIK VALUES (10, 'Ondřej', 'Klíma', 'oklima@seznam.cz');

--insert konta
INSERT INTO KONTO VALUES (1, 670, TO_DATE('1.1.2019', 'DD/MM/YYYY'), 1, 1, '#13NFUZ243');
INSERT INTO KONTO VALUES (2, 334, TO_DATE('12.2.2019', 'DD/MM/YYYY'), 1, 1, '#F7FJG7OO');
INSERT INTO KONTO VALUES (3, 1227, TO_DATE('13.3.2019', 'DD/MM/YYYY'), 1, 2, '#2KKFKIS8');
INSERT INTO KONTO VALUES (4, 60, TO_DATE('21.3.2019', 'DD/MM/YYYY'), 1, 3, '#DDFR9573KZK6M');
INSERT INTO KONTO VALUES (5, 200, TO_DATE('11.2.2019', 'DD/MM/YYYY'), 1, 4, '#213KOF79');
INSERT INTO KONTO VALUES (6, 1000, TO_DATE('1.2.2019', 'DD/MM/YYYY'), 1, 5, '#824JFLASI');
INSERT INTO KONTO VALUES (7, 600, TO_DATE('1.2.2019', 'DD/MM/YYYY'), 1, 6, '#A97R8TIJ3J');
INSERT INTO KONTO VALUES (8, 346, TO_DATE('6.3.2019', 'DD/MM/YYYY'), 1, 7, '#39RFEWQJF');
INSERT INTO KONTO VALUES (9, 233, TO_DATE('29.3.2019', 'DD/MM/YYYY'), 1, 8, '#32I59RU9TF');
INSERT INTO KONTO VALUES (10, 896, TO_DATE('23.1.2019', 'DD/MM/YYYY'), 1, 9, '#O3IT9GM');
INSERT INTO KONTO VALUES (11, 548, TO_DATE('16.2.2019', 'DD/MM/YYYY'), 1, 10, '#I432T9IJIG');

--insert dodavatel
INSERT INTO DODAVATEL VALUES (1, 'Maloobchod - Žabka', 'CZ88675420');
INSERT INTO DODAVATEL VALUES (2, 'Pekařství - Fridrich', 'CZ09865461');
INSERT INTO DODAVATEL VALUES (3, 'Obchod - Makro', 'CZ34266719');

--insert zbozi
INSERT INTO ZBOZI VALUES (1, 'Čokoládová sušenka', 20, 1, '#FEJ34JWS8');
INSERT INTO ZBOZI VALUES (2, 'Ovocná sušenka', 15, 1, '#RTJ49S7DKG');
INSERT INTO ZBOZI VALUES (3, 'Bageta s kuřecími stripsy', 40, 2, '#EOR4003');
INSERT INTO ZBOZI VALUES (4, 'Láhev neperlivé vody', 20, 3, '#TRK39ZDSK');

--insert nakup
INSERT INTO NAKUP VALUES (1, TO_DATE('5.3.2019', 'DD/MM/YYYY'), 1, '#I4TKWGIJ');
INSERT INTO NAKUP VALUES (2, TO_DATE('8.3.2019', 'DD/MM/YYYY'), 1, '#0GIWEIGO9');
INSERT INTO NAKUP VALUES (3, TO_DATE('10.3.2019', 'DD/MM/YYYY'), 1, '#OI4TO9JG');
INSERT INTO NAKUP VALUES (4, TO_DATE('5.6.2019', 'DD/MM/YYYY'), 2, '#ZK5OKHZOJIG');
INSERT INTO NAKUP VALUES (5, TO_DATE('5.6.2019', 'DD/MM/YYYY'), 3, '#OH0OEHKF');
INSERT INTO NAKUP VALUES (6, TO_DATE('5.6.2019', 'DD/MM/YYYY'), 4, '#3QRHUHGJ');
INSERT INTO NAKUP VALUES (7, TO_DATE('5.7.2019', 'DD/MM/YYYY'), 5, '#39TI9TJG');
INSERT INTO NAKUP VALUES (8, TO_DATE('5.7.2019', 'DD/MM/YYYY'), 6, '#I3T9OHJZ');
INSERT INTO NAKUP VALUES (9, TO_DATE('5.2.2019', 'DD/MM/YYYY'), 6, '#OTWI40ZIH04');
INSERT INTO NAKUP VALUES (10, TO_DATE('5.2.2019', 'DD/MM/YYYY'), 7, '#OKGW9W%/KP');

--insert nakup_zbozi
INSERT INTO NAKUP_ZBOZI VALUES (1, 1, 2);
INSERT INTO NAKUP_ZBOZI VALUES (1, 3, 1);
INSERT INTO NAKUP_ZBOZI VALUES (1, 2, 2);
INSERT INTO NAKUP_ZBOZI VALUES (2, 2, 3);
INSERT INTO NAKUP_ZBOZI VALUES (3, 2, 5);
INSERT INTO NAKUP_ZBOZI VALUES (4, 3, 1);
INSERT INTO NAKUP_ZBOZI VALUES (5, 3, 2);
INSERT INTO NAKUP_ZBOZI VALUES (6, 4, 1);
INSERT INTO NAKUP_ZBOZI VALUES (6, 3, 1);
INSERT INTO NAKUP_ZBOZI VALUES (7, 1, 4);