create table binaadres(binaID number(6) primary key,bolge varchar2(20) NOT NULL,il varchar2(20) NOT NULL,ilce varchar2(20) NOT NULL,mahalle varchar2(20) NOT NULL,sokak varchar2(20) NOT NULL,kapıno number(3) NOT NULL,binayasi number(3),katsayisi number(3)); 

create table konutozellik(konutID number(6) primary key,binaID number(6),odasayisi number(3),salonsayisi number(3),banyosayisi number(3),fiyat number(11,2),fiyatID number(1),m2 number(5),turID number(1),daireno number(3),bulundugukat number(3),mulkiyetID number(1),mulktipiID number(1),kimlikNo char(11));

create table turu(turID number(1) primary key,tur varchar2(15));

create table iklimlendirmeturu(iklimID number(2) primary key,tur varchar2(25));

create table iklimlendirme(konutID number(6),iklimID number(2));

create table mulkiyet(mulkiyetID number(1) primary key,tur varchar2(10));

create table fiyatturu(fiyatID number(1) primary key,tur varchar2(10));

create table binaozelligi(binaozelligiID number(1) primary key,tur varchar2(10));

create table mulktipi(mulktipiID number(1) primary key,tur varchar2(12),binaozelligiID number(1));

create table sahibi(kimliknumarasi char(11) primary key,adi varchar(20),soyadi varchar(20),dogumtarihi date,telefonno char(10));


alter table konutozellik add foreign key(binaID) references binaadres(binaID);
alter table konutozellik add foreign key(fiyatID) references fiyatturu(fiyatID);
alter table konutozellik add foreign key(turID) references turu(turID);
alter table konutozellik add foreign key(mulkiyetID) references mulkiyet(mulkiyetID);
alter table konutozellik add foreign key(mulktipiID) references mulktipi(mulktipiID);
alter table konutozellik add foreign key(kimlikNo) references sahibi(kimliknumarasi);


alter table iklimlendirme add foreign key(konutID) references konutozellik(konutID);
alter table iklimlendirme add foreign key(iklimID) references iklimlendirmeturu(iklimID);

alter table mulktipi add foreign key(binaozelligiID) references binaozelligi(binaozelligiID);

create sequence binaID nominvalue nomaxvalue nocache;
create sequence konutID nominvalue nomaxvalue nocache;
create sequence turID nominvalue nomaxvalue nocache;
create sequence iklimID nominvalue nomaxvalue nocache;
create sequence mulkiyetID nominvalue nomaxvalue nocache;
create sequence fiyatID nominvalue nomaxvalue nocache;
create sequence binaozelligiID nominvalue nomaxvalue nocache;
create sequence mulktipiID nominvalue nomaxvalue nocache;

INSERT INTO binaadres VALUES (binaID.NEXTVAL, 'Marmara', 'İstanbul', 'Üsküdar', 'Barbaros', 'Nuh Kuyusu', 6, 12, 4);
INSERT INTO binaadres VALUES (binaID.NEXTVAL, 'Marmara', 'İstanbul', 'Ataşehir', 'Fetih', 'Tahralı', 16, 8, 14);
INSERT INTO binaadres VALUES (binaID.NEXTVAL, 'Marmara', 'İstanbul', 'Ümraniye', 'Saray', 'Site Yolu', 5, 11, 12);
INSERT INTO binaadres VALUES (binaID.NEXTVAL, 'Karadeniz', 'Samsun', 'Bafra', 'Tabakhane', 'Şıhlar', 10, 38, 5);
INSERT INTO binaadres VALUES (binaID.NEXTVAL, 'Karadeniz', 'Samsun', 'Bafra', 'Mevlana', 'Fırtına', 1, 23, 5);
INSERT INTO binaadres VALUES (binaID.NEXTVAL, 'Akdeniz', 'Antalya', 'Kepez', 'Kuzeyyaka', '2553', 3, 26, 4);

INSERT INTO turu VALUES (turID.NEXTVAL, 'Konut');
INSERT INTO turu VALUES (turID.NEXTVAL, 'İşyeri');

