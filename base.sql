create database telegram_bot;
\c telegram_bot;

CREATE TABLE times(id SERIAL PRIMARY KEY, start_time time NOT NULL, end_time time NOT NULL);
INSERT INTO times(start_time, end_time) VALUES ('09:30','11:05');
INSERT INTO times(start_time, end_time) VALUES ('11:20','12:55');
INSERT INTO times(start_time, end_time) VALUES ('13:10','14:45');
INSERT INTO times(start_time, end_time) VALUES ('15:25','17:00');
INSERT INTO times(start_time, end_time) VALUES ('17:15','18:50');
CREATE TABLE departments(id SERIAL PRIMARY KEY, link VARCHAR NOT NULL, room_numb VARCHAR NOT NULL);
CREATE TABLE teachers(id SERIAL PRIMARY KEY, surname VARCHAR NOT NULL, name VARCHAR NOT NULL, id_department INTEGER, FOREIGN KEY (id_department) REFERENCES departments(id));
CREATE TABLE subject(id SERIAL PRIMARY KEY, name VARCHAR NOT NULL UNIQUE, id_teacher INTEGER, FOREIGN KEY (id_teacher) REFERENCES teachers(id));
INSERT INTO subject(name) VALUES ('<Пусто>');
CREATE TABLE timetable(id SERIAL PRIMARY KEY,is_even_week BOOLEAN NOT NULL, day INTEGER CHECK (day>0 and day<7) NOT NULL, id_time INTEGER NOT NULL, id_subj INTEGER NOT NULL, room_numb VARCHAR NOT NULL,FOREIGN KEY (id_time) REFERENCES times(id), FOREIGN KEY (id_subj) REFERENCES subject(id));

INSERT INTO teachers(surname, name) VALUES ('Королева','Светлана Анатольевна');
INSERT INTO teachers(surname, name) VALUES ('Воронова','Е.В.');
INSERT INTO teachers(surname, name) VALUES ('Файзулаев','Владимир Нуруллаевич');
INSERT INTO teachers(surname, name) VALUES ('Скляр','Лидия Николаевна');
INSERT INTO teachers(surname, name) VALUES ('Шаймарданова','Лилия Кимматовна');
INSERT INTO teachers(surname, name) VALUES ('Вальковский','Сергей Николаевич');
INSERT INTO teachers(surname, name) VALUES ('Фурлетов','Юрий Михайлович');
INSERT INTO teachers(surname, name) VALUES ('Тимчук','Андрей Васильевич');
INSERT INTO teachers(surname, name) VALUES ('Полищук','Юрий Владимирович');
INSERT INTO teachers(surname, name) VALUES ('Тренин','Андрей Евгеньевич');

INSERT INTO subject(name,id_teacher) VALUES ('Физ.культ.',1);
INSERT INTO subject(name,id_teacher) VALUES ('ИНО, практика',2);
INSERT INTO subject(name,id_teacher) VALUES ('Физика, практика',3);
INSERT INTO subject(name,id_teacher) VALUES ('История, практика',4);
INSERT INTO subject(name,id_teacher) VALUES ('Вышмат, практика',5);
INSERT INTO subject(name,id_teacher) VALUES ('Вышмат, лекция',5);
INSERT INTO subject(name,id_teacher) VALUES ('Физика, лекция',6);
INSERT INTO subject(name,id_teacher) VALUES ('ВвИТ, практика',7);
INSERT INTO subject(name,id_teacher) VALUES ('DevOps, практика',8);
INSERT INTO subject(name,id_teacher) VALUES ('История, лекция',4);
INSERT INTO subject(name,id_teacher) VALUES ('Базы Данных, лекция',9);
INSERT INTO subject(name,id_teacher) VALUES ('Базы Данных, практика',9);
INSERT INTO subject(name,id_teacher) VALUES ('Физика, лаб.',10);
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,1,1,2,'Н-С/З');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,1,2,3,'Н-322');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,1,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,1,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,1,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,2,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,2,2,3,'Н-405');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,2,3,4,'Н-332а');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,2,4,5,'Н-318');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,2,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,3,1,6,'Н-301');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,3,2,6,'Н-301');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,3,3,7,'Н-514');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,3,4,8,'Н-226');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,3,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,4,1,9,'А-Л-203');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,4,2,10,'А-ВЦ-206');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,4,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,4,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,4,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,5,1,11,'Н-227');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,5,2,12,'Н-535');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,5,3,2,'Н-С/З');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,5,4,13,'Н-410');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,5,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,6,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,6,2,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,6,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,6,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (False,6,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,1,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,1,2,7,'Н-514');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,1,3,5,'Н-316');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,1,4,14,'Н-340');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,1,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,2,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,2,2,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,2,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,2,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,2,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,3,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,3,2,10,'А-ВЦ-302');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,3,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,3,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,3,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,4,1,9,'А-Л-205');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,4,2,9,'А-Л-205');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,4,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,4,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,4,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,5,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,5,2,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,5,3,2,'Н-С/З');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,5,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,5,5,1,'<пусто>');

INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,6,1,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,6,2,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,6,3,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,6,4,1,'<пусто>');
INSERT INTO timetable(is_even_week, day, id_time, id_subj, room_numb) VALUES (True,6,5,1,'<пусто>');
