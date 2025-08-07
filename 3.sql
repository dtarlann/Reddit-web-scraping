INSERT INTO 
    product_segment (segment, discount)
VALUES
    ('Grand Luxury', 0.06),
    ('Luxury', 0.07),
    ('Mass', 0.11);


INSERT INTO 
    product (name, price, segment_id) 
VALUES 
    ('Armchair', 804.89, 1),
    ('Bed', 228.55, 3),
    ('Bookcase', 366.45, 2),
    ('Chair', 145.33, 3),
    ('Clock', 551.77, 2),
    ('Cupboard', 261.58, 3),
    ('Desk', 519.62, 2),
    ('Mirror', 843.31, 1),
    ('Sofa', 254.18, 3),
    ('Table', 427.78, 2),
    ('Wardrobe', 936.29, 1),
    ('Iron', 910.34, 1),
    ('Lamp', 208.33, 3),
    ('Washing Machine', 985.45, 1),
    ('Fridge', 841.26, 1),
    ('Dishwasher', 896.38, 1),
    ('Oven', 575.74, 2),
    ('Toaster', 530.64, 2),
    ('Tray', 892.43, 1),
    ('Carpet', 161.71, 3);

INSERT INTO 
	courses(course_name, description, published_date)
VALUES
	('PostgreSQL for Developers','A complete PostgreSQL for Developers','2020-07-13'),
	('PostgreSQL Admininstration','A PostgreSQL Guide for DBA',NULL),
	('PostgreSQL High Performance',NULL,NULL),
	('PostgreSQL Bootcamp','Learn PostgreSQL via Bootcamp','2013-07-11'),
	('Mastering PostgreSQL','Mastering PostgreSQL in 21 Days','2012-06-30');

INSERT INTO cars(brand, price, discount)
VALUES
	('Mercedes', 10000, 100),
	('BMW', 15000, 200),
	('Ford', 8000, 50),
	('KIA', 5000, NULL),
	('Audi', 12000, NULL),
	('Tesla', 17000, 500),
	('Ferrai', 250000, 750),
	('Honda', 145000, NULL),
	('Toyota', 135000, 1000),
	('Maserati', 1250000, 1500),
	('Peugeot', 15600, 300),
	('Citroen', 16000, NULL);

INSERT INTO car_types (type_name)
VALUES 
	('Micro'),
	('Sedan'),
	('CUV'),
	('SUV'),
	('Hatchback'),
	('Pickup'),
	('Station Wagon'),
	('Coupe'),
	('Sportcar'),
	('Cabriolet'),
	('Van'),
	('Minivan'),
	('Panelvan'),
	('Truck'),
	('Big Truck');

INSERT INTO colors
VALUES 
	('White'),
	('Black'),
	('Green');

INSERT INTO distinct_demo (bcolor, fcolor)
VALUES
	('red', 'red'),
	('red', 'red'),
	('red', NULL),
	(NULL, 'red'),
	('red', 'green'),
	('red', 'blue'),
	('green', 'red'),
	('green', 'blue'),
	('green', 'green'),
	('blue', 'red'),
	('blue', 'green'),
	('blue', 'blue');

