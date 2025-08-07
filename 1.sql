/*Data for the table regions */

INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East and Africa');


/*Data for the table countries */
INSERT INTO countries(country_id,country_name,region_id) VALUES ('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('ZW','Zimbabwe',4);

/*Data for the table locations */
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');


/*Data for the table jobs */

INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (19,'Stock Manager',5500.00,8500.00);


/*Data for the table departments */

INSERT INTO departments(department_id,department_name,location_id) VALUES (1,'Administration',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (2,'Marketing',1800);
INSERT INTO departments(department_id,department_name,location_id) VALUES (3,'Purchasing',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (4,'Human Resources',2400);
INSERT INTO departments(department_id,department_name,location_id) VALUES (5,'Shipping',1500);
INSERT INTO departments(department_id,department_name,location_id) VALUES (6,'IT',1400);
INSERT INTO departments(department_id,department_name,location_id) VALUES (7,'Public Relations',2700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (8,'Sales',2500);
INSERT INTO departments(department_id,department_name,location_id) VALUES (9,'Executive',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (10,'Finance',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (11,'Accounting',1700);



/*Data for the table employees */

INSERT INTO employees (first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES
	 ('Steven','King','steven.king@sqltutorial.org','515.123.4567','2008-06-17',4,24000.00,NULL,9),
	 ('Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','2010-09-21',5,17000.00,1,9),
	 ('Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','2014-01-13',5,17000.00,1,9),
	 ('Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','2011-01-03',9,9000.00,3,6),
	 ('Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','2012-05-21',9,6000.00,4,6),
	 ('David','Austin','david.austin@sqltutorial.org','590.423.4569','2018-06-25',9,4800.00,4,6),
	 ('Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','2019-02-05',9,4800.00,4,6),
	 ('Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','2020-02-07',9,4200.00,4,6),
	 ('Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','2015-08-16',6,9000.00,22,10),
	 ('Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','2018-09-30',6,7700.00,22,10);
INSERT INTO employees (first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES
	 ('Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','2019-03-07',6,7800.00,22,10),
	 ('Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','2020-12-07',6,6900.00,22,10),
	 ('Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','2016-05-18',13,3100.00,23,3),
	 ('Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','2018-12-24',13,2900.00,23,3),
	 ('Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','2018-07-24',13,2800.00,23,3),
	 ('Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','2019-11-15',13,2600.00,23,3),
	 ('Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','2020-08-10',13,2500.00,23,3),
	 ('Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','2019-09-28',18,2700.00,24,5),
	 ('Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'2019-03-24',16,8600.00,1,8),
	 ('Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'2019-04-23',16,8400.00,1,8);
INSERT INTO employees (first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES
	 ('Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'2020-05-24',16,7000.00,1,8),
	 ('Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','2015-08-17',7,17280.00,2,10),
	 ('Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','2015-12-07',14,15840.00,1,3),
	 ('Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','2017-07-18',19,11520.00,1,5),
	 ('Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','2018-04-10',19,11808.00,1,5),
	 ('Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','2016-05-01',19,11376.00,1,5),
	 ('Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','2018-10-10',19,9360.00,1,5),
	 ('John','Russell','john.russell@sqltutorial.org',NULL,'2017-10-01',15,20160.00,1,8),
	 ('Karen','Partners','karen.partners@sqltutorial.org',NULL,'2018-01-05',15,19440.00,1,8),
	 ('John','Chen','john.chen@sqltutorial.org','515.124.4269','2018-09-28',7,11808.00,22,10);
INSERT INTO employees (first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
VALUES
	 ('Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2021-01-04',16,6200.00,1,8),
	 ('Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','2017-02-04',17,4000.00,27,5),
	 ('Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','2018-03-03',17,3900.00,27,5),
	 ('Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','2018-08-17',11,6000.00,39,2),
	 ('Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','2015-06-07',8,6500.00,2,4),
	 ('William','Gietz','william.gietz@sqltutorial.org','515.123.8181','2015-06-07',1,8300.00,40,11),
	 ('Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','2008-09-17',3,5400.00,27,1),
	 ('Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','2015-06-07',12,11000.00,27,7),
	 ('Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','2017-02-17',10,18720.00,1,2),
	 ('Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','2015-06-07',2,17280.00,2,11);



/*Data for the table dependents */

INSERT INTO public.dependents (first_name,last_name,relationship,employee_id) 
VALUES
	 ('Penelope','Gietz','Child',36),
	 ('Nick','Higgins','Child',40),
	 ('Ed','Whalen','Child',37),
	 ('Jennifer','King','Child',1),
	 ('Johnny','Kochhar','Child',2),
	 ('Bette','De Haan','Child',3),
	 ('Grace','Faviet','Child',9),
	 ('Matthew','Chen','Child',30),
	 ('Joe','Sciarra','Child',10),
	 ('Christian','Urman','Child',11);
INSERT INTO public.dependents (first_name,last_name,relationship,employee_id) 
VALUES
	 ('Zero','Popp','Child',12),
	 ('Karl','Greenberg','Child',22),
	 ('Uma','Mavris','Child',35),
	 ('Vivien','Hunold','Child',4),
	 ('Cuba','Ernst','Child',5),
	 ('Fred','Austin','Child',6),
	 ('Helen','Pataballa','Child',7),
	 ('Dan','Lorentz','Child',8),
	 ('Bob','Hartstein','Child',39),
	 ('Lucille','Fay','Child',34);
INSERT INTO public.dependents (first_name,last_name,relationship,employee_id) 
VALUES
	 ('Kirsten','Baer','Child',38),
	 ('Elvis','Khoo','Child',13),
	 ('Sandra','Baida','Child',14),
	 ('Cameron','Tobias','Child',15),
	 ('Kevin','Himuro','Child',16),
	 ('Rip','Colmenares','Child',17),
	 ('Julia','Raphaely','Child',23),
	 ('Woody','Russell','Child',28),
	 ('Alec','Partners','Child',29),
	 ('Sandra','Taylor','Child',19);