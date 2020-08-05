USE bookstore_DB;

INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (1,'To Kill a Mockingbird');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (2,'1984');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (3,'The Catcher in the Rye');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (4,'The Great Gatsby');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (5,'Tales from the Shadowhunter Academy');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (6,'Lord of the Flies');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (7,'Animal Farm');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (8,'Catch-22');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (9,'The Grapes of Wrath');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (10,'Gone with the Wind');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (11,'Slaughterhouse-Five');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (12,'Lolita');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (13,'One Flew Over the Cuckoos Nest');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (14,'A Clockwork Orange');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (15,'Tiny Pretty Things');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (16,'Atonement');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (17,'Watchmen');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (18,'Never Let Me Go');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (19,'Things Fall Apart');
INSERT INTO `bookstore_DB`.`books` (`book_id`,`title`) VALUES (20,'Dry');

--------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (331,'Harper','Lee');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (332,'George','Orwell');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (333,'J.D.','Salinger');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (334,'F. Scott','Fitzgerald');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (335,'Cassandra','Clare');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (336,'Sarah Rees','Brennan');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (337,'Maureen','Johnson');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (338,'Robin','Wasserman');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (339,'William','Golding');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (340,'Joseph','Heller');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (341,'John','Steinbeck');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (342,'Margaret','Mitchell');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (343,'Kurt','Vonnegut Jr.');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (345,'Vladimir','Nabokov');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (356,'Ken','Kesey');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (347,'Anthony','Burgess');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (348,'Sona','Charaipotra');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (349,'Dhonielle','Clayton');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (350,'Ian','McEwan');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (351,'Alan','Moore');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (352,'Kazuo','Ishiguro');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (353,'Chinua','Achebe');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (354,'Neal','Shusterman');
INSERT INTO `bookstore_DB`.`author` (`author_id`,`forename`, `surname`) VALUES (355,'Jarrod','Shusterman');

--------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (1,331);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (2,332);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (3,333);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (4,334);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (5,335);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (6,339);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (7,332);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (8,340);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (9,341);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (10,342);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (11,343);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (12,345);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (14,347);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (15,348);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (15,349);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (16,350);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (17,351);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (18,352);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (19,353);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (20,354);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (20,355);
INSERT INTO `bookstore_DB`.`books_author` (`book_id`,`author_id`) VALUES (13,356);

--------------------------------------------------------------------------
INSERT INTO `bookstore_DB`.`book_prices` (`book_condition`,`retail_price`, `purchase_price`) VALUES ('mint',30,25);
INSERT INTO `bookstore_DB`.`book_prices` (`book_condition`,`retail_price`, `purchase_price`) VALUES ('as-new',25,20);
INSERT INTO `bookstore_DB`.`book_prices` (`book_condition`,`retail_price`, `purchase_price`) VALUES ('good',20,15);
INSERT INTO `bookstore_DB`.`book_prices` (`book_condition`,`retail_price`, `purchase_price`) VALUES ('fair',15,10);
INSERT INTO `bookstore_DB`.`book_prices` (`book_condition`,`retail_price`, `purchase_price`) VALUES ('poor',12,8);

