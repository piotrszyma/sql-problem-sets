#	ZADANIE 1
#	ZADANIE 2

drop table if exists Ksiazka;

create table Ksiazka (
id int(6) UNSIGNED auto_increment primary key,
imie varchar(20) not null,
nazwisko varchar(20) not null,
isbn varchar(13) unique not null,
tytul varchar(25) not null
);

drop table if exists Czytelnik;

create table Czytelnik (
id int(6) unsigned auto_increment primary key,
imie varchar(20) not null,
nazwisko varchar(20) not null,
dataUrodzenia date not null,
pesel varchar(11) unique not null
);


drop table if exists OddzialBiblioteki;

create table OddzialBiblioteki(
id int(6) unsigned auto_increment primary key,
nazwa varchar(40) not null,
adres varchar(50) not null
);

#	ZADANIE 3

drop table if exists Wypozyczyl;

create table Wypozyczyl(
id int(6) unsigned auto_increment primary key,
ksiazka int(6) unsigned not null,
czytelnik int(6) unsigned not null,
biblioteka int(6) unsigned not null,
data_wypozyczenia date not null,
foreign key (ksiazka) references Ksiazka(id),
foreign key (czytelnik) references Czytelnik(id),
foreign key (biblioteka) references OddzialBiblioteki(id)
);



