mysql> create database Vol;
Query OK, 1 row affected (0.02 sec)

mysql> use Vol;
Database changed
mysql> create table Avion(
    -> ID_A int primary key,
    -> NomAvion varchar(10),
    -> Capacite int);
Query OK, 0 rows affected (0.06 sec)

mysql> create table Pilote(
    -> ID_P int primary key,
    -> NomPilote varchar(30),
    -> Adresse varchar(10));
Query OK, 0 rows affected (0.04 sec)

mysql> create table Vol(
    -> ID_V varchar(7),
    -> ID_A int,
    -> ID_P int,
    -> VilleDepart varchar(10),
    -> VilleArrivee varchar(10),
    -> HeureDepart varchar(5),
    -> HeureArrivee varchar(5),
    -> foreign key (ID_A) references avion(ID_A),
    -> foreign key (ID_P) references pilote(ID_P));
Query OK, 0 rows affected (0.06 sec)

mysql> alter table pilote
    -> modify column adresse varchar(30);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc avion;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ID_A     | int         | NO   | PRI | NULL    |       |
| NomAvion | varchar(10) | YES  |     | NULL    |       |
| Capacite | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> desc pilote;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| ID_P      | int         | NO   | PRI | NULL    |       |
| NomPilote | varchar(30) | YES  |     | NULL    |       |
| adresse   | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc vol;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| ID_V         | varchar(7)  | YES  |     | NULL    |       |
| ID_A         | int         | YES  | MUL | NULL    |       |
| ID_P         | int         | YES  | MUL | NULL    |       |
| VilleDepart  | varchar(10) | YES  |     | NULL    |       |
| VilleArrivee | varchar(10) | YES  |     | NULL    |       |
| HeureDepart  | varchar(5)  | YES  |     | NULL    |       |
| HeureArrivee | varchar(5)  | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table vol
    -> add primary key (ID_V);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc vol;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| ID_V         | varchar(7)  | NO   | PRI | NULL    |       |
| ID_A         | int         | YES  | MUL | NULL    |       |
| ID_P         | int         | YES  | MUL | NULL    |       |
| VilleDepart  | varchar(10) | YES  |     | NULL    |       |
| VilleArrivee | varchar(10) | YES  |     | NULL    |       |
| HeureDepart  | varchar(5)  | YES  |     | NULL    |       |
| HeureArrivee | varchar(5)  | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table pilote
    -> rename column adresse to Adresse;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc pilote;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| ID_P      | int         | NO   | PRI | NULL    |       |
| NomPilote | varchar(30) | YES  |     | NULL    |       |
| Adresse   | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table avion
    -> add column Localite varchar(10);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc avion;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ID_A     | int         | NO   | PRI | NULL    |       |
| NomAvion | varchar(10) | YES  |     | NULL    |       |
| Capacite | int         | YES  |     | NULL    |       |
| Localite | varchar(10) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table avion
    -> modify column NomAvion varchar(15);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into avion
    -> values
    -> (1, 'Airbus 1320', 150, 'Casa'),
    -> (2, 'ATR 72', 70, 'Agadir'),
    -> (3, 'Embraer E190', 100, 'Tanger'),
    -> (4, 'Boeing 737', 180, 'Marrakech');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into pilote
    -> values
    -> (1, 'Ahmed El Mansour', 'Hay Riad Rabat'),
    -> (2, 'Fatima Ouali', 'Hay Hassani Casablanca'),
    -> (3, 'Youssef Ben Ali', 'Azli Marrakech');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into avion
    -> values
    -> (5, 'Airbus A330', 250, 'Rabat'),
    -> (6, 'Boeing 777', 300, 'Fes'),
    -> (7, 'Airbus A340', 350, 'Essaouira');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> desc vol;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| ID_V         | varchar(7)  | NO   | PRI | NULL    |       |
