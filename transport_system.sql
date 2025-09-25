CREATE TABLE IF NOT EXISTS marshrutlar
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	raqam INTEGER NOT NULL UNIQUE,
	bosh_bekat TEXT NOT NULL UNIQUE,
	oxirgi_bekat TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS avtobuslar
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	raqam TEXT NOT NULL UNIQUE,
	marshrut_id INTEGER,
	yil INTEGER NOT NULL,
	FOREIGN KEY (marshrut_id) REFERENCES marshrutlar (id)
);

CREATE TABLE IF NOT EXISTS haydovchilar
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	ism TEXT NOT NULL,
	familiya TEXT NOT NULL,
	avtobus_id INTEGER,
	litsenziya INTEGER NOT NULL UNIQUE,
	FOREIGN KEY (avtobus_id) REFERENCES avtobuslar (id)
);


INSERT INTO marshrutlar (raqam, bosh_bekat, oxirgi_bekat)
VALUES
(5, 'Chorsu', 'Sergeli'),
(12, 'Yunusobod', 'Chilonzor'),
(23, 'Minor', 'Qoyilq'),
(67, 'Beruniy', 'Parkent'),
(89, 'Olmazor', 'Qibray');

INSERT INTO avtobuslar (raqam, marshrut_id, yil)
VALUES
('01A123BC', 3, 2020),
('02B$56DE', 1, 2019),
('03C789FG', 5, 2021),
('04DO12HI', 2, 2018),
('05E345JK', 4, 2022);

INSERT INTO haydovchilar (ism, familiya, avtobus_id, litsenziya)
VALUES
('Otabek', 'Karimov', 4, 'AB1234567'),
('Jamshid', 'Toshev', 2, 'CD8901234'),
('Rustam', 'Aliev', 1, 'EF5678901'),
('Sardor', 'Yunusov', 5, 'GH2345678'),
('Aziz', 'Valiev', 3, 'U90112345');