# ZADANIE 4
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Byron","Woodard","5671777645817","nec enim."),("Salvador","Massey","9933781007126","sit amet"),("Angelica","Conley","8377430168218","eu metus."),("Brielle","Riley","2693133294835","eu odio"),("Otto","Gamble","8013663291998","parturient montes,"),("Drake","Calhoun","4424728485720","fringilla mi"),("Hedwig","Forbes","9498279881299","amet, faucibus"),("Roary","Cooper","9237516077834","ante. Maecenas"),("Stephanie","Johnston","7751737360968","rutrum. Fusce"),("Celeste","Norman","0240927226567","risus a");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Macon","Pratt","2420327905693","sed pede"),("Bo","Townsend","0463050317500","porttitor scelerisque"),("Brian","Duke","0083873698518","tristique senectus"),("Xander","Brewer","6459439699679","dui, nec"),("Evan","Hardy","5053699500438","elit. Curabitur"),("Mara","Hicks","7486549583847","urna convallis"),("Gregory","Joyce","6354592547322","porttitor interdum."),("Austin","Small","7564484389602","consectetuer mauris"),("Signe","Finch","7611243877275","quis accumsan"),("Anika","Guthrie","7650614652355","Nunc laoreet");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Hillary","Valdez","1529826264793","rhoncus. Donec"),("Yael","Brown","5087725586913","ultrices. Vivamus"),("Melissa","Guerra","2741478675522","ligula. Aenean"),("Elvis","Cardenas","8490208808527","tellus faucibus"),("Ryan","Barker","6994334861780","elementum, dui"),("Dara","Glenn","2570395166225","feugiat non,"),("Astra","Kim","9683442746761","urna et"),("Carson","Morgan","5861260501108","luctus ut,"),("Abigail","Kelley","9572932134513","eget mollis"),("Jenna","Johnston","8239939916522","ut, sem.");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Azalia","Berger","1859184739740","nibh dolor,"),("Ivan","Cannon","0022153087272","lorem ac"),("Minerva","Hancock","2004212504410","ac turpis"),("Vivian","Pope","1433660238676","lectus. Nullam"),("Nasim","Cabrera","3572361658901","amet luctus"),("Alexa","Mcleod","3248252317209","massa non"),("Laura","Tyson","4794893142565","ut, nulla."),("Yuli","Crawford","9614740104411","at pede."),("Quemby","Powers","2164159711519","vestibulum nec,"),("Nomlanga","Ball","9050518963708","eros. Nam");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Mechelle","Avila","2651265892298","ligula. Nullam"),("Carolyn","Henry","8182346154212","magnis dis"),("Julie","Alston","7430164900389","feugiat non,"),("Zoe","Fox","7841049842953","aliquet diam."),("Marcia","Lane","8122195874652","libero est,"),("Idona","Gay","2348939705976","eleifend. Cras"),("Duncan","Mcmillan","2919684213642","Proin mi."),("Kiayada","Barron","8324783132915","arcu. Nunc"),("Bevis","Munoz","3810524745889","Ut semper"),("Farrah","Abbott","4734784807765","non, egestas");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Deirdre","Graves","7777556085336","nisi sem"),("Kameko","Wood","5406894622103","tellus lorem"),("Stacy","Irwin","8822654748213","elit, a"),("Virginia","Tyler","1437106917916","mauris. Integer"),("Xantha","Baxter","9015219124688","libero. Morbi"),("Macey","Juarez","2245029004211","Maecenas iaculis"),("Jennifer","Justice","3113751961729","amet risus."),("Lamar","Petersen","7875471068187","senectus et"),("Keane","Lawrence","8650963478707","condimentum eget,"),("Aretha","Pace","8453244688318","et malesuada");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Dominique","Winters","1930935286204","mauris sagittis"),("Camden","Mcintyre","3991777029195","Cras dictum"),("Olga","Petty","9890496613507","rhoncus id,"),("Quemby","Reed","2977078614829","ut, nulla."),("Briar","Kline","4528714216437","quis arcu"),("Lysandra","Snider","4494705304264","rutrum eu,"),("Herman","Franklin","5603359866469","tortor. Nunc"),("Carol","Dillon","4336493135680","vel pede"),("Camilla","Smith","9047665282082","diam. Pellentesque"),("Kibo","Buckley","1663099853155","Sed id");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Kevin","Hooper","2489646693712","Pellentesque habitant"),("Bruce","Bullock","3775766401724","a purus."),("Nolan","Hogan","2345639459158","facilisis facilisis,"),("Thane","Wyatt","1735732575312","ullamcorper viverra."),("Scott","Kirkland","7509079802474","laoreet ipsum."),("Lance","Deleon","8211372350661","nisl. Maecenas"),("Madeline","Ward","5495447551970","at risus."),("Graiden","Campbell","3627581328421","elit, pharetra"),("Kirsten","Nash","5172287978926","Maecenas mi"),("Abra","Cain","0088578875133","ante blandit");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Lucy","Lynn","0814876024565","at arcu."),("Kristen","Ballard","9409146274821","facilisis vitae,"),("Gemma","Ashley","1269576278213","mi. Duis"),("Remedios","Woods","1639031652027","aliquet. Proin"),("India","Davis","2000274288200","primis in"),("MacKensie","Bernard","0272153579761","Suspendisse non"),("Graiden","Carver","4148946735488","interdum feugiat."),("Jonas","Clay","2718257353625","ullamcorper. Duis"),("Ray","Elliott","9323406937436","a feugiat"),("Ava","Tyson","0177740026624","et malesuada");
INSERT INTO `Ksiazka` (`imie`,`nazwisko`,`isbn`,`tytul`) VALUES ("Oliver","Hoover","5009757659888","mauris id"),("Ina","Todd","9055606397383","dictum augue"),("Carolyn","Wilder","0321885101854","accumsan neque"),("Jillian","James","2243816712315","Fusce dolor"),("Reagan","Hansen","5564356720898","fringilla euismod"),("Nell","Becker","7689245335661","nec, mollis"),("Reece","Hopper","5819771400149","Donec non"),("Carl","Arnold","0023354179547","ad litora"),("Tamara","Dean","6289662256009","Nulla semper"),("Malcolm","Duran","1911587132540","lorem, sit");

