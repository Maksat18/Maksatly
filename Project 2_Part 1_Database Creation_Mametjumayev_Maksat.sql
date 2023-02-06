CREATE DATABASE Maksatly;
SHOW DATABASES;
USE Maksatly;

/*CREATING TABLE EMPLOYEES*/
CREATE TABLE employees (
    emp_ID VARCHAR(5) PRIMARY KEY NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    job_title VARCHAR(20) NOT NULL,
    hire_date DATE NOT NULL, 
    store_ID VARCHAR(3),
    dept_ID VARCHAR(3),
    address VARCHAR (50) NOT NULL,
    city VARCHAR (20) NOT NULL, 
    state CHAR (2) NOT NULL, 
    zip_code VARCHAR(5) NOT NULL,
    monthly_base_salary DECIMAL(8,2) NOT NULL, 
    emp_bank_name VARCHAR (50) NOT NULL, 
    emp_account_number CHAR(19) NOT NULL, 
    bank_routing_number CHAR(12) NOT NULL, 
    emp_SSN CHAR (11) NOT NULL
);

/*INSERTING VALUES INTO EMPLOYEES*/
INSERT INTO employees VALUES ('E1','Jon','Marcus', 'Driver','2021-01-09','S1','D1','127 Tufts', 'Somerville','MA','02143', 5000.82, 'Bank of America', '4564-6566-6569-8520', '258-895-639', '795-856-321');
INSERT INTO employees VALUES ('E2','Ben','Jonathan', 'Accountant', '2021-10-01' ,Null ,'D2','228 Tufts', 'Somerville','MA','02143', 6589.69,'Bank of America', '4565-2524-6569-8520', '258-896-589', '795-587-321');
INSERT INTO employees VALUES ('E3','Marcus','Benjamin','Sale Manager','2021-11-01', Null,'D3','329 Tufts','Cambridge','MA','02143', 8039.65,'Bank of America', '4566-6566-3256-8520', '258-895-657' , '023-789-654');	

/*CREATING TABLE DEPENDENTS*/
CREATE TABLE dependents (
    dep_ID VARCHAR(5) PRIMARY KEY NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    gender CHAR(1) NOT NULL,
    dob DATE NOT NULL
);

/*INSERTING VALUES INTO DEPENDENTS*/
INSERT INTO dependents VALUES ('DP1','Paul','Benjamin','M','2007-05-02');
INSERT INTO dependents VALUES ('DP2','Jane','Benjamin','F','2008-12-06');
INSERT INTO dependents VALUES ('DP3','Kate','Benjamin','F','2010-09-15');

/*CREATING TABLE EMPLOYEE_DEPENDENTS*/
CREATE TABLE employee_dependents(
emp_ID VARCHAR(5),
dep_ID VARCHAR(5),
PRIMARY KEY (emp_ID,dep_id)
);

/*INSERTING VALUES INTO DEPENDENTS*/
INSERT INTO employee_dependents VALUES ('E3','DP1');
INSERT INTO employee_dependents VALUES ('E3','DP2');
INSERT INTO employee_dependents VALUES ('E3','DP3');

/*CREATING TABLE STORES*/
CREATE TABLE stores (
	store_ID VARCHAR(5) PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR (50) NOT NULL,
    city VARCHAR (20) NOT NULL, 
    state CHAR (2) NOT NULL, 
    zip_code VARCHAR(5) NOT NULL,
    dept_ID VARCHAR(5)
);

/*INSERTING VALUES INTO STORES*/
INSERT INTO stores VALUES('S1','Maksatly NYC','5th Ave','Manhatten','NY','10018','D3');
INSERT INTO stores VALUES('S2','Maksatly Boston','45E Berkley','Boston','MA','02108','D3');
INSERT INTO stores VALUES('S3','Maksatly Dallas','56 Texas Ave', 'Dallas', 'TX', '77494','D3');

