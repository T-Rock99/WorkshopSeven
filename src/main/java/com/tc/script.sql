CREATE DATABASE Rexty;

CREATE TABLE dealerships(
dealership_id int AUTO_INCREMENT,
name varchar(50),
address varchar(50),
phone varchar(12),
PRIMARY KEY (dealership_id)
);

CREATE TABLE vehicles(
vehicle_id int AUTO_INCREMENT,
dealership_id int,
year_made int,
odometer int,
price float,
make varchar(50),
model varchar(50),
vehicle_type varchar(50),
vin varchar(50),
color varchar(50),
sold varchar(10),
FOREIGN KEY (dealership_id),
PRIMARY KEY (vehicle_id)
);

CREATE TABLE inventory(
inventory_id int AUTO_INCREMENT,
dealership_id int,
vin varchar(50),
FOREIGN KEY (dealership_id),
PRIMARY KEY (inventory_id)
);

CREATE TABLE sales_contracts(
contracts_id varchar(50) AUTO_INCREMENT,
dealership_id int,
vin varchar(50),
sales_information varchar(500),
date_recorded varchar(50),
FOREIGN KEY (vin),
FOREIGN KEY (dealership_id),
PRIMARY KEY (contracts_id)
);