INSERT INTO `Czytelnik` (`imie`,`nazwisko`,`dataUrodzenia`,`pesel`) VALUES ("Anika","Lang","2016-10-26","40822553388"),("Aimee","Cleveland","2016-03-16","86324892071"),("Camden","Hendricks","2017-07-18","86735234406"),("Idona","Acevedo","2016-11-02","80982793316"),("Barbara","Noel","2016-10-22","28098251748"),("Levi","Calhoun","2016-07-04","48578380786"),("Shaeleigh","Berger","2017-08-10","20469287059"),("Barry","Rush","2017-08-04","52607592270"),("Tana","Kline","2016-04-08","62345746684"),("Guinevere","Golden","2017-02-04","53774794930");
INSERT INTO `Czytelnik` (`imie`,`nazwisko`,`dataUrodzenia`,`pesel`) VALUES ("Vernon","Heath","2017-09-28","83126709008"),("Amanda","Bowen","2016-01-28","33575829249"),("Kaye","Dale","2016-04-09","99996490994"),("Stuart","Chavez","2016-01-07","88930225782"),("Dean","Dotson","2016-07-24","05420047048"),("Macey","Reyes","2016-09-20","42698374868"),("Frances","Burris","2016-02-09","03998630683"),("Kimberley","Monroe","2017-06-20","52793601295"),("Flavia","Floyd","2015-12-13","75946024477"),("Dacey","Humphrey","2017-07-29","26647886402");
INSERT INTO `Czytelnik` (`imie`,`nazwisko`,`dataUrodzenia`,`pesel`) VALUES ("Cara","Huffman","2017-07-05","80732223269"),("Aubrey","Goodman","2016-12-09","31112023289"),("Rae","Wong","2017-06-01","48587559988"),("Farrah","Sampson","2017-02-20","17260510202"),("Hannah","Russo","2016-04-18","47726551765"),("Abra","Howe","2016-03-30","39837374746"),("Ira","Page","2016-07-30","57129026193"),("Shea","Curtis","2015-12-11","15125522790"),("Kendall","Miranda","2015-12-08","23099038172"),("Slade","Molina","2015-12-16","63322406661");
INSERT INTO `Czytelnik` (`imie`,`nazwisko`,`dataUrodzenia`,`pesel`) VALUES ("Demetria","Lawson","2017-06-17","87134392828"),("Indira","Watkins","2017-05-18","75046599456"),("Hector","Hampton","2016-07-02","77936303107"),("Ivory","Hardy","2017-04-18","81485111827"),("Kimberly","Mcdonald","2016-06-16","62680781942"),("Carissa","Frazier","2016-11-16","84533282284"),("Rhonda","Farmer","2016-01-07","08144690565"),("Adara","Snow","2016-01-21","52834256614"),("Uriah","Ballard","2017-07-22","72216944791"),("Ava","Hill","2017-10-21","07594290892");
INSERT INTO `Czytelnik` (`imie`,`nazwisko`,`dataUrodzenia`,`pesel`) VALUES ("Neve","Osborne","2017-07-30","86907209185"),("Xavier","Cole","2017-06-23","60923889483"),("Minerva","Higgins","2017-08-03","96238192168"),("Wallace","Johnston","2017-10-08","50473653429"),("Teegan","Wong","2017-07-06","63194475556"),("Branden","Moss","2017-06-13","92634232758"),("Neil","Nieves","2016-09-30","10970919555"),("Mohammad","Leblanc","2017-02-04","56549403311"),("Mary","Williams","2016-12-10","48418576071"),("Sylvia","Pittman","2017-06-03","11890691494");

INSERT INTO `oddzialbiblioteki` (`nazwa`, `adres`) VALUES ("Biblioteka nr 1", "Traugutta 5, 50-120 Wrocław");
INSERT INTO `oddzialbiblioteki` (`nazwa`, `adres`) VALUES ("Biblioteka nr 2", "PCK 20, 94-200 Opole");
INSERT INTO `oddzialbiblioteki` (`nazwa`, `adres`) VALUES ("Niepubliczna Biblioteka nr 1", "Armii Krajowej 23, 42-200 Częstochowa");
INSERT INTO `oddzialbiblioteki` (`nazwa`, `adres`) VALUES ("Biblioteka nr 3", "Konopnickiej 2/5, 11-202 Opole");
INSERT INTO `oddzialbiblioteki` (`nazwa`, `adres`) VALUES ("Niepubliczna Biblioteka nr 2", "Komandorska 125, 21-120 Warszawa");

#ZADANIE 6

drop table if exists KsiazkaWOddziale;

create table KsiazkaWOddziale(
ksiazka int(6) unsigned not null,
biblioteka int(6) unsigned not null,
data_dodania date not null,
foreign key (ksiazka) references Ksiazka(id),
foreign key (biblioteka) references OddzialBiblioteki(id),
check (data_dodania != "")
);

insert into `KsiazkaWOddziale` (`ksiazka`, `biblioteka`, `data_dodania`) values (1, 1, "");

#ZADANIE 7
INSERT INTO `oddzialbiblioteki` (`nazwa`, `adres`) VALUES ("Niepubliczna Biblioteka nr 3", "Wojowników 125, 22-222 Zielona Góra");