INSERT INTO iklimlendirmeturu VALUES (iklimID.NEXTVAL, 'Klima');
INSERT INTO iklimlendirmeturu VALUES (iklimID.NEXTVAL, 'Merkezi Sistem');
INSERT INTO iklimlendirmeturu VALUES (iklimID.NEXTVAL, 'Kombi');
INSERT INTO iklimlendirmeturu VALUES (iklimID.NEXTVAL, 'Doğalgaz Sobası');
INSERT INTO iklimlendirmeturu VALUES (iklimID.NEXTVAL, 'Elektrikli Isıtıcı' );
INSERT INTO iklimlendirmeturu VALUES (iklimID.NEXTVAL, 'Soba');

INSERT INTO mulkiyet VALUES  (mulkiyetID.NEXTVAL, 'Satılık');
INSERT INTO mulkiyet VALUES  (mulkiyetID.NEXTVAL, 'Kiralık');
INSERT INTO mulkiyet VALUES  (mulkiyetID.NEXTVAL, 'Hiçbiri');

INSERT INTO fiyatturu VALUES (fiyatID.NEXTVAL, 'TL'); 
INSERT INTO fiyatturu VALUES (fiyatID.NEXTVAL, 'EURO');
INSERT INTO fiyatturu VALUES (fiyatID.NEXTVAL, 'DOLAR');

INSERT INTO binaozelligi VALUES (binaozelligiID.NEXTVAL, 'Müstakil');
INSERT INTO binaozelligi VALUES (binaozelligiID.NEXTVAL, 'Apartman');

INSERT INTO mulktipi VALUES (mulktipiID.NEXTVAL, 'Villa', 1);
INSERT INTO mulktipi VALUES (mulktipiID.NEXTVAL, 'Çiftlik Evi', 1);
INSERT INTO mulktipi VALUES (mulktipiID.NEXTVAL, 'Yazlık', 1);
INSERT INTO mulktipi VALUES (mulktipiID.NEXTVAL, 'Residence', 2);
INSERT INTO mulktipi VALUES (mulktipiID.NEXTVAL, 'Daire', 2);

INSERT INTO sahibi VALUES ('44770843552', 'Ahmet', 'Kaygılı', '02.MAR.1962', '5546674392');
INSERT INTO sahibi VALUES ('65462344875', 'Hüseyin', 'Erşaşmaz', '05.JUL.1962', '5534863908');
INSERT INTO sahibi VALUES ('47352268763', 'Avşin', 'Güler', '15.OCT.1976', '5493654752');
INSERT INTO sahibi VALUES ('38229847268', 'Lütfü', 'Geçmez', '08.NOV.1945', '5325674395');
INSERT INTO sahibi VALUES ('62567458934', 'Ayşe', 'Ponçik', '23.FEB.1980', '5444578492');
INSERT INTO sahibi VALUES ('25837739283', 'Hale', 'Ekşi', '02.JUN.1974', '5346745843');




INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 5, 6, 2, 2, 200000, 1, 180, 1, 5, 5, 1, 5, 47352268763);
INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 2, 9, 1, 2, 247000, 2, 310, 2, 16, 7, 2, 5, 65462344875);
INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 6, 2, 1, 1, 326000, 1, 94, 1, 2, 2, 3, 5, 62567458934);
INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 1, 26, 4, 8, 5400000, 3, 1800, 2, 1, 0, 3, 1, 38229847268);
INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 3, 5, 1, 4, 1540000, 1, 400, 2, 4, 4, 3, 4, 44770843552);
INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 4, 2, 1, 1, 75000, 1, 110, 1, 1, 1, 2, 2, 25837739283);
INSERT INTO konutozellik VALUES (konutID.NEXTVAL, 5, 6, 2, 2, 175000, 1, 180, 1, 1, 1, 3, 5, 47352268763);

INSERT INTO iklimlendirme VALUES (1, 3);
INSERT INTO iklimlendirme VALUES (2, 2);
INSERT INTO iklimlendirme VALUES (3, 6);
INSERT INTO iklimlendirme VALUES (4, 2);
INSERT INTO iklimlendirme VALUES (5, 2);
INSERT INTO iklimlendirme VALUES (6, 3);
INSERT INTO iklimlendirme VALUES (7, 4);
INSERT INTO iklimlendirme VALUES (1, 1);
INSERT INTO iklimlendirme VALUES (3, 1);
INSERT INTO iklimlendirme VALUES (4, 1);


UPDATE konutozellik SET fiyat='5400000' where KIMLIKNO='38229847268';
UPDATE sahibi SET telefonno='5444578492' where KIMLIKNUMARASI='62567458934';


alter table iklimlendirmeturu modify tur varchar2(25);