| ID_A         | int         | YES  | MUL | NULL    |       |
| ID_P         | int         | YES  | MUL | NULL    |       |
| VilleDepart  | varchar(10) | YES  |     | NULL    |       |
| VilleArrivee | varchar(10) | YES  |     | NULL    |       |
| HeureDepart  | varchar(5)  | YES  |     | NULL    |       |
| HeureArrivee | varchar(5)  | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into vol
    -> values
    -> ('ABC123', 7, 1, 'Casa', 'Paris', '8:00', '12:00'),
    -> ('DEF456', 6, 2, 'Marrakech', 'Rabat', '12:00', '13:00'),
    -> ('IT100', 5, 1, 'Casa', 'Dakhla', '3:00', '5:30'),
    -> ('IT104', 6, 3, 'Rabat', 'Madrid', '16:00', '19:00');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into pilote
    -> values
    -> (10, 'Kbbour Hicham', 'Mhamid Marrakech');
Query OK, 1 row affected (0.02 sec)

mysql> select * from pilote;
+------+------------------+------------------------+
| ID_P | NomPilote        | Adresse                |
+------+------------------+------------------------+
|    1 | Ahmed El Mansour | Hay Riad Rabat         |
|    2 | Fatima Ouali     | Hay Hassani Casablanca |
|    3 | Youssef Ben Ali  | Azli Marrakech         |
|   10 | Kbbour Hicham    | Mhamid Marrakech       |
+------+------------------+------------------------+
4 rows in set (0.00 sec)

mysql> select * from avion;
+------+--------------+----------+-----------+
| ID_A | NomAvion     | Capacite | Localite  |
+------+--------------+----------+-----------+
|    1 | Airbus 1320  |      150 | Casa      |
|    2 | ATR 72       |       70 | Agadir    |
|    3 | Embraer E190 |      100 | Tanger    |
|    4 | Boeing 737   |      180 | Marrakech |
|    5 | Airbus A330  |      250 | Rabat     |
|    6 | Boeing 777   |      300 | Fes       |
|    7 | Airbus A340  |      350 | Essaouira |
+------+--------------+----------+-----------+
7 rows in set (0.00 sec)

mysql> select * from vol;
+--------+------+------+-------------+--------------+-------------+--------------+
| ID_V   | ID_A | ID_P | VilleDepart | VilleArrivee | HeureDepart | HeureArrivee |
+--------+------+------+-------------+--------------+-------------+--------------+
| ABC123 |    7 |    1 | Casa        | Paris        | 8:00        | 12:00        |
| DEF456 |    6 |    2 | Marrakech   | Rabat        | 12:00       | 13:00        |
| IT100  |    5 |    1 | Casa        | Dakhla       | 3:00        | 5:30         |
| IT104  |    6 |    3 | Rabat       | Madrid       | 16:00       | 19:00        |
+--------+------+------+-------------+--------------+-------------+--------------+
4 rows in set (0.00 sec)

mysql> insert into avion
    -> values
    -> (100, 'AIRBUS', 300, 'Rabat'),
    -> (101, 'B737', 250, 'Casa'),
    -> (102, 'B737', 220, 'Rabat');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> -- Afficher tous les avions par ordre croissant sur le nom --
mysql> select * from avion
    -> order by NomAvion;
+------+--------------+----------+-----------+
| ID_A | NomAvion     | Capacite | Localite  |
+------+--------------+----------+-----------+
|  100 | AIRBUS       |      300 | Rabat     |
|    1 | Airbus 1320  |      150 | Casa      |
|    5 | Airbus A330  |      250 | Rabat     |
|    7 | Airbus A340  |      350 | Essaouira |
|    2 | ATR 72       |       70 | Agadir    |
|  101 | B737         |      250 | Casa      |
|  102 | B737         |      220 | Rabat     |
|    4 | Boeing 737   |      180 | Marrakech |
|    6 | Boeing 777   |      300 | Fes       |
|    3 | Embraer E190 |      100 | Tanger    |
+------+--------------+----------+-----------+
10 rows in set (0.00 sec)

