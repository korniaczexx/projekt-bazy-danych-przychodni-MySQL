CREATE TABLE Adres(
Adres_Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Ulica varchar(45) not null,
Nr_budynku INT NOT NULL,
Nr_mieszkania INT,
`Kod pocztowy` varchar(6) not null,
Miasto varchar(45) not null
); 


CREATE TABLE Lekarz(
Lekarz_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Imię varchar(20),
Nazwisko varchar(30), 
Pesel char(11) UNIQUE, 
Specjalizacja varchar(45) NOT NULL,
Gabinet INT NOT NULL);


CREATE TABLE Oferta(
Oferta_ID INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
Lekarz_ID INT NOT NULL,
Termin DATE NOT NULL,
Godzina TIME NOT NULL,
Status VARCHAR(15),
constraint Lekarz_fk FOREIGN KEY (Lekarz_ID) REFERENCES Lekarz(Lekarz_ID)
); 



CREATE TABLE Pacjent(
Pacjent_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Adres_ID INT NOT NULL,
Imię varchar(20) NOT NULL,
Nazwisko varchar(30) NOT  NULL, 
Pesel char(11) UNIQUE NOT NULL, 
constraint Adres_fk FOREIGN KEY (Adres_ID) REFERENCES Adres(Adres_ID));


CREATE TABLE Wizyta(
ID INT PRIMARY KEY NOT NULL,
Pacjent_ID INT  NOT NULL, 
Oferta_ID INT NOT NULL,
constraint Pacjent_fk FOREIGN KEY (Pacjent_ID) REFERENCES Pacjent(Pacjent_ID),
constraint Oferta_fk FOREIGN KEY (Oferta_ID) REFERENCES Oferta(Oferta_ID)
);



INSERT INTO Adres VALUES
(1, "Sasankowa", 12, 14,"20-325","Lublin"),
(2, "Kotlarska", 34, 24,"20-825","Lublin"),
(3, "Muzyczna", 90, 34,"20-475","Lublin"),
(4, "Spokojna", 22, 39,"20-222","Lublin"),
(5, "Głośna", 10, 54,"20-400","Lublin"),
(6, "Sasankowa", 15, 94,"20-474","Lublin"),
(7, "Piękna", 100, 54,"20-412","Lublin"),
(8, "Przyjaźni", 14, 84,"20-093","Lublin"),
(9, "Malownicza", 6, 14,"20-783","Lublin"),
(10, "Warszawska", 9, 3,"20-953","Lublin"),
(11, "Urocza", 100, 54,"20-412","Lublin"),
(12, "Przyjaźni", 140, 81,"20-093","Lublin"),
(13, "Górska", 6, 14,"20-783","Lublin"),
(14, "Miłości", 9, 3,"21-953","Warszawa"),
(15, "Spokoju", 19, 13,"21-753","Warszawa");

INSERT INTO Lekarz VALUES
(1,"Jerzy", "Pryszkowski", 67890167834, "Ginekolog", 9),
(2,"Magdalena", "Kocioł", 62367812345, "Ortopeda", 8),
(3, "Kacper", "Brzoza", 45612309834, "Dermatolog", 3),
(4, "Anastazja", "Fiolet", 89012309812, "Psycholog",2),
(5, "Janusz", "Bąk", 57812309812,"Chirurg",6),
(6, "Michał", "Bazibarz", 71209856178,"Okulista",4),
(7, "Bartłomiej", "Lambda", 30918787712,"Gastrolog", 5),
(8, "Natalia", "Koza", 67812309812,"Pediatra",7),
(9, "Przemysław", "Folek", 12309867412, "Kardiolog",1),
(10, "Monika", "Młynarczuk",34512309812, "Onkolog", 10);




INSERT INTO Pacjent VALUES
(1,4,"Adam", "Nowak", 12345678901),
(2,4,"Alina", "Nowak", 12245578901),
(3,7,"Anastazja", "Kowalska",33345678901),
(4,8,"Karolina", "Polska", 12345671901),
(5,9,"Adrianna", "Kot", 12345676601),
(6,10,"Leokadia", "Paciorek", 12345678001),
(7,11,"Monika", "Lowak", 12345478911),
(8,15,"Karol", "Powak", 12342671901),
(9,12,"Adam", "Towal", 12335678901),
(10,13,"Adam", "Adamczuk", 12345671101),
(11,1,"Tomasz", "Pokład", 12342278301),
(12,2,"Szymon", "Włos", 12345678100),
(13,3,"Rafał", "Regał", 12335671901),
(14,5,"Adolf", "Kocieł", 12315678101),
(15,6,"Zuzanna", "Krzesło", 12245278801),
(16,6,"Halina", "Kawa", 12345676901),
(17,10,"Aleksandra", "Kowalska", 62345678901),
(18,11,"Patryk", "Nowakowski", 12347671901),
(19,8,"Magdalena", "Kowalska", 72345679901),
(20,9,"Joanna", "Nowa", 13345678501);









