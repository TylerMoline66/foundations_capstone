CREATE TABLE IF NOT EXISTS Users (
user_id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
phone TEXT NOT NULL,
email TEXT,
password TEXT NOT NULL,
date_created TEXT,
hire_date TEXT,
user_type INTEGER DEFAULT 1,
active INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS Competencies (
  comp_id INTEGER PRIMARY KEY AUTOINCREMENT,
  comp_name TEXT NOT NULL, 
  date_created TEXT
);

CREATE TABLE IF NOT EXISTS Assessment (
  assess_id INTEGER PRIMARY KEY AUTOINCREMENT,
  comp_id INTEGER,
  assessment_name TEXT,
  date_created TEXT,

  FOREIGN KEY (comp_id)
    REFERENCES Competencies (comp_id)
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


insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Malvin', 'Lambol', '526-920-2026', 'mlambol0@typepad.com', 'password', '2023-03-21', '2021-01-05', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Cahra', 'Wilkisson', '484-312-3921', 'cwilkisson1@virginia.edu', 'password', '2023-02-19', '2022-04-02', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Jandy', 'Plues', '959-167-2568', 'jplues2@example.com', 'password', '2022-09-12', '2020-11-30', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Killie', 'Malloch', '404-906-7811', 'kmalloch3@blog.com', 'password', '2023-01-19', '2022-03-15', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Cecilia', 'Crossland', '792-922-6164', 'ccrossland4@cnbc.com', 'password', '2022-10-06', '2021-08-23', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Astra', 'Lodge', '719-680-5201', 'alodge5@sphinn.com', 'password', '2023-01-13', '2022-03-05', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Steven', 'Sanday', '542-259-0669', 'ssanday6@mtv.com', 'password', '2022-09-17', '2023-02-01', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Carmelina', 'Turnpenny', '649-630-1693', 'cturnpenny7@slashdot.org', 'password', '2022-12-09', '2023-02-24', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Noellyn', 'Gadie', '783-295-3644', 'ngadie8@vk.com', 'password', '2023-02-12', '2022-02-03', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Maible', 'Gurwood', '161-888-0761', 'mgurwood9@unesco.org', 'password', '2023-03-11', '2021-01-18', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Dori', 'Dewfall', '480-589-3976', 'ddewfalla@dailymotion.com', 'password', '2022-10-20', '2020-11-08', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Stanley', 'Anersen', '176-216-6489', 'sanersenb@phoca.cz', 'password', '2022-10-09', '2021-11-24', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Ingmar', 'Sparey', '808-583-6208', 'ispareyc@alexa.com', 'password', '2022-11-08', '2020-12-11', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Torrie', 'Dumpleton', '538-310-9591', 'tdumpletond@hc360.com', 'password', '2022-12-31', '2021-02-12', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Rivi', 'Menham', '380-367-5472', 'rmenhame@jigsy.com', 'password', '2022-10-28', '2022-08-25', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Marve', 'Cowen', '535-436-1317', 'mcowenf@dell.com', 'password', '2022-11-07', '2022-11-13', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Leeanne', 'Demelt', '989-980-2874', 'ldemeltg@about.me', 'password', '2022-10-07', '2022-03-14', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Kenton', 'Jamblin', '815-340-2498', 'kjamblinh@forbes.com', 'password', '2022-09-22', '2022-03-30', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Domeniga', 'Goutcher', '229-974-4280', 'dgoutcheri@hao123.com', 'password', '2023-03-02', '2021-04-24', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Ira', 'Carverhill', '742-629-7900', 'icarverhillj@dion.ne.jp', 'password', '2022-11-05', '2022-07-13', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Harmony', 'Klimpt', '198-136-5072', 'hklimptk@toplist.cz', 'password', '2023-01-12', '2020-10-30', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Almeta', 'Dalloway', '923-271-9949', 'adallowayl@nsw.gov.au', 'password', '2022-10-20', '2022-07-29', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Gypsy', 'Lehrahan', '421-460-0840', 'glehrahanm@spotify.com', 'password', '2022-09-15', '2023-01-14', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Carroll', 'Rome', '472-456-2107', 'cromen@quantcast.com', 'password', '2022-12-24', '2022-01-01', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Shaylynn', 'Leal', '402-156-6491', 'slealo@nhs.uk', 'password', '2022-12-20', '2021-10-07', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Barry', 'Roofe', '625-407-6798', 'broofep@github.io', 'password', '2023-03-11', '2022-05-10', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Malissa', 'Legister', '707-758-6904', 'mlegisterq@cargocollective.com', 'password', '2023-03-18', '2022-03-04', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Marcie', 'Dolohunty', '744-171-1167', 'mdolohuntyr@myspace.com', 'password', '2023-03-27', '2021-03-08', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Kalindi', 'Justham', '671-340-9125', 'kjusthams@ed.gov', 'password', '2023-01-10', '2021-05-12', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Engelbert', 'Greggersen', '561-707-7995', 'egreggersent@google.fr', 'password', '2023-01-29', '2021-09-19', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Mario', 'Rusk', '607-335-4636', 'mrusku@over-blog.com', 'password', '2023-02-14', '2020-09-28', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Davy', 'Widdup', '935-205-0056', 'dwiddupv@salon.com', 'password', '2023-01-28', '2023-01-04', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Phelia', 'Boyan', '907-181-8107', 'pboyanw@soundcloud.com', 'password', '2023-01-03', '2021-10-15', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Jordan', 'Rentcome', '233-929-2407', 'jrentcomex@wikispaces.com', 'password', '2022-12-03', '2021-05-24', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Elsinore', 'Reolfo', '277-513-3525', 'ereolfoy@mozilla.com', 'password', '2023-03-16', '2022-04-10', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Fanechka', 'Juzek', '852-594-7930', 'fjuzekz@networkadvertising.org', 'password', '2022-10-24', '2023-02-18', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Salomone', 'Blaxley', '968-998-7941', 'sblaxley10@microsoft.com', 'password', '2022-11-15', '2022-06-17', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Vevay', 'Dimitriou', '270-913-3592', 'vdimitriou11@ibm.com', 'password', '2022-10-26', '2021-10-05', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Mickie', 'L''Amie', '698-587-6052', 'mlamie12@reuters.com', 'password', '2022-10-20', '2020-10-26', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Catie', 'Boate', '906-372-9977', 'cboate13@behance.net', 'password', '2022-11-19', '2022-10-28', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Jennie', 'Deakin', '916-623-9286', 'jdeakin14@sohu.com', 'password', '2022-10-21', '2022-05-05', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Leda', 'Warrick', '173-485-6379', 'lwarrick15@reddit.com', 'password', '2023-02-18', '2022-09-08', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Anett', 'Coulthard', '409-576-7442', 'acoulthard16@wikimedia.org', 'password', '2022-12-23', '2020-11-13', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Ermanno', 'Royste', '265-147-9299', 'eroyste17@si.edu', 'password', '2022-09-13', '2022-04-11', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Dore', 'Carncross', '336-609-1149', 'dcarncross18@xinhuanet.com', 'password', '2022-10-19', '2020-12-29', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Adelice', 'Winterflood', '882-281-4671', 'awinterflood19@usda.gov', 'password', '2022-10-26', '2020-10-20', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Iseabal', 'Aliman', '324-566-3177', 'ialiman1a@alexa.com', 'password', '2022-09-29', '2021-08-07', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Codee', 'Craghead', '482-136-6737', 'ccraghead1b@google.nl', 'password', '2023-01-15', '2020-12-09', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Erhart', 'Corkett', '134-147-9956', 'ecorkett1c@oracle.com', 'password', '2023-01-21', '2023-01-26', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Orin', 'Shillabeare', '554-669-7350', 'oshillabeare1d@examiner.com', 'password', '2023-03-23', '2020-11-22', 1, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('Tyler', 'Moline', '100-000-0000', 'master', 'master', '2023-03-23', '2020-11-22', 0, 1);
insert into Users (first_name, last_name, phone, email, password, date_created, hire_date, user_type, active) values ('John', 'Ispson', '000-000-0000', 'user', 'user', '2023-03-23', '2020-11-22', 1, 1);



insert into Competencies (comp_id, comp_name, date_created) values (1, 'Data Types', '2022-4-4');
insert into Competencies (comp_id, comp_name, date_created) values (2, 'Variables', '2023-2-16');
insert into Competencies (comp_id, comp_name, date_created) values (3, 'Functions', '2022-7-27 ');
insert into Competencies (comp_id, comp_name, date_created) values (4, 'Boolean Logic', '2022-10-20');
insert into Competencies (comp_id, comp_name, date_created) values (5, 'Conditionals', '2022-12-18');
insert into Competencies (comp_id, comp_name, date_created) values (6, 'Loops', '2022-11-17');
insert into Competencies (comp_id, comp_name, date_created) values (7, 'Data Structures', '2022-12-30');
insert into Competencies (comp_id, comp_name, date_created) values (8, 'Lists', '2022-12-5');
insert into Competencies (comp_id, comp_name, date_created) values (9, 'Dictionaries', '2023-2-27');
insert into Competencies (comp_id, comp_name, date_created) values (10, 'Working with Files', '2022-7-31');
insert into Competencies (comp_id, comp_name, date_created) values (11, 'Exception Handling', '2022-4-21');
insert into Competencies (comp_id, comp_name, date_created) values (12, 'Quality Assurance (QA)', '2023-1-31');
insert into Competencies (comp_id, comp_name, date_created) values (13, 'Object-Oriented Programming', '2022-9-4');
insert into Competencies (comp_id, comp_name, date_created) values (14, 'Recursion', '2022-11-4');
insert into Competencies (comp_id, comp_name, date_created) values (15, 'Databases', '2022-10-2');


insert into Assessment (comp_id, assessment_name, date_created) values (1, 'data_types_manager_test', '2022-5-2');
insert into Assessment (comp_id, assessment_name, date_created) values (1, 'data_types_self_taken_test', '2023-1-1');
insert into Assessment (comp_id, assessment_name, date_created) values (2, 'variables_manager_test', '2022-9-10');
insert into Assessment (comp_id, assessment_name, date_created) values (2, 'variables_self_taken_test', '2022-11-26');
insert into Assessment (comp_id, assessment_name, date_created) values (3, 'functions_manager_test', '2022-4-18');
insert into Assessment (comp_id, assessment_name, date_created) values (3, 'functions_self_taken_test', '2022-4-20');
insert into Assessment (comp_id, assessment_name, date_created) values (4, 'bool_logic_manager_test', '2023-1-20');
insert into Assessment (comp_id, assessment_name, date_created) values (4, 'bool_logic_self_taken_test', '2022-10-5');
insert into Assessment (comp_id, assessment_name, date_created) values (5, 'conditionals_manager_test', '2023-2-10');
insert into Assessment (comp_id, assessment_name, date_created) values (5, 'conditionals_self_taken_test', '2022-11-22');
insert into Assessment (comp_id, assessment_name, date_created) values (6, 'loops_manager_test', '2023-2-5');
insert into Assessment (comp_id, assessment_name, date_created) values (6, 'loops_self_taken_test', '2022-4-10');
insert into Assessment (comp_id, assessment_name, date_created) values (7, 'data_structures_manager_test', '2022-10-9');
insert into Assessment (comp_id, assessment_name, date_created) values (7, 'data_structures_self_taken_test', '2022-8-9');
insert into Assessment (comp_id, assessment_name, date_created) values (8, 'list_manager_test', '2022-6-18');
insert into Assessment (comp_id, assessment_name, date_created) values (8, 'list_self_taken_test', '2022-10-2');
insert into Assessment (comp_id, assessment_name, date_created) values (9, 'dictionaries_manager_test', '2022-10-2');
insert into Assessment (comp_id, assessment_name, date_created) values (9, 'dictionaries_self_taken_test', '2023-2-5');
insert into Assessment (comp_id, assessment_name, date_created) values (10, 'working_with_files_manager_test', '2023-2-6');
insert into Assessment (comp_id, assessment_name, date_created) values (10, 'working_with_files_self_taken_test', '2022-7-4');
insert into Assessment (comp_id, assessment_name, date_created) values (11, 'exception_handling_manager_test', '2022-4-16');
insert into Assessment (comp_id, assessment_name, date_created) values (11, 'exception_handling_self_taken_test', '2023-1-15');
insert into Assessment (comp_id, assessment_name, date_created) values (12, 'QA_manager_test', '2022-5-11');
insert into Assessment (comp_id, assessment_name, date_created) values (12, 'QA_self_taken_test', '2022-7-4');
insert into Assessment (comp_id, assessment_name, date_created) values (13, 'object_orientated_programming_manager_test', '2022-6-25');
insert into Assessment (comp_id, assessment_name, date_created) values (13, 'object_orientated_programming_self_taken_test', '2022-10-28');
insert into Assessment (comp_id, assessment_name, date_created) values (14, 'recursion_manager_test', '2023-1-7');
insert into Assessment (comp_id, assessment_name, date_created) values (14, 'recursion_self_taken_test', '2023-1-7');
insert into Assessment (comp_id, assessment_name, date_created) values (15, 'databases_manager_test', '2022-12-25');
insert into Assessment (comp_id, assessment_name, date_created) values (15, 'databases_self_taken_test', '2022-10-16');


insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (45, 10, 4, '2020-11-18', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (38, 10, 0, '2020-10-13', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (43, 25, 1, '2020-10-17', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (49, 6, 2, '2022-06-17', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (16, 24, 3, '2022-11-16', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (5, 10, 4, '2021-03-03', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (48, 22, 1, '2020-09-25', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (12, 2, 1, '2021-02-12', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (46, 1, 4, '2020-07-28', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (29, 6, 1, '2021-10-16', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (34, 25, 0, '2022-10-10', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (2, 16, 0, '2021-08-25', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (22, 16, 2, '2021-07-14', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (37, 20, 3, '2020-06-13', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (19, 1, 4, '2022-01-21', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (50, 24, 0, '2022-12-31', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (4, 30, 4, '2020-11-28', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (25, 18, 3, '2020-10-28', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (2, 6, 3, '2021-05-28', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (30, 1, 2, '2021-07-13', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (10, 17, 4, '2020-10-08', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (11, 21, 4, '2022-03-22', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (5, 28, 1, '2020-08-22', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (19, 29, 3, '2021-01-27', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (18, 14, 3, '2022-07-19', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (7, 5, 1, '2021-09-09', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (31, 8, 4, '2022-06-20', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (5, 17, 4, '2021-06-03', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (49, 13, 0, '2020-08-03', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (14, 16, 1, '2021-02-02', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (24, 1, 4, '2021-05-04', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (8, 4, 3, '2023-01-15', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (15, 19, 2, '2022-02-01', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (40, 22, 4, '2022-01-19', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (37, 6, 1, '2021-04-26', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (24, 27, 0, '2021-12-10', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (47, 30, 4, '2021-08-15', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (13, 14, 1, '2020-07-10', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (47, 7, 0, '2020-06-17', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (2, 25, 2, '2022-11-11', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (34, 30, 1, '2021-12-05', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (2, 21, 1, '2020-10-09', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (5, 19, 3, '2020-10-22', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (30, 13, 1, '2022-01-16', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (21, 23, 1, '2021-06-03', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (2, 20, 4, '2020-08-20', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (1, 29, 0, '2021-09-26', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (26, 5, 4, '2022-12-31', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (45, 20, 2, '2021-10-02', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (15, 25, 1, '2022-07-30', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (13, 27, 2, '2022-01-04', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (37, 8, 3, '2020-11-02', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (48, 19, 4, '2021-07-25', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (36, 30, 2, '2022-03-16', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (5, 14, 1, '2020-12-29', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (2, 23, 0, '2022-06-14', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (17, 19, 4, '2021-09-28', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (45, 18, 3, '2021-02-22', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (20, 13, 0, '2022-06-08', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (33, 10, 1, '2023-02-06', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (49, 6, 1, '2022-06-01', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (45, 14, 1, '2021-05-12', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (10, 3, 0, '2021-09-06', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (9, 12, 3, '2023-02-15', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (28, 23, 1, '2021-07-31', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (50, 9, 2, '2020-11-14', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (47, 17, 2, '2021-04-07', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (34, 13, 0, '2022-03-12', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (18, 26, 3, '2022-12-18', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (49, 7, 2, '2020-08-11', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (23, 15, 1, '2021-06-07', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (26, 18, 4, '2021-05-25', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (19, 7, 1, '2020-12-05', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (6, 1, 3, '2020-10-09', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (33, 21, 1, '2022-06-08', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (22, 29, 3, '2022-05-14', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (40, 29, 2, '2022-03-15', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (12, 29, 0, '2022-07-14', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (40, 7, 3, '2021-05-26', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (49, 7, 1, '2021-06-18', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (24, 6, 0, '2021-11-17', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (18, 4, 4, '2021-05-17', 4);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (19, 16, 2, '2021-03-13', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (19, 2, 1, '2022-04-07', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (45, 3, 4, '2021-03-28', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (14, 23, 1, '2022-07-23', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (36, 29, 4, '2022-06-21', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (31, 5, 4, '2021-12-13', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (16, 20, 0, '2023-02-12', 12);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (27, 6, 4, '2020-08-22', 1);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (47, 19, 0, '2021-03-17', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (42, 30, 2, '2021-08-27', 9);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (20, 9, 1, '2020-12-12', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (10, 3, 3, '2021-05-30', 2);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (17, 24, 1, '2020-10-03', 26);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (30, 26, 3, '2022-03-26', 24);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (32, 12, 1, '2023-01-02', 30);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (3, 15, 1, '2022-11-12', 6);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (11, 1, 1, '2021-02-12', 18);
insert into Assessment_results (user_id, assess_id, score, date_taken, manager_id) values (12, 13, 1, '2020-06-04', 2);