mysql> -- Afficher les noms et les capacités des avions --
mysql> select NomAvion, Capacite from avion;
+--------------+----------+
| NomAvion     | Capacite |
+--------------+----------+
| Airbus 1320  |      150 |
| ATR 72       |       70 |
| Embraer E190 |      100 |
| Boeing 737   |      180 |
| Airbus A330  |      250 |
| Boeing 777   |      300 |
| Airbus A340  |      350 |
| AIRBUS       |      300 |
| B737         |      250 |
| B737         |      220 |
+--------------+----------+
10 rows in set (0.00 sec)

mysql> -- Afficher les localités des avions sans redondance --
mysql> select distinct localite from avion;
+-----------+
| localite  |
+-----------+
| Casa      |
| Agadir    |
| Tanger    |
| Marrakech |
| Rabat     |
| Fes       |
| Essaouira |
+-----------+
7 rows in set (0.01 sec)

mysql> -- Afficher les avions dont la localité est Rabat ou Casa --
mysql> select * from avion
    -> where localite in ('Rabat' , 'Casa');
+------+-------------+----------+----------+
| ID_A | NomAvion    | Capacite | Localite |
+------+-------------+----------+----------+
|    1 | Airbus 1320 |      150 | Casa     |
|    5 | Airbus A330 |      250 | Rabat    |
|  100 | AIRBUS      |      300 | Rabat    |
|  101 | B737        |      250 | Casa     |
|  102 | B737        |      220 | Rabat    |
+------+-------------+----------+----------+
5 rows in set (0.00 sec)

mysql> -- Modifier la capacité de l'avion num 101, la nouvelle capacité est 220 --
mysql> update avion
    -> set capacite = 220 where ID_A = 101 ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from avion;
+------+--------------+----------+-----------+
| ID_A | NomAvion     | Capacite | Localite  |
+------+--------------+----------+-----------+
|    1 | Airbus 1320  |      150 | Casa      |
|    2 | ATR 72       |       70 | Agadir    |
|    3 | Embraer E190 |      100 | Tanger    |
|    4 | Boeing 737   |      180 | Marrakech |
|    5 | Airbus A330  |      250 | Rabat     |
|    6 | Boeing 777   |      300 | Fes       |
|    7 | Airbus A340  |      350 | Essaouira |
|  100 | AIRBUS       |      300 | Rabat     |
|  101 | B737         |      220 | Casa      |
|  102 | B737         |      220 | Rabat     |
+------+--------------+----------+-----------+
10 rows in set (0.00 sec)

mysql> -- Supprimer les avions dont la capacité est inférieure à 200 --
mysql> delete from avion where capacite < 200 ;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from avion ;
+------+-------------+----------+-----------+
| ID_A | NomAvion    | Capacite | Localite  |
+------+-------------+----------+-----------+
|    5 | Airbus A330 |      250 | Rabat     |
|    6 | Boeing 777  |      300 | Fes       |
|    7 | Airbus A340 |      350 | Essaouira |
|  100 | AIRBUS      |      300 | Rabat     |
|  101 | B737        |      220 | Casa      |
|  102 | B737        |      220 | Rabat     |
+------+-------------+----------+-----------+
6 rows in set (0.00 sec)

mysql> -- Afficher la capacité maximale, minimale, moyenne des avions --
mysql> select max(capacite) as Capacite_Max , min(capacite) as Capacite_Min, avg(Capacite) as Moyenne_Capacite from avion;
+--------------+--------------+------------------+
| Capacite_Max | Capacite_Min | Moyenne_Capacite |
+--------------+--------------+------------------+
|          350 |          220 |         273.3333 |
+--------------+--------------+------------------+
1 row in set (0.01 sec)