--------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24240,1,'ORIGINAL','Yechezkel Books',1990,0.2,50);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24241,2,'Debbie Kolman','Halpert Publishing',1995,0.5,120);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24242,3,'Efrat Yec','Dani books',2001,1.3,600);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24243,4,'Rachel Roy','Chaya Prints',2001,0.9,300);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24244,5,'Keren Halpert','Barnea Books',2003,0.25,50);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24245,6,'ORIGINAL','Yechezkel Books',2005,1.4,650);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24246,7,'Efrat Yec','Halpert Publishing',2004,0.35,100);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24247,8,'Rachel Roy','Dani books',2006,0.7,530);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24248,9,'Keren Halpert','Chaya Prints',2007,0.2,400);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24249,10,'Barak Daniel','Barnea Books',2008,0.6,700);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24250,11,'Opal Paltzman','Yechezkel Books',2019,0.95,230);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24251,12,'Sivan salzman','Halpert Publishing',2020,1.0,250);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24252,13,'Dekel Menashe','Dani books',1995,0.45,420);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24253,14,'Guy Sharir','Chaya Prints',1995,0.2,170);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24254,15,'Itamar Yarden','Barnea Books',1992,0.1,380);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24255,16,'Dekel Menashe','Yechezkel Books',1997,0.7,95);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24256,17,'Barak Daniel','Halpert Publishing',1998,1.5,830);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24257,18,'Sivan salzman','Chaya Prints',1999,0.8,422);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24258,19,'Opal Paltzman','Dani books',2018,0.65,'318');
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24259,20,'Guy Sharir','Barnea Books',2016,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24260,19,'Guy Sharir','Dani books',2018,0.65,'318');
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24261,19,'ORIGINAL','Dani books',2018,0.65,'318');
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24262,20,'Keren Halpert','Barnea Books',2016,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24263,20,'Danit Yec','Barnea Books',2016,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24264,17,'Barak Daniel','Halpert Publishing',1995,1.5,830);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24265,17,'Barak Daniel','Halpert Publishing',2000,1.5,830);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24266,17,'Barak Daniel','Halpert Publishing',2002,1.5,830);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24267,17,'Dekel Menashe','Barnea Books',2020,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24268,17,'Dekel Menashe','Barnea Books',2019,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24269,18,'Guy Sharir','Barnea Books',2019,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24270,19,'Guy Sharir','Barnea Books',2019,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24271,19,'Guy Sharir','Barnea Books',2017,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24272,17,'Guy Sharir','Barnea Books',2011,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24273,17,'Guy Sharir','Barnea Books',2015,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24274,17,'Guy Sharir','Barnea Books',2013,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24275,18,'Dekel Menashe','Barnea Books',2013,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24276,18,'Danit Yec','Barnea Books',2013,0.45,222);
INSERT INTO `bookstore_DB`.`publication` (`publication_id`,`book_id`,`translator`,`publication_name`,`publication_year`,`weight`,`no_of_pages`) VALUES (24277,18,'Itamar Yarden','Barnea Books',2013,0.45,222);

--------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9861,24241,'2020-07-30',2,'mint','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9862,24244,'2018-08-28',5,'as-new','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9863,24244,'2019-05-01',5,'poor','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9864,24245,'2019-05-02',6,'fair','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9865,24249,'2019-06-01',10,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9866,24264,'2019-07-01',10,'mint','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9867,24254,'2019-11-01',15,'poor','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9868,24255,'2019-12-01',16,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9869,24256,'2020-02-02',17,'poor','storage');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9870,24265,'2020-02-15',17,'mint','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9871,24257,'2020-06-15',18,'fair','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9872,24258,'2019-10-28',19,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9873,24259,'2020-06-05',20,'as-new','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9874,24266,'2020-01-04',17,'fair','storage');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9875,24267,'2020-02-15',17,'good','store');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9880,24268,'2020-03-05',17,'poor','storage');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9881,24269,'2016-08-15',18,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (65565,24270,'2020-05-12',19,'mint','store');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (65567,24271,'2020-07-12',19,'poor','storage');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9882,24276,'2018-08-05',18,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9883,24277,'2018-08-07',18,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9877,24246,'2020-07-01',7,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9878,24247,'2020-07-15',8,'poor','storage');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9879,24248,'2020-07-03',9,'mint','store');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9884,24272,'2019-12-22',17,'fair','store');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9885,24273,'2019-11-13',17,'good','storage');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9886,24274,'2020-04-17',17,'poor','store');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9887,24275,'2017-08-28',18,'good','sold');
INSERT INTO `bookstore_DB`.`stock` (`store_book_id`,`publication_id`,`storage_exit`,`book_id`,`book_condition`,`location`) VALUES (9888,24275,'2017-08-28',18,'poor','sold');

