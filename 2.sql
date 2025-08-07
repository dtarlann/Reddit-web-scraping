DROP TABLE IF EXISTS product_segment;

CREATE TABLE product_segment (
    id SERIAL PRIMARY KEY,
    segment VARCHAR NOT NULL,
    discount NUMERIC (4, 2)
);

DROP TABLE IF EXISTS product;

CREATE TABLE product(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    price NUMERIC(10,2),
    net_price NUMERIC(10,2),
    segment_id INT NOT NULL,
    FOREIGN KEY(segment_id) REFERENCES product_segment(id)
);

DROP TABLE IF EXISTS courses;

CREATE TABLE courses(
	course_id serial primary key,
	course_name VARCHAR(255) NOT NULL,
	description VARCHAR(500),
	published_date date
);

DROP TABLE IF EXISTS cars;

CREATE TABLE cars(
	ID serial PRIMARY KEY,
	brand VARCHAR (100) NOT NULL,
	price NUMERIC NOT NULL,
	discount NUMERIC
);

DROP TABLE IF EXISTS car_types;

CREATE TABLE car_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR NOT NULL
);

DROP TABLE IF EXISTS colors;

CREATE TABLE colors(
	color VARCHAR
);

DROP TABLE IF EXISTS distinct_demo;

CREATE TABLE distinct_demo (
	id serial NOT NULL PRIMARY KEY,
	bcolor VARCHAR,
	fcolor VARCHAR
);

DROP TABLE IF EXISTS basket_a;

CREATE TABLE basket_a (
    id_a INT PRIMARY KEY,
    fruit_a VARCHAR (50) NOT NULL
);

DROP TABLE IF EXISTS basket_b;

CREATE TABLE basket_b (
    id_b INT PRIMARY KEY,
    fruit_b VARCHAR (50) NOT NULL
);

DROP TABLE IF EXISTS movies;

CREATE TABLE movies(
   movie_id SERIAL PRIMARY KEY,
   title varchar(255) NOT NULL
);

DROP TABLE IF EXISTS movie_reviews;

CREATE TABLE movie_reviews(
   review_id SERIAL PRIMARY KEY,
   movie_id INT,
   review VARCHAR(255) NOT NULL	
);

DROP TABLE IF EXISTS budgets;

CREATE TABLE budgets
(
    salesman_id   NUMERIC NOT NULL,
    current_year  NUMERIC,
    previous_year NUMERIC
);

DROP TABLE IF EXISTS staff;

CREATE TABLE staff (
	staff_id int4 NULL,
	first_name varchar(20) NULL,
	last_name varchar(25) NULL,
	hire_date date NULL,
	departure_date date NULL
);

DROP TABLE IF EXISTS date_demo;

CREATE TABLE date_demo(
	value_id serial primary key,
	date_value_str VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS student;

CREATE TABLE student (
  	id numeric(2) NOT NULL,
  	name varchar(50) NOT NULL,
  	class numeric(2) NOT NULL DEFAULT 1,
  	mark numeric(3) NOT NULL DEFAULT 0,
  	gender varchar(6) NOT NULL DEFAULT 'female',
  	course_name varchar(50),
	email varchar(100)
); 