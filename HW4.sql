create table if not exists Genres(
  id serial primary key,
  name varchar(50) unique not null
);

create table if not exists Performers(
  id serial primary key,
  name varchar(50) not null
);

create table if not exists Genres_Performers(
  genre_id integer references Genres(id),
  performer_id integer references Performers(id),
  constraint pk1 primary key (genre_id, performer_id) 
);

create table if not exists Albums(
  id serial primary key,  
  name varchar(50) not null,
  year_ integer not null check(year_ > 0)
);

create table if not exists Performers_Albums(
  performer_id integer references Performers(id),
  album_id integer references Albums(id),
  constraint pk2 primary key (performer_id, album_id) 
);

create table if not exists Tracks(
  id serial primary key,
  album_id integer references Albums(id), --may be null
  name varchar(50) not null,
  duration numeric not null check(duration > 0)
);

create table if not exists Collections(
  id serial primary key,  
  name varchar(50) not null,
  year_ integer not null check(year_ > 0)
);

create table if not exists Collections_Tracks(
  collection_id integer references Collections(id),
  track_id integer references Tracks(id),
  constraint pk3 primary key (collection_id, track_id) 
);

INSERT INTO Performers(name)
	VALUES  ('Maksim'),
			('Tatu'),
			('Alla Pugacheva'),
			('Verka Serduchka'),
			('Baskov'),
			('Ben Laden'),
			('Igor Nikolaev'),
			('Djigurda');
INSERT INTO Genres(name)
	VALUES  ('Pop'),
			('Rock'),
			('Hip Hop'),
			('Shanson'),
			('Hardbas');
INSERT INTO	Genres_Performers
	VALUES  (1,1),
			(3,2),
			(1,3),
			(4,5),
			(5,4),
			(1,4),
			(4,6),
			(5,7),
			(2,8);
INSERT INTO Albums(name, year_)
	VALUES  ('Kamnem po golove', 1990),
			('Herzeleid', 1992),
			('Vot te krest', 1993),
			('Bratan', 1999),
			('White roses', 2001),
			('Six nine', 2018),
			('Akbar', 2001),
			('Yellow wolley', 2008);
INSERT INTO	Performers_Albums
	VALUES  (1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,6),
			(7,7),
			(8,8),
			(1,6);
INSERT INTO Tracks(album_id, name, duration)
	VALUES  (1, 'Eli myaso mujiki', 210),
			(2, 'My ohotnik', 120),
			(3, 'Durak i molniya', 170),
			(4, 'Otec i maski', 250),
			(5, 'Valet i dama', 72),
			(6, 'Sadovnik', 94),
			(6, 'Mariya', 252),
			(5, 'My leshiy', 198),
			(4, 'Prignu so skali', 254),
			(3, 'Motocycle', 210),
			(2, 'Pesnya mushketerov', 266),
			(1, 'My leskik', 210),
			(2, 'Sapogi', 210),
			(3, 'Kamnem po golove', 312),
			(4, 'Bluzhdaut teni', 241),
			(5, 'Dva vora i moneta', 123);
INSERT INTO Collections(name, year_)
	VALUES  ('2000x', 2001),
			('1990x', 2002),
			('1980x', 2003),
			('Best', 2004),
			('Hot', 2000),
			('New', 2006),
			('Legend', 2005),
			('Most', 2011);			
INSERT INTO	Collections_Tracks
	VALUES  (1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,6),
			(7,7),
			(8,8),
			(1,9),
			(2,10),
			(3,11),
			(4,12),
			(5,13),
			(6,14),
			(7,16),
			(8,15);	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
			