-- delete from stock where store_book_id=9862;
---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456781,'address1','forename1','surname1'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456782,'address2','forename2','surname2'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456783,'address3','forename3','surname3'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456784,'address4','forename4','surname4'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456785,'address5','forename5','surname5'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456786,'address6','forename6','surname6'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456787,'address7','forename7','surname7'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456788,'address8','forename4','surname8'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (123456789,'address1','forename8','surname9'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (223456781,'address9','forename9','surname10'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (323456782,'address5','forename3','surname2'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (423456783,'address10','forename10','surname11'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (523456784,'address3','forename1','surname5'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (623456785,'address11','forename2','surname12'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (723456786,'address7','forename11','surname13'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (823456787,'address12','forename2','surname14'); -- e 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (923456788,'address13','forename3','surname15'); -- c 
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (923456789,'address14','forename8','surname9'); -- e
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (923456710,'address15','forename12','surname16'); -- c
INSERT INTO `bookstore_DB`.`person` (`person_id`,`address`,`forename`,`surname`) VALUES (923456711,'address16','forename16','surname17'); -- e

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (1, '051234567');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (2, '051234568');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (3, '051234569');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (4, '05123456');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (5, '051234512');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (6, '05123451');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (7, '051234513');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (8, '051234514');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (9, '051234515');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (10,'051234516');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (11,'05123467');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (12,'05123567');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (13,'051234123');
INSERT INTO `bookstore_DB`.`phone_number` (`phone_id`,`phone_no`) VALUES (14,'051234124');

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456781,1);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456782,1);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456783,2);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456784,3);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456785,3);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456785,4);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456786,5);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456787,6);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456788,7);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456789,1);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (123456789,8);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (223456781,9);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (323456782,9);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (423456783,10);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (523456784,8);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (523456784,11);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (623456785,12);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (723456786,5);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (723456786,13);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (823456787,14);
INSERT INTO `bookstore_DB`.`person_phone_number` (`person_id`,`phone_id`) VALUES (923456788,14);

---------------------------------------------------------------------------
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (120,123456781,'2017-01-01','2018-12-20');
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (121,123456783,'2017-03-12','2019-03-19');
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (122,123456784,'2018-09-16','2020-01-09');
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (123,123456785,'2018-02-13',NULL);
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (124,123456788,'2019-12-03',NULL);
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (125,523456784,'2019-04-21','2020-05-01');
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (126,623456785,'2019-07-09',NULL);
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (127,823456787,'2020-05-18',NULL);
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (128,923456789,'2019-06-23',NULL);
INSERT INTO `bookstore_DB`.`employee` (`employee_id`,`person_id`,`hire_date`, `termination_date`) VALUES (129,923456711,'2010-04-16',NULL);

--------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (760,123456782,NULL);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (761,123456786,3);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (762,123456787,20);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (763,123456789,1);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (764,223456781,NULL);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (765,323456782,9);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (766,423456783,12);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (767,723456786,10);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (768,923456788,9);
INSERT INTO `bookstore_DB`.`customer` (`customer_id`,`person_id`,`no_of_books_bought`) VALUES (769,923456710,5);

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5580,762,123,'2020-01-11');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5581,766,124,'2020-04-21');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5582,767,123,'2020-07-14');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5583,760,126,'2020-07-28');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5584,762,128,'2020-05-12');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5585,768,129,'2020-01-11');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5586,769,123,'2020-06-10');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5587,765,124,'2020-01-18');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5588,760,125,'2020-04-21');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5589,761,128,'2020-05-12');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5590,762,123,'2016-01-11');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5592,765,125,'2020-07-01');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5591,769,123,'2020-07-10');
INSERT INTO `bookstore_DB`.`store_transaction` (`transaction_id`,`customer_id`,`employee_id`,`transaction_date`) VALUES (5593,767,123,'2020-07-01');

---------------------------------------------------------------------------

 INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9861,'2018-07-22',5587);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9862,'2018-08-18',5588);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9863,'2019-04-20',5589);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9864,'2019-04-26',5580);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9865,'2019-05-03',5583);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9866,'2019-05-22',5580);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9867,'2019-10-18',5584);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9868,'2019-11-12',5588);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9869,'2020-01-20',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9870,'2020-02-06',5581);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9871,'2020-06-10',5586);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9872,'2019-07-02',5585);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9873,'2020-05-28',5582);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9882,'2018-07-28',5592);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9883,'2018-07-28',5591);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9881,'2016-07-28',5591);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9887,'2017-07-28',5591);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9877,'2020-06-20',5593);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9878,'2020-06-20',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9879,'2020-06-20',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9874,'2019-12-01',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9875,'2020-01-01',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9880,'2020-01-15',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (65565,'2020-04-01',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (65567,'2020-03-17',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9884,'2019-06-13',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9885,'2019-08-20',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9886,'2020-03-05',NULL);
INSERT INTO `bookstore_DB`.`payments` (`store_book_id`,`date_bought`,`transaction_id`) VALUES (9888,'2015-06-20',5590);

-- delete from payments where store_book_id=9861;

--------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2019-11-01',15000,130,60000);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2019-12-01',15000,200,65000);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-01-01',15000,180,60000);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-02-01',15000,150,59000);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-03-01',15000,50,60500);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-04-01',15000,70,61000);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-05-01',15000,230,60500);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-06-01',15000,400,66000);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-07-01',15000,190,64500);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-08-01',NULL,NULL,NULL);
INSERT INTO `bookstore_DB`.`store` (`monthly_payments`,`rent`,`misc`,`monthly_wages`) VALUES ('2020-09-01',NULL,NULL,NULL);

