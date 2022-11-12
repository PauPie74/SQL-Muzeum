CREATE TABLE artysta (
  id_artysta INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  imie VARCHAR(50),
  nazwisko VARCHAR(50),
  pseudonim VARCHAR(50),
  rok_urodzenia INTEGER,
  rok_smierci INTEGER
);

CREATE TABLE instytucja (
  id_instytucja INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  nazwa VARCHAR(255) NOT NULL,
  miasto VARCHAR(50) NOT NULL,
  kraj VARCHAR(50) NOT NULL
);

CREATE TABLE zakup (
  id_zakup INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_instytucja INTEGER NOT NULL REFERENCES instytucja(id_instytucja),
  cena MONEY
);

CREATE TABLE osoba_prywatna (
  id_osoba_prywatna INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  imie VARCHAR(50),
  nazwisko VARCHAR(50)
);

CREATE TABLE dar (
  id_dar INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_instytucja INTEGER REFERENCES instytucja(id_instytucja),
  id_osoba_prywatna INTEGER REFERENCES osoba_prywatna(id_osoba_prywatna),
);

CREATE TABLE nabycie_eksponatu (
  id_nabycie_eksponatu INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_zakup INTEGER REFERENCES zakup(id_zakup),
  id_dar INTEGER REFERENCES dar(id_dar),
  data_nabycia DATE,
  notatka VARCHAR(511)
);

CREATE TABLE pochodzenie (
  id_pochodzenie INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  region VARCHAR(50),
  miasto VARCHAR(50),
  kraj VARCHAR(50)
);

CREATE TABLE eksponat (
  id_eksponat INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  tytul VARCHAR(255) NOT NULL,
  id_artysta INTEGER REFERENCES artysta(id_artysta),
  typ VARCHAR(255) NOT NULL,
  tworzywo_technika VARCHAR(50),
  rok_powstania INTEGER,
  wiek_powstania VARCHAR(15),
  epoka_styl VARCHAR(50),
  id_pochodzenie INTEGER REFERENCES pochodzenie(id_pochodzenie),
  wysokosc_cm INTEGER,
  szerokosc_cm INTEGER,
  id_nabycie_eksponatu INTEGER REFERENCES nabycie_eksponatu(id_nabycie_eksponatu)
);

CREATE TABLE magazynowanie (
  id_magazynowanie INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  powod VARCHAR(511) NOT NULL
);

CREATE TABLE wypozyczenie (
  id_wypozyczenie INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_instytucja INTEGER NOT NULL REFERENCES instytucja(id_instytucja)
);

CREATE TABLE galeria (
  id_galeria INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  nazwa VARCHAR(255)
);

CREATE TABLE sala (
  id_sala INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_galeria INTEGER NOT NULL REFERENCES galeria(id_galeria)
);

CREATE TABLE wystawa (
  id_wystawa INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_sala INTEGER NOT NULL REFERENCES sala(id_sala)
);

CREATE TABLE zdarzenie_eksponatu (
  id_zdarzenie_eksponatu INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_eksponat INTEGER NOT NULL REFERENCES eksponat(id_eksponat),
  id_magazynowanie INTEGER REFERENCES magazynowanie(id_magazynowanie),
  id_wypozyczenie INTEGER REFERENCES wypozyczenie(id_wypozyczenie),
  id_wystawa INTEGER REFERENCES wystawa(id_wystawa),
  data_od DATE NOT NULL,
  data_do DATE
);
