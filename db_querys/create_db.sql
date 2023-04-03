CREATE TABLE IF NOT EXISTS Users (
user_id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
phone TEXT NOT NULL UNIQUE,
email TEXT,
password TEXT NOT NULL,
date_created TEXT,
hire_date TEXT,
user_type INTEGER DEFAULT 1,
active INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS Competencies (
  assess_id INTEGER PRIMARY KEY AUTOINCREMENT,
  comp_name TEXT NOT NULL, 
  date_created TEXT
);

CREATE TABLE IF NOT EXISTS Assessment (
  assess_id INTEGER PRIMARY KEY AUTOINCREMENT,
  assessment_name TEXT,
  date_created TEXT,

  FOREIGN KEY (assess_id)
    REFERENCES Competencies (assess_id)
);

CREATE TABLE IF NOT EXISTS Assessment_results (
  result_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  assess_id INTEGER NOT NULL,
  score TEXT,
  date_taken TEXT,
  manager_id INTEGER NOT NULL,

  FOREIGN KEY (user_id)
    REFERENCES Users (user_id),
  FOREIGN KEY (assess_id)
    REFERENCES Assessment (assess_id),
  FOREIGN KEY (manager_id)
    REFERENCES Users (user_id)
);


insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (1, 'Bogey', 'Lappine', '514-320-4075', 'blappine0@t.co', 'IfhaOSAy', '6/25/2022', '5/3/2019', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (2, 'Kristina', 'Twelvetree', '190-990-4808', 'ktwelvetree1@tamu.edu', '2pCsLQ0', '5/30/2022', '3/24/2019', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (3, 'Peirce', 'Maliphant', '582-531-4366', 'pmaliphant2@sciencedirect.com', 'BFpata8', '8/29/2022', '8/14/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (4, 'Tiphani', 'Lohmeyer', '404-484-8514', 'tlohmeyer3@sphinn.com', 'ZPwWkEEJa', '12/18/2022', '3/3/2020', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (5, 'Zak', 'Grassin', '115-619-4059', 'zgrassin4@artisteer.com', '1JZOmVwxcae', '4/24/2022', '8/16/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (6, 'Alysia', 'Cathrae', '793-327-8038', 'acathrae5@discuz.net', 'EV3WMWMAFJZ', '9/4/2022', '9/30/2020', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (7, 'Mahala', 'Le Huquet', '890-435-2827', 'mlehuquet6@yandex.ru', '7vzGf3y', '6/26/2022', '11/2/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (8, 'Elton', 'Casero', '193-378-1951', 'ecasero7@e-recht24.de', 'nkilhE7mkwG3', '3/25/2023', '6/21/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (9, 'Tobe', 'Annakin', '244-214-7033', 'tannakin8@china.com.cn', '3VwIjyXZMEYG', '12/3/2022', '6/24/2021', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (10, 'Katti', 'Sheach', '862-851-1682', 'ksheach9@nature.com', 'I0WLW0KZ8S', '12/19/2022', '11/23/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (11, 'Eddi', 'Vautin', '405-926-4205', 'evautina@angelfire.com', '9qKZN0FASO', '3/8/2023', '9/15/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (12, 'Binny', 'Gobeaux', '650-167-4316', 'bgobeauxb@google.cn', 'DCfoOXmP2oZb', '6/3/2022', '12/9/2018', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (13, 'Constantina', 'Hannibal', '330-591-4924', 'channibalc@etsy.com', 'TUn1rzyPE', '12/7/2022', '11/25/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (14, 'Roanne', 'Clulee', '716-545-1723', 'rcluleed@cisco.com', 'xbT3GDg', '3/1/2023', '3/18/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (15, 'Bernhard', 'Standbrook', '510-204-7740', 'bstandbrooke@blogs.com', 'GUnbXm4VZf', '2/18/2023', '2/4/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (16, 'Bron', 'Roels', '209-113-1717', 'broelsf@behance.net', 'pXJv0vgVtjH', '3/29/2023', '10/30/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (17, 'Ethelbert', 'Korpolak', '588-282-9497', 'ekorpolakg@yahoo.co.jp', 'xThfiD', '4/26/2022', '8/12/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (18, 'Lemuel', 'Smedley', '563-137-6943', 'lsmedleyh@google.com.br', 'jxERA7S', '10/26/2022', '5/2/2020', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (19, 'Niel', 'Flippen', '390-608-4475', 'nflippeni@bbc.co.uk', '9wViTC', '5/4/2022', '3/9/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (20, 'Sheila-kathryn', 'Slater', '910-123-0191', 'sslaterj@phpbb.com', 'Z70PyL', '6/30/2022', '10/29/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (21, 'Mervin', 'Royal', '540-331-8392', 'mroyalk@auda.org.au', 'KwU4U4KM', '5/4/2022', '1/19/2023', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (22, 'Giusto', 'Soall', '839-785-3326', 'gsoalll@dropbox.com', 'N5T2X6k', '2/21/2023', '11/15/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (23, 'Cindee', 'Andreichik', '338-708-1724', 'candreichikm@histats.com', 'ix0j8dKVKq', '12/4/2022', '12/1/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (24, 'Micheline', 'Lermit', '195-636-3305', 'mlermitn@bloglovin.com', '8aVnnW', '5/29/2022', '7/31/2018', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (25, 'Balduin', 'Baitson', '207-389-0753', 'bbaitsono@wufoo.com', 'S1GEA0', '12/10/2022', '9/9/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (26, 'Lonna', 'Karleman', '661-460-9135', 'lkarlemanp@apple.com', 'peaqmjrVH4y', '3/6/2023', '12/16/2021', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (27, 'Harlin', 'Smead', '998-718-8926', 'hsmeadq@360.cn', '6BzH9tNUwibE', '8/24/2022', '11/1/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (28, 'Geraldine', 'Bramhall', '701-826-7226', 'gbramhallr@hugedomains.com', 'W58V5i', '5/11/2022', '4/13/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (29, 'Reed', 'Rathjen', '182-450-5422', 'rrathjens@eepurl.com', '0aiTcchsLem', '2/6/2023', '10/12/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (30, 'Sile', 'Parkman', '105-415-1954', 'sparkmant@vistaprint.com', 'cWq8zx72YF', '4/8/2022', '6/12/2021', 0, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (31, 'Nerita', 'Tyrer', '459-649-7077', 'ntyreru@4shared.com', '4IS4Lv', '3/5/2023', '12/7/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (32, 'Evangelina', 'Brett', '314-537-8274', 'ebrettv@npr.org', 'wLQ7oa', '7/24/2022', '12/25/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (33, 'Marie-ann', 'Rudinger', '361-322-3685', 'mrudingerw@discuz.net', 'YPNRm8UWAfL', '10/15/2022', '10/31/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (34, 'Luelle', 'Ellingham', '715-957-4905', 'lellinghamx@goo.ne.jp', 'WG6uhSpZgC', '9/6/2022', '7/25/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (35, 'Jackie', 'Addlestone', '410-837-5435', 'jaddlestoney@aboutads.info', '0Gv5st', '12/14/2022', '7/8/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (36, 'Normand', 'Secrett', '153-961-1829', 'nsecrettz@livejournal.com', '2hzJhtY', '2/1/2023', '10/17/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (37, 'Thurstan', 'Main', '165-716-8017', 'tmain10@nature.com', 'YwiMVXxAUBg', '2/21/2023', '8/21/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (38, 'Christy', 'Ravel', '303-823-2068', 'cravel11@angelfire.com', 'nnWv9B3', '7/3/2022', '4/30/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (39, 'Shauna', 'Schops', '933-389-1985', 'sschops12@marketwatch.com', 'Lqq0ZRCf1SY', '1/2/2023', '8/13/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (40, 'Horton', 'Willcot', '397-896-9996', 'hwillcot13@devhub.com', '4InCOadty', '4/14/2022', '6/5/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (41, 'Pammie', 'Leming', '914-565-0303', 'pleming14@ustream.tv', 'Hiv66lrpP', '10/15/2022', '6/22/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (42, 'Donella', 'Thebeaud', '112-532-8676', 'dthebeaud15@ameblo.jp', 'IKYrSjhiJo', '2/20/2023', '10/20/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (43, 'Lillis', 'Coche', '701-877-5026', 'lcoche16@deviantart.com', 'dApokDCiB0', '11/16/2022', '11/1/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (44, 'Ches', 'Ellicock', '296-806-2399', 'cellicock17@g.co', 'LCn0o3SLEIU', '12/6/2022', '7/7/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (45, 'Elset', 'Mapp', '368-345-2285', 'emapp18@jiathis.com', 'z3SPr76', '7/14/2022', '1/2/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (46, 'Burnard', 'Manlow', '958-192-1228', 'bmanlow19@howstuffworks.com', 'qsmSm3', '8/29/2022', '10/9/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (47, 'Mason', 'Ellen', '806-165-2317', 'mellen1a@cyberchimps.com', '6T1G2ufbG', '11/23/2022', '8/16/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (48, 'Stanwood', 'Ashfull', '929-542-6780', 'sashfull1b@miitbeian.gov.cn', 'jfzigO5bN', '8/6/2022', '6/2/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (49, 'Elle', 'Village', '786-514-9948', 'evillage1c@google.cn', 'Y7zLGypo1u', '7/5/2022', '11/30/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (50, 'Cornelius', 'Croisdall', '835-432-1514', 'ccroisdall1d@narod.ru', 'U6SgMGtjHHRT', '12/3/2022', '9/27/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (51, 'Edmon', 'Heffernan', '438-355-2386', 'eheffernan1e@mapquest.com', 'F4ky4Qk6nfD', '7/15/2022', '10/5/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (52, 'Veradis', 'Braga', '131-443-7016', 'vbraga1f@purevolume.com', '1D8BxDzEZeK', '11/1/2022', '5/1/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (53, 'Solly', 'Skellorne', '642-179-0283', 'sskellorne1g@live.com', 'McxobYJk', '2/8/2023', '10/17/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (54, 'Bealle', 'Lube', '256-918-5954', 'blube1h@aboutads.info', 'EPA3DLASV', '6/14/2022', '8/13/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (55, 'Samson', 'Keneforde', '819-808-3163', 'skeneforde1i@altervista.org', 'RWIorpUAzab9', '10/22/2022', '9/25/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (56, 'Athene', 'Milliken', '613-634-0560', 'amilliken1j@usa.gov', 'AzTHIT', '6/26/2022', '11/3/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (57, 'Alicia', 'Grayling', '153-246-8404', 'agrayling1k@xing.com', 'm9GKw0k', '1/22/2023', '11/5/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (58, 'Bo', 'Axel', '934-234-9303', 'baxel1l@europa.eu', 'zzjk0KLyicTG', '4/28/2022', '8/26/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (59, 'Peyton', 'Tubbles', '993-926-8708', 'ptubbles1m@wiley.com', 'SEpkmfub', '10/5/2022', '9/27/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (60, 'Pattie', 'Gorhardt', '706-913-0815', 'pgorhardt1n@usatoday.com', 'U1hmic', '12/27/2022', '9/6/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (61, 'Dukey', 'Kienl', '653-210-9338', 'dkienl1o@soup.io', 'r7s21Hdh0T', '12/13/2022', '4/29/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (62, 'Ranee', 'Durrell', '972-270-7762', 'rdurrell1p@godaddy.com', 'v4y2Dw8I', '8/13/2022', '8/22/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (63, 'Lazarus', 'Espadate', '702-946-9926', 'lespadate1q@wp.com', 'SorTojrXE3', '12/31/2022', '1/31/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (64, 'Townie', 'Daice', '303-990-2975', 'tdaice1r@de.vu', 'myNO3ecl3mr', '6/11/2022', '11/19/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (65, 'Noak', 'Hearst', '675-132-5395', 'nhearst1s@netlog.com', 'WY2utRlgsSDz', '2/21/2023', '1/30/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (66, 'Jonie', 'Baggarley', '854-228-2978', 'jbaggarley1t@economist.com', 'vpSWAl1', '7/30/2022', '12/13/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (67, 'Gerrard', 'O''Lunney', '996-994-8766', 'golunney1u@last.fm', '1JzYS3nBtFX', '6/5/2022', '1/10/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (68, 'Thayne', 'Bissill', '346-967-2187', 'tbissill1v@cafepress.com', 'ayJ3NxFl', '6/3/2022', '8/4/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (69, 'Samara', 'Dillway', '572-469-0165', 'sdillway1w@mozilla.com', '4d5UoJ', '11/9/2022', '9/4/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (70, 'Courtnay', 'Christophers', '327-215-2870', 'cchristophers1x@ezinearticles.com', 'J0kPvV8vF9', '3/23/2023', '4/11/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (71, 'Marget', 'Cammiemile', '430-812-7738', 'mcammiemile1y@google.it', 'vfnByP0ic05', '7/26/2022', '8/4/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (72, 'Redd', 'Delgua', '832-813-0181', 'rdelgua1z@reverbnation.com', 'UQNjfq2', '8/22/2022', '1/20/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (73, 'Care', 'Hutcheons', '971-252-0861', 'chutcheons20@wired.com', 'lo1QYJuYehJr', '10/10/2022', '9/28/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (74, 'Vally', 'Yegorov', '937-855-9665', 'vyegorov21@gizmodo.com', 'iLyUqFU1NTPl', '5/5/2022', '1/18/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (75, 'Sergio', 'Dunklee', '630-427-9738', 'sdunklee22@army.mil', 'CP8CK8', '6/28/2022', '3/26/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (76, 'Wally', 'Johnson', '363-836-3991', 'wjohnson23@vimeo.com', 'tcfK4M', '11/18/2022', '8/3/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (77, 'Neal', 'Silvester', '831-980-4422', 'nsilvester24@chronoengine.com', '0XJEz45fr', '4/10/2022', '12/20/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (78, 'Melisande', 'Gelland', '393-301-0455', 'mgelland25@mayoclinic.com', 'ZsfsNQyWj65y', '10/20/2022', '3/25/2023', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (79, 'Kenna', 'Oneile', '925-866-5956', 'koneile26@vistaprint.com', 'CJu4f8', '7/26/2022', '9/12/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (80, 'Konstanze', 'Hawkins', '795-417-1580', 'khawkins27@netlog.com', 'nBGogAo8bdP', '1/22/2023', '4/4/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (81, 'Ammamaria', 'Scouler', '646-502-0391', 'ascouler28@4shared.com', 'IfQcFYl', '2/1/2023', '6/18/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (82, 'Anna-diane', 'Jeannot', '845-634-0032', 'ajeannot29@icq.com', 'sgywWYSgOnK', '9/13/2022', '10/30/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (83, 'Drusy', 'Clulee', '665-454-4348', 'dclulee2a@businessweek.com', 'R0IHDE', '7/29/2022', '6/8/2021', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (84, 'Amble', 'Wetherick', '700-399-7320', 'awetherick2b@theatlantic.com', 'A358UghduOEU', '1/3/2023', '8/29/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (85, 'Nananne', 'Meadmore', '819-773-1733', 'nmeadmore2c@google.nl', 'U3RnCMRUxJKc', '7/3/2022', '11/30/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (86, 'Aridatha', 'Farnish', '317-150-1902', 'afarnish2d@paypal.com', 'NIZZ4QGRie', '1/13/2023', '1/6/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (87, 'Lynnell', 'Blampey', '755-544-2974', 'lblampey2e@shinystat.com', 'A2NbU9v', '1/31/2023', '9/22/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (88, 'Abby', 'Dunnion', '786-904-0786', 'adunnion2f@google.pl', '1qunV2V3sO97', '9/21/2022', '12/24/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (89, 'Bertie', 'Dillaway', '622-945-4936', 'bdillaway2g@123-reg.co.uk', '4iqeBTkPAND', '10/16/2022', '1/20/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (90, 'Britteny', 'Farguhar', '166-781-1812', 'bfarguhar2h@163.com', 'l7f2KOEpy', '9/17/2022', '9/25/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (91, 'Joye', 'Luetkemeyers', '618-306-5354', 'jluetkemeyers2i@guardian.co.uk', '0OQhGCZs5HH', '6/8/2022', '9/22/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (92, 'Ronna', 'Croshaw', '630-438-0112', 'rcroshaw2j@ftc.gov', 'RwOYRBZDD', '2/8/2023', '2/20/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (93, 'Aldrich', 'Rimour', '349-637-4907', 'arimour2k@webmd.com', 'SrRewVSne9', '11/17/2022', '10/14/2018', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (94, 'Tiff', 'Ditter', '460-668-7758', 'tditter2l@unicef.org', 'bGyO1ZBrGVW', '4/21/2022', '2/10/2023', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (95, 'Chad', 'Rebichon', '337-477-6866', 'crebichon2m@noaa.gov', 'wKzoZL04ImJ', '2/15/2023', '8/25/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (96, 'Del', 'Camoletto', '324-141-4957', 'dcamoletto2n@tinypic.com', 'rMQjgw', '8/14/2022', '7/17/2019', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (97, 'Gerrie', 'Loach', '772-276-0927', 'gloach2o@illinois.edu', '63Ca0nvr', '5/11/2022', '1/26/2022', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (98, 'Eloisa', 'Melpuss', '760-640-7078', 'emelpuss2p@virginia.edu', 'bWcAHao8jMF', '5/9/2022', '10/12/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (99, 'Weylin', 'Midlar', '775-176-4744', 'wmidlar2q@blogtalkradio.com', 'z7LjtvTFtE4v', '4/1/2022', '9/8/2020', 1, 1);
insert into Users (user_id, first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values (100, 'Mikey', 'Phant', '575-653-2659', 'mphant2r@ox.ac.uk', '5CEtWUV4t', '12/6/2022', '7/14/2019', 1, 1);


insert into Competencies (assess_id, comp_name, date_created) values (1, 'Data Types', '4/4/2022');
insert into Competencies (assess_id, comp_name, date_created) values (2, 'Variables', '2/16/2023');
insert into Competencies (assess_id, comp_name, date_created) values (3, 'Functions', '7/27/2022');
insert into Competencies (assess_id, comp_name, date_created) values (4, 'Boolean Logic', '10/20/2022');
insert into Competencies (assess_id, comp_name, date_created) values (5, 'Conditionals', '12/18/2022');
insert into Competencies (assess_id, comp_name, date_created) values (6, 'Loops', '11/17/2022');
insert into Competencies (assess_id, comp_name, date_created) values (7, 'Data Structures', '12/30/2022');
insert into Competencies (assess_id, comp_name, date_created) values (8, 'Lists', '12/5/2022');
insert into Competencies (assess_id, comp_name, date_created) values (9, 'Dictionaries', '2/27/2023');
insert into Competencies (assess_id, comp_name, date_created) values (10, 'Working with Files', '7/31/2022');
insert into Competencies (assess_id, comp_name, date_created) values (11, 'Exception Handling', '4/21/2022');
insert into Competencies (assess_id, comp_name, date_created) values (12, 'Quality Assurance (QA)', '1/30/2023');
insert into Competencies (assess_id, comp_name, date_created) values (13, 'Object-Oriented Programming', '9/4/2022');
insert into Competencies (assess_id, comp_name, date_created) values (14, 'Recursion', '11/4/2022');
insert into Competencies (assess_id, comp_name, date_created) values (15, 'Databases', '10/2/2022');

insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (1, 7, 14, 3, '6/28/2022', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (2, 37, 15, 3, '8/20/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (3, 62, 15, 3, '2/19/2023', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (4, 2, 1, 3, '6/6/2022', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (5, 5, 1, 1, '3/5/2023', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (6, 84, 14, 1, '9/29/2022', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (7, 10, 2, 0, '7/1/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (8, 27, 3, 0, '12/26/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (9, 50, 9, 2, '12/22/2022', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (10, 64, 7, 3, '8/9/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (11, 91, 12, 3, '8/13/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (12, 1, 14, 2, '3/21/2023', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (13, 74, 9, 2, '11/6/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (14, 27, 15, 1, '7/4/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (15, 72, 8, 4, '8/18/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (16, 66, 4, 3, '12/8/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (17, 1, 6, 1, '7/13/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (18, 19, 13, 2, '1/20/2023', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (19, 60, 5, 2, '10/4/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (20, 40, 2, 4, '7/9/2022', 5);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (21, 14, 2, 2, '6/22/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (22, 16, 9, 1, '3/6/2023', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (23, 11, 5, 0, '8/10/2022', 10);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (24, 7, 15, 3, '2/11/2023', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (25, 20, 9, 4, '11/6/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (26, 16, 4, 3, '12/17/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (27, 36, 10, 0, '4/17/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (28, 95, 3, 1, '2/5/2023', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (29, 88, 1, 0, '8/22/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (30, 6, 6, 1, '11/19/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (31, 22, 10, 1, '10/2/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (32, 93, 4, 0, '5/5/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (33, 19, 6, 0, '3/27/2023', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (34, 17, 6, 0, '10/1/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (35, 67, 10, 0, '11/24/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (36, 92, 7, 3, '5/26/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (37, 40, 4, 1, '12/25/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (38, 15, 13, 3, '6/14/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (39, 94, 13, 1, '1/29/2023', 5);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (40, 12, 5, 2, '8/11/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (41, 90, 1, 2, '5/16/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (42, 77, 10, 1, '8/14/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (43, 45, 3, 3, '12/14/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (44, 88, 9, 4, '7/17/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (45, 59, 10, 4, '6/5/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (46, 15, 11, 3, '12/8/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (47, 33, 11, 2, '12/19/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (48, 10, 14, 0, '2/8/2023', 5);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (49, 10, 8, 0, '6/15/2022', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (50, 93, 12, 0, '1/30/2023', 10);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (51, 81, 14, 0, '3/12/2023', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (52, 58, 1, 3, '8/25/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (53, 27, 1, 2, '4/13/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (54, 10, 15, 0, '6/17/2022', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (55, 92, 9, 2, '2/21/2023', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (56, 68, 15, 2, '11/7/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (57, 89, 15, 3, '8/22/2022', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (58, 47, 3, 0, '2/24/2023', 10);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (59, 70, 9, 2, '10/17/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (60, 49, 14, 4, '6/14/2022', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (61, 46, 13, 0, '2/26/2023', 1);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (62, 9, 7, 4, '3/18/2023', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (63, 35, 6, 4, '9/2/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (64, 83, 8, 4, '10/27/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (65, 83, 10, 2, '8/8/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (66, 56, 8, 0, '4/24/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (67, 79, 10, 3, '6/5/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (68, 1, 15, 4, '6/1/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (69, 69, 4, 3, '7/27/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (70, 89, 1, 3, '6/19/2022', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (71, 25, 9, 1, '4/5/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (72, 1, 3, 1, '3/17/2023', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (73, 13, 7, 3, '4/13/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (74, 32, 3, 0, '11/2/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (75, 31, 3, 0, '8/21/2022', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (76, 99, 11, 1, '3/31/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (77, 66, 13, 3, '9/19/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (78, 13, 9, 2, '11/28/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (79, 48, 5, 0, '11/9/2022', 10);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (80, 68, 2, 4, '9/12/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (81, 5, 4, 3, '3/29/2023', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (82, 79, 7, 3, '3/29/2023', 5);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (83, 35, 2, 0, '12/7/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (84, 47, 8, 0, '8/8/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (85, 83, 3, 0, '3/16/2023', 3);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (86, 45, 8, 2, '8/8/2022', 10);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (87, 55, 10, 0, '11/1/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (88, 58, 14, 3, '8/13/2022', 2);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (89, 4, 3, 4, '2/17/2023', 10);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (90, 86, 6, 3, '6/19/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (91, 55, 5, 0, '10/1/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (92, 73, 13, 1, '8/31/2022', 4);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (93, 71, 11, 2, '8/10/2022', 8);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (94, 89, 13, 1, '5/26/2022', 7);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (95, 6, 14, 3, '4/22/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (96, 58, 12, 0, '1/21/2023', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (97, 51, 12, 2, '10/7/2022', 6);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (98, 66, 4, 3, '12/25/2022', 5);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (99, 8, 14, 2, '9/19/2022', 9);
insert into Assessment_results (result_id, user_id, assess_id, score, date_taken, manager_id) values (100, 67, 11, 4, '2/8/2023', 1);