mysql> -- Afficher les données des avions dont la capacité est la plus basse --
mysql> select * from avion
    -> where capacite = (select min(capacite) from avion) ;
+------+----------+----------+----------+
| ID_A | NomAvion | Capacite | Localite |
+------+----------+----------+----------+
|  101 | B737     |      220 | Casa     |
|  102 | B737     |      220 | Rabat    |
+------+----------+----------+----------+
2 rows in set (0.00 sec)

mysql> -- Afficher les données des avions dont la capacité est supérieure à la capacité moyenne --
mysql> select * from avion
    -> where capacite > (select avg(capacite) from avion) ;
+------+-------------+----------+-----------+
| ID_A | NomAvion    | Capacite | Localite  |
+------+-------------+----------+-----------+
|    6 | Boeing 777  |      300 | Fes       |
|    7 | Airbus A340 |      350 | Essaouira |
|  100 | AIRBUS      |      300 | Rabat     |
+------+-------------+----------+-----------+
3 rows in set (0.01 sec)

mysql> select * from vol;
+--------+------+------+-------------+--------------+-------------+--------------+
| ID_V   | ID_A | ID_P | VilleDepart | VilleArrivee | HeureDepart | HeureArrivee |
+--------+------+------+-------------+--------------+-------------+--------------+
| ABC123 |    7 |    1 | Casa        | Paris        | 8:00        | 12:00        |
| DEF456 |    6 |    2 | Marrakech   | Rabat        | 12:00       | 13:00        |
| IT100  |    5 |    1 | Casa        | Dakhla       | 3:00        | 5:30         |
| IT104  |    6 |    3 | Rabat       | Madrid       | 16:00       | 19:00        |
+--------+------+------+-------------+--------------+-------------+--------------+
4 rows in set (0.00 sec)

mysql> -- Afficher le nom et l'adresse des pilotes assurant les vols IT100 et IT104 --
mysql> select ID_V , NomPilote, Adresse from vol join pilote
    -> where ID_V in ('IT100', 'IT104') and vol.ID_P = pilote.ID_P ;
+-------+------------------+----------------+
| ID_V  | NomPilote        | Adresse        |
+-------+------------------+----------------+
| IT100 | Ahmed El Mansour | Hay Riad Rabat |
| IT104 | Youssef Ben Ali  | Azli Marrakech |
+-------+------------------+----------------+
2 rows in set (0.00 sec)

mysql> -- Afficher les numéros des pilotes qui sont en service --
mysql> select ID_P from pilote
    -> where ID_P in (select ID_P from vol);
+------+
| ID_P |
+------+
|    1 |
|    2 |
|    3 |
+------+
3 rows in set (0.01 sec)

mysql> -- Afficher les numéros des pilotes qui ne sont pas en service --
mysql> select ID_P from pilote
    -> where ID_P not in (select ID_P from vol);
+------+
| ID_P |
+------+
|   10 |
+------+
1 row in set (0.01 sec)

mysql> select ID_A from avion
    -> where NomAvion = 'AIRBUS';
+------+
| ID_A |
+------+
|  100 |
+------+
1 row in set (0.00 sec)

mysql> select ID_P from vol
    -> where ID_A = 100;
Empty set (0.00 sec)

mysql> insert into vol
    -> values
    -> ('IT300', 100, 2, 'Tanger', 'Rabat', '10:15', '12:30');
Query OK, 1 row affected (0.01 sec)

mysql> select ID_P from vol
    -> where ID_A = 100;
+------+
| ID_P |
+------+
|    2 |
+------+
1 row in set (0.00 sec)

mysql> -- Afficher les noms des pilotes qui conduisent un AIRBUS --
mysql> select ID_P, NomPilote from pilote
    -> where ID_P = 2;
+------+--------------+
| ID_P | NomPilote    |
+------+--------------+
|    2 | Fatima Ouali |
+------+--------------+
1 row in set (0.00 sec)

mysql>