INSERT INTO basket_a (id_a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cherry'),
    (5, 'Fig'),
    (6, 'Lemon'),
    (7, 'Cucumber');

INSERT INTO basket_b (id_b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Mango'),
    (5, 'Strawberry'),
    (6, 'Pear');

INSERT INTO movies(title)
VALUES
      ('The Hunger Games: Catching Fire'),
      ('Avengers: Endgame'),
      ('Hobbit'),
      ('The Game'),
      ('Armageddon'),
      ('Jack Reacher'),
      ('Battleship'),
      ('Oblivion'),
      ('Inception'),
      ('Lord Of The Rings: The Two Towers');

INSERT INTO movie_reviews(movie_id, review)
VALUES
      (1, 'Excellent'),
      (1, 'Awesome'),
      (2, 'Cool'),
      (2, 'Good'),
      (3, 'Awesome'),
      (NULL, 'Cool'),
      (5, 'Very Good'),
      (6, 'Funny'),
      (7, 'Horrible'),
      (8, 'Cool'),
      (NULL, 'Beautiful'),
      (NULL, 'Awesome');

INSERT INTO budgets 
VALUES
	(10, 120000, 100000), 
	(20, 222000, 222000),  
	(30, NULL, 150000), 
	(40, 175000, 175000),  
	(50, 220000, 200000),
	(60, 185000, 184000);

INSERT INTO public.staff (staff_id,first_name,last_name,hire_date,departure_date) 
VALUES
	 (100,'Steven','King','2008-06-17','2015-08-04'),
	 (101,'Neena','Kochhar','2010-09-21','2015-10-25'),
	 (102,'Lex','De Haan','2014-01-13','2016-01-27'),
	 (103,'Alexander','Hunold','2011-01-03','2021-03-11'),
	 (104,'Bruce','Ernst','2012-05-21','2016-06-17'),
	 (105,'David','Austin','2018-06-25','2020-07-08'),
	 (106,'Valli','Pataballa','2019-02-05','2026-03-24'),
	 (107,'Diana','Lorentz','2020-02-07','2022-02-20'),
	 (109,'Daniel','Faviet','2015-08-16','2020-09-18'),
	 (111,'Ismael','Sciarra','2018-09-30','2022-10-27');
INSERT INTO public.staff (staff_id,first_name,last_name,hire_date,departure_date) 
VALUES
	 (112,'Jose Manuel','Urman','2019-03-07','2029-05-13'),
	 (113,'Luis','Popp','2020-12-07','2031-02-13'),
	 (115,'Alexander','Khoo','2016-05-18','2017-05-25'),
	 (116,'Shelli','Baida','2018-12-24','2024-01-27'),
	 (117,'Sigal','Tobias','2018-07-24','2019-07-31'),
	 (118,'Guy','Himuro','2019-11-15','2023-12-12'),
	 (119,'Karen','Colmenares','2020-08-10','2021-08-17'),
	 (126,'Irene','Mikkilineni','2019-09-28','2029-12-04'),
	 (176,'Jonathon','Taylor','2019-03-24','2029-05-30'),
	 (177,'Jack','Livingston','2019-04-23','2027-06-16');
INSERT INTO public.staff (staff_id,first_name,last_name,hire_date,departure_date) 
VALUES
	 (178,'Kimberely','Grant','2020-05-24','2025-06-27'),
	 (108,'Nancy','Greenberg','2015-08-17','2021-09-26'),
	 (114,'Den','Raphaely','2015-12-07','2018-12-27'),
	 (120,'Matthew','Weiss','2017-07-18','2019-08-01'),
	 (121,'Adam','Fripp','2018-04-10','2024-05-20'),
	 (122,'Payam','Kaufling','2016-05-01','2017-05-08'),
	 (123,'Shanta','Vollman','2018-10-10','2020-10-23'),
	 (145,'John','Russell','2017-10-01','2018-10-08'),
	 (146,'Karen','Partners','2018-01-05','2024-02-15'),
	 (110,'John','Chen','2018-09-28','2027-11-28');
INSERT INTO public.staff (staff_id,first_name,last_name,hire_date,departure_date) 
VALUES
	 (179,'Charles','Johnson','2021-01-04','2023-01-18'),
	 (192,'Sarah','Bell','2017-02-04','2020-02-25'),
	 (193,'Britney','Everett','2018-03-03','2021-03-23'),
	 (202,'Pat','Fay','2018-08-17','2023-09-20'),
	 (203,'Susan','Mavris','2015-06-07','2016-06-13'),
	 (206,'William','Gietz','2015-06-07','2023-07-31'),
	 (200,'Jennifer','Whalen','2008-09-17','2011-10-08'),
	 (204,'Hermann','Baer','2015-06-07','2016-06-13'),
	 (201,'Michael','Hartstein','2017-02-17','2023-03-30'),
	 (205,'Shelley','Higgins','2015-06-07','2021-07-17');

INSERT INTO date_demo (date_value_str)
VALUES 
	('20230405'), 
	('2023 APRIL 05'),
	('2023 april 05'),
	('2023 APR 05'),
	('2023 240'),
	('February 08, 2023'),
	('MARCH 07 2015');

INSERT INTO student (id, name, class, mark, gender, course_name) 
VALUES
	(1, 'John Deo', 4, 75, 'female', 'Economics'),
	(2, 'Max Ruin', 3, 85, 'male', 'Mechanical Engineer'),
	(3, 'Arnold', 3, 55, 'male', 'Mechanical Engineer'),
	(4, 'Krish Star', 4, 60, 'female', 'Economics'),
	(5, 'John Mike', 4, 60, 'female', 'Dentistry'),
	(6, 'Alex John', 4, 55, 'male', 'Mechanical Engineer'),
	(7, 'My John Rob', 5, 78, 'male', 'Mechanical Engineer'),
	(8, 'Asruid', 5, 85, 'male', 'Dentistry'),
	(9, 'Tes Qry', 6, 78, 'male', 'Economics'),
	(10, 'Big John', 4, 55, 'female', 'Computer Science'),
	(11, 'Ronald', 6, 89, 'female', 'Dentistry'),
	(12, 'Recky', 6, 94, 'female', 'Mechanical Engineer'),
	(13, 'Kty', 7, 88, 'female', 'Computer Science'),
	(14, 'Bigy', 7, 88, 'female', 'Mechanical Engineer'),
	(15, 'Tade Row', 4, 88, 'male', 'Computer Engineer'),
	(16, 'Gimmy', 4, 88, 'male', 'Dentistry'),
	(17, 'Tumyu', 6, 54, 'male', 'Dentistry'),
	(18, 'Honny', 5, 75, 'male', 'Economics'),
	(19, 'Tinny', 9, 18, 'male', 'Dentistry'),
	(20, 'Jackly', 9, 65, 'female', 'Computer Engineer'),
	(21, 'Babby John', 4, 69, 'female', 'Computer Engineer'),
	(22, 'Reggid', 7, 55, 'female', 'Economics'),
	(23, 'Herod', 8, 79, 'male', 'Computer Science'),
	(24, 'Tiddy Now', 7, 78, 'male', 'Computer Science'),
	(25, 'Giff Tow', 7, 88, 'male', 'Dentistry'),
	(26, 'Crelea', 7, 79, 'male', 'Economics'),
	(27, 'Big Nose', 3, 81, 'female', 'Computer Science'),
	(28, 'Rojj Base', 7, 86, 'female', 'Computer Engineer'),
	(29, 'Tess Played', 7, 55, 'male', 'Computer Science'),
	(30, 'Reppy Red', 6, 79, 'female', 'Economics'),
	(31, 'Marry Toeey', 4, 88, 'male', 'Computer Engineer'),
	(32, 'Binn Rott', 7, 90, 'female', 'Computer Engineer'),
	(33, 'Kenn Rein', 6, 96, 'female', 'Computer Science'),
	(34, 'Gain Toe', 7, 69, 'male', 'Computer Engineer'),
	(35, 'Rows Noump', 6, 88, 'female', 'Economics');