-----------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2019-11-01',200,6000,550);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2019-12-01',230,6000,670);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-01-01',190,6000,600);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-02-01',310,6000,540);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-03-01',280,6000,590);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-04-01',230,6000,550);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-05-01',240,6000,650);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-06-01',190,6000,660);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-07-01',300,6000,670);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-08-01',NULL,NULL,NULL);
INSERT INTO `bookstore_DB`.`gov_payments` (`monthly_payments`,`water`,`property_tax`,`electric`) VALUES ('2020-09-01',NULL,NULL,NULL);

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2019-11-01',2000,1500,150,200);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2019-12-01',1900,1400,130,175);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-01-01',1850,2300,140,180);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-02-01',1950,2200,220,210);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-03-01',2050,1700,250,190);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-04-01',1870,1980,150,145);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-05-01',1960,1900,190,150);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-06-01',2020,2000,200,120);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-07-01',2300,1300,180,190);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-08-01',NULL,NULL,NULL,NULL);
INSERT INTO `bookstore_DB`.`service_payments` (`monthly_payments`,`Israel_Post`,`Xpress`,`landline`,`mobile`) VALUES ('2020-09-01',NULL,NULL,NULL,NULL);

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (125,'2020-05-01',38);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (123,'2020-05-01',35);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (123,'2020-06-01',49);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (124,'2020-06-01',39);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (127,'2020-06-01',36);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (123,'2020-07-01',26);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (124,'2020-07-01',32);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (126,'2020-07-01',39);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (127,'2020-07-01',24);
INSERT INTO `bookstore_DB`.`salary` (`employee_id`,`monthly_payments`, `monthly_hours`) VALUES (129,'2020-06-01',20);

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (760,1,'2020-01-11');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (761,4,'2020-03-13');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (762,4,'2020-04-21');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (763,14,'2020-06-05');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (764,8,'2016-06-10');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (765,2,'2017-07-18');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (766,3,'2018-02-12');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (767,1,'2019-05-12');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (768,5,'2020-07-29');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (769,9,'2019-03-18');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (762,15,'2019-06-20');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (766,20,'2019-09-18');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (767,7,'2020-06-10');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (768,8,'2020-06-10');
INSERT INTO `bookstore_DB`.`book_order` (`customer_id`,`book_id`,`order_date`) VALUES (765,9,'2020-06-10');

---------------------------------------------------------------------------

INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4741,5580,'delivered','Registered','Israel Post',1.4,7,'address1');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4742,5580,'processing','Messenger','Israel Post',0.6,4.8,'address2');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4743,5588,'in progress','Express Messenger','Israel Post',0.25,2.5,'address3');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4744,5589,'delivered','Pick Up Point','Xpress',0.25,2.5,'address4');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4746,5584,'delivered','Doorstep Delivery','Xpress',0.1,1.5,'address5');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4747,5586,'received','Pick Up Point','Xpress',0.8,8,'address6');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4748,5585,'processing','Messenger','Israel Post',0.65,5.2,'address7');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4749,5587,'in progress','Pick Up Point','Xpress',0.5,5,'address8');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4750,5583,'delivered','Messenger','Israel Post',0.6,4.8,'address9');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4751,5583,'processing','Doorstep Delivery','Xpress',0.6,4.8,'address9');
INSERT INTO `bookstore_DB`.`delivery` (`tracking_no`,`transaction_id`,`delivery_status`,`delivery_method`,`service_provider`,`total_weight`,`delivery_cost`,`address`) VALUES (4752,5591,'delivered','Messenger','Israel Post',0.6,4.8,'address3');

---------------------------------------------------------------------------
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5580,45,'bit');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5581,30,'Bank Transfer');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5582,25,'bit');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5583,50,'Credit Card');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5584,45,'Bank Transfer');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5585,15,'Credit Card');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5586,12,'Bank Transfer');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5587,30,'Bank Transfer');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5588,25,'Credit Card');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5589,40,'bit');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5592,40,'bit');
INSERT INTO `bookstore_DB`.`payment` (`transaction_id`,`total_book_cost`,`payment_method`) VALUES (5591,40,'bit');

---------------------------------------------------------------------------