/*CREATING TABLE DEPARTMENTS*/
CREATE TABLE departments (
	dept_ID VARCHAR(5) PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR (50) NOT NULL,
    city VARCHAR (20) NOT NULL, 
    state CHAR (2) NOT NULL, 
    zip_code VARCHAR(5) NOT NULL
);
/*INSERTING VALUES INTO DEPARTMENTS*/
INSERT INTO departments VALUES('D1', 'Customer Service', '45E Berkley','Boston','MA','02108');
INSERT INTO departments VALUES('D2','Finance', '45E Berkley', 'Boston', 'MA','02109');
INSERT INTO departments VALUES('D3','Sales Department', '45E Berkley', 'Boston', 'MA','02109');

/*CREATING TABLE CARPETS*/
CREATE TABLE carpets(
    carpet_ID VARCHAR(5) PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    height DECIMAL(8,2) NOT NULL, 
    width DECIMAL(8,2) NOT NULL, 
    description VARCHAR (250),
    price DECIMAL(8,2) NOT NULL, 
    realize_date DATE NOT NULL, 
    sale_status VARCHAR(20)
);

/*INSERTING VALUES INTO CARPETS*/
INSERT INTO carpets VALUES('CAR1','Teke','Red',58.56,30.36,'Shown teke tribes pattern in red color',850.25,'2022-08-02', 'Sold');
INSERT INTO carpets VALUES('CAR2','Teke','Red',58.56,30.36,'Shown teke tribes pattern in red color',758.25,'2018-09-15', 'Sold');
INSERT INTO carpets VALUES('CAR3','Yomut','Blue',58.56, 30.36,'Shown yomut tribes pattern in blue color',850.25,'2022-08-02', 'Sold');

/*CREATING TABLE CLIENTS*/
CREATE TABLE clients (
    client_ID VARCHAR(5) PRIMARY KEY NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    address VARCHAR (50) NOT NULL,
    city VARCHAR (20) NOT NULL, 
    state CHAR (2) NOT NULL, 
    zip_code VARCHAR(5) NOT NULL,
    info_bank_name VARCHAR (50) NOT NULL, 
    card__number VARCHAR(19) NOT NULL, 
    bank_routing_number CHAR(12) NOT NULL, 
    card_CSS_num CHAR(3) NOT NULL
);

/*INSERTING VALUES INTO CLIENTS*/
INSERT INTO clients VALUES('CL1','Susan','Peterson','11 Ave','Manhatten','NY','10018','Chase','4564-6566-5687-8520','299-895-639','132');
INSERT INTO clients VALUES('CL2','Carlos','Jackson','55 Prospect St','Somerville','MA','02413','Citzen','2526-2524-6569-8520','212-596-589','123');
INSERT INTO clients VALUES('CL3' ,'Sofia','	Peterson','58 Texas Ave', 'Dallas','TX','77494','Bank of America','3569-6566-3256-8520','218-595-657','321');

/*CREATING TABLE ORDERS*/
CREATE TABLE orders (
	order_num VARCHAR(15) PRIMARY KEY NOT NULL,
    client_ID VARCHAR(5),
    carpet_ID VARCHAR(5),
    emp_ID VARCHAR(5),
    order_type VARCHAR(10) NOT NULL,
    pick_up_date date,
    shipped_date date,
	tracking_num VARCHAR(20),
    delivery_address VARCHAR (50),
    delivery_city VARCHAR (20), 
    dilvery_state CHAR (2), 
    delivery_zip_code VARCHAR(5),
    arrived_date date
);

/*INSERTING VALUES INTO ORDERS*/
INSERT INTO orders VALUES('859635','CL1','CAR1',null,'Pick-Up','2022-02-10',null,null,null,null,null,null,null);
INSERT INTO orders VALUES('865694','CL2','CAR2','E1', 'Delivery',null,'2022-02-11','256552565452','55 Prospect St','Somerville','MA', '02413','2022-11-11');
INSERT INTO orders VALUES('876549','CL3','CAR3','E1', 'Delivery',null,'2022-02-12','184154854154','58 Texas Ave','Dallas','TX', '77494','2022-12-12');