INSERT INTO Oferta VALUES
(1,1, "2023-01-20", "10:00", "dostępna"),
(2,1, "2023-01-20", "11:00", "zajęta"),
(3,1, "2023-01-24", "10:00", "dostępna"),
(4,2, "2023-01-25", "15:00", "zajęta"),
(5,2, "2023-01-27", "14:00", "dostępna"),
(6,2, "2023-01-21", "10:30", "zajęta"),
(7,3, "2023-01-30", "10:00", "dostępna"),
(8,3, "2023-01-17", "12:30", "zajęta"),
(9,3, "2023-01-20", "11:30", "dostępna"),
(10,4, "2023-01-29", "11:00", "zajęta"),
(11,4, "2023-01-20", "11:00", "dostępna"),
(12,4, "2023-01-20", "12:00", "zajeta"),
(13,5, "2023-01-20", "13:00", "dostępna"),
(14,5, "2023-01-20", "14:00", "zajęta"),
(15,5, "2023-04-20", "10:20", "dostępna"),
(16,6, "2023-01-20", "11:30", "zajęta"),
(17,6, "2023-03-20", "10:00", "dostępna"),
(18,6, "2023-01-20", "13:30", "zajęta"),
(19,7, "2023-01-23", "10:00", "dostępna"),
(20,7, "2023-08-20", "15:00", "zajęta"),
(21,7, "2023-01-17", "10:00", "dostępna"),
(22,8, "2023-01-20", "13:30", "zajęta"),
(23,8, "2023-01-15", "11:20", "dostępna"),
(24,8, "2023-01-20", "10:00", "zajęta"),
(25,9, "2023-02-02", "10:00", "dostępna"),
(26,9, "2023-01-20", "13:00", "zajęta"),
(27,9, "2023-03-01", "10:40", "dostępna"),
(28,10, "2023-01-24", "12:10", "zajęta"),
(29,10, "2023-02-20", "10:00", "dostępna"),
(30,10, "2023-02-10", "10:40", "zajęta");



INSERT INTO Wizyta VALUES
(1,2,2),
(2,1,4),
(3,5,6),
(4,7,8),
(5,10,10),
(6,6,12),
(7,3,14),
(8,11,16),
(9,9,18),
(10,8,20),
(11,1,24),
(12,15,26),
(13,17,28),
(14,20,30),
(15,2,22);


SELECT min(Termin) AS "Najwcześniejszy dostępny termin", Godzina FROM Oferta, Lekarz WHERE Lekarz.Lekarz_ID=Oferta.Lekarz_ID AND
Specjalizacja="Pediatra" AND Status="dostępna";


SELECT imię, nazwisko FROM Lekarz WHERE specjalizacja="Pediatra";

SELECT Lekarz.Imię AS "Imię lekarza",  
 				Lekarz.Nazwisko as "Nazwisko lekarza"
			 	,Specjalizacja,	
				Termin ,
				Godzina FROM Lekarz,Oferta,Wizyta, Pacjent WHERE Wizyta.Oferta_ID=Oferta.Oferta_ID AND Lekarz.Lekarz_ID=Oferta.Lekarz_ID AND Pacjent.Pacjent_ID=Wizyta.Pacjent_ID  AND Pacjent.Pesel="12345676601";



SELECT Pacjent.Imię AS "Imię pacjenta",  
 				Pacjent.Nazwisko as "Nazwisko pacjenta"
			 	,Pacjent.Pesel,	
				Termin,
				Godzina FROM Lekarz,Oferta,Wizyta, Pacjent WHERE Wizyta.Oferta_ID=Oferta.Oferta_ID AND Lekarz.Lekarz_ID=Oferta.Lekarz_ID AND Pacjent.Pacjent_ID=Wizyta.Pacjent_ID  AND Lekarz.Lekarz_ID=4;



SELECT Lekarz.Imię AS "Imię lekarza",  
 				Lekarz.Nazwisko as "Nazwisko lekarza"
			 	,Specjalizacja,	
				Termin ,
				Godzina, 
                      status
 FROM Lekarz,Oferta,Wizyta, Pacjent WHERE Wizyta.Oferta_ID=Oferta.Oferta_ID AND Lekarz.Lekarz_ID=Oferta.Lekarz_ID AND Pacjent.Pacjent_ID=Wizyta.Pacjent_ID;









