

--Cameron Wertelka
--Lab1
--SQL Statements to create tables

drop table if exists cars cascade;
drop table if exists customers cascade;
drop table if exists sales cascade;

create table cars (
	id serial,
	make text,
	model text,
	price decimal(10,2),
	primary key(id)
);

create table customers (
	id serial,
	first_name text,
	last_name text,
	sex char(1),
	primary key(id)
);

create table sales (
	id serial,
	car_id integer references cars(id),
	customer_id integer references customers(id),
	primary key(id)
);
