CREATE DATABASE JauntyCoffee;
USE JauntyCoffee;

CREATE TABLE Coffee_Shop (
    shop_id     INT PRIMARY KEY,
    shop_name   VARCHAR(50),
    city        VARCHAR(50),
    state       CHAR(2)
);

CREATE TABLE Supplier (
    supplier_id             INT PRIMARY KEY,
    company_name            VARCHAR(50),
    country                 VARCHAR(30),
    sales_contact_name      VARCHAR(60),
    email                   VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
    employee_id     INT PRIMARY KEY,
    first_name      VARCHAR(30),
    last_name       VARCHAR(30),
    hire_date       DATE,
    job_title       VARCHAR(30),
    shop_id         INT,
    FOREIGN KEY (shop_id) REFERENCES Coffee_Shop(shop_id)
);

CREATE TABLE Coffee (
    coffee_id       INT PRIMARY KEY,
    shop_id         INT,
    supplier_id     INT,
    coffee_name     VARCHAR(30),
    price_per_pound NUMERIC(5,2),
    FOREIGN KEY (shop_id) REFERENCES Coffee_Shop(shop_id),
	FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);