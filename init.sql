CREATE TABLE EMPLOYEES
(
  EMPLOYEE_ID     SERIAL PRIMARY KEY NOT NULL,
  FIRST_NAME      VARCHAR(20) CONSTRAINT EMP_FIRST_NAME_NN NOT NULL,
  LAST_NAME       VARCHAR(25) CONSTRAINT EMP_LAST_NAME_NN NOT NULL,
  EMAIL           VARCHAR(25) CONSTRAINT EMP_EMAIL_NN NOT NULL,
  PHONE_NUMBER    VARCHAR(20),
  HIRE_DATE       DATE CONSTRAINT EMP_HIRE_DATE_NN NOT NULL,
  COUNTRY_ID      INTEGER,
  SALARY          NUMERIC(8,2),
  COMMISSION_PCT  NUMERIC(2,2),
  DEPARTMENT_ID   INTEGER
);


CREATE TABLE REGIONS
(
REGION_ID    SERIAL PRIMARY KEY NOT NULL,
REGION_NAME  VARCHAR(25)
);


CREATE TABLE COUNTRIES
 (
 COUNTRY_ID    SERIAL PRIMARY KEY NOT NULL,
 COUNTRY_NAME  VARCHAR(40),
 REGION_ID     INTEGER
);

CREATE TABLE DEPARTMENTS
(
  DEPARTMENT_ID    SERIAL PRIMARY KEY NOT NULL,
  DEPARTMENT_NAME  VARCHAR(30) CONSTRAINT DEPT_NAME_NN NOT NULL
);


CREATE UNIQUE INDEX EMP_EMP_ID_PK ON EMPLOYEES
(EMPLOYEE_ID);

CREATE UNIQUE INDEX DEPT_ID_PK ON DEPARTMENTS
(DEPARTMENT_ID);

CREATE UNIQUE INDEX RG_ID_PK ON REGIONS
(REGION_ID);

CREATE UNIQUE INDEX CT_ID_PK ON COUNTRIES
(COUNTRY_ID);


Insert into REGIONS
   ( REGION_NAME)
 Values
   ( 'Europe');
Insert into REGIONS
   ( REGION_NAME)
 Values
   ( 'Americas');
Insert into REGIONS
   ( REGION_NAME)
 Values
   ( 'Asia');
   
  
  INSERT INTO COUNTRIES (COUNTRY_NAME, REGION_ID) VALUES
('United States', 2),
('Canada', 2),
('United Kingdom', 1),
('Germany', 1),
('Australia', 3),
('China', 3),
('Brazil', 2),
('Japan', 3),
('India', 3),
('South Africa', 2);


INSERT INTO DEPARTMENTS (DEPARTMENT_NAME) VALUES
('Human Resources'),
('Finance'),
('Marketing'),
('IT'),
('Sales');

INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Michaela', 'Garcia', 'michaela.garcia@pt.com', '123987654', '2021-11-05', 1, 59000.00, 0.05, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Daniel', 'Wilson', 'daniel.wilson@pt.com', '456789123', '2021-12-10', 2, 62000.00, 0.07, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Sophia', 'Lopez', 'sophia.lopez@pt.com', '987654321', '2022-01-15', 3, 57000.00, 0.06, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Matthew', 'Hernandez', 'matthew.hernandez@pt.com', '321654987', '2022-02-20', 4, 54000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Emma', 'Gonzalez', 'emma.gonzalez@pt.com', '789123456', '2022-03-25', 5, 53000.00, 0.03, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Jacob', 'Perez', 'jacob.perez@pt.com', NULL, '2022-04-30', 6, 60000.00, 0.08, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Olivia', 'Robinson', 'olivia.robinson@pt.com', '321987654', '2022-05-05', 7, 57000.00, 0.05, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Ethan', 'Johnson', 'ethan.johnson@pt.com', '987321654', '2022-06-10', 8, 55000.00, 0.07, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Ava', 'Williams', 'ava.williams@pt.com', '654123987', '2022-07-15', 9, 56000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Noah', 'Jones', 'noah.jones@pt.com', '321789654', '2022-08-20', 10, 58000.00, 0.04, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Liam', 'Brown', 'liam.brown@pt.com', '789654123', '2022-09-25', 1, NULL, NULL, NULL);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Isabella', 'Davis', 'isabella.davis@pt.com', '456123789', '2022-10-30', 2, NULL, NULL, NULL);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Mason', 'Miller', 'mason.miller@pt.com', NULL, '2022-11-05', 3, 59000.00, 0.05, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Sophia', 'Garcia', 'sophia.garcia@pt.com', '123789456', '2022-12-10', 4, 57000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Amelia', 'Wilson', 'amelia.wilson@pt.com', '456123789', '2023-01-15', 5, 55000.00, 0.06, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Logan', 'Martinez', 'logan.martinez@pt.com', '789456123', '2023-02-20', 6, 54000.00, 0.04, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Lucas', 'Anderson', 'lucas.anderson@pt.com', '123789456', '2023-03-25', 7, 53000.00, 0.03, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Olivia', 'Taylor', 'olivia.taylor@pt.com', '456123789', '2023-04-30', 8, 62000.00, 0.08, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Elijah', 'Thomas', 'elijah.thomas@pt.com', '789456123', '2023-05-05', 9, 58000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Harper', 'Jackson', 'harper.jackson@pt.com', '123789456', '2023-06-10', 10, 59000.00, 0.07, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Aiden', 'White', 'aiden.white@pt.com', '456123789', '2023-07-15', 1, 57000.00, 0.06, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Charlotte', 'Harris', 'charlotte.harris@pt.com', '789456123', '2023-08-20', 2, 56000.00, 0.04, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Avery', 'Clark', 'avery.clark@pt.com', NULL, '2023-09-25', 3, 58000.00, 0.03, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Evelyn', 'Lewis', 'evelyn.lewis@pt.com', '456123789', '2023-10-30', 4, 59000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Grayson', 'Lee', 'grayson.lee@pt.com', '789456123', '2023-11-05', 5, 60000.00, 0.05, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Mia', 'Walker', 'mia.walker@pt.com', '123789456', '2023-12-10', 6, 57000.00, 0.07, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('James', 'Hall', 'james.hall@pt.com', '789456123', '2024-01-15', 7, 58000.00, 0.06, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Abigail', 'Allen', 'abigail.allen@pt.com', '123789456', '2024-02-20', 8, 59000.00, 0.04, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Benjamin', 'Young', 'benjamin.young@pt.com', '789456123', '2024-03-25', 9, 61000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Lily', 'Wright', 'lily.wright@pt.com', '123789456', '2024-04-30', 10, 60000.00, 0.08, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Mason', 'King', 'mason.king@pt.com', '789456123', '2024-05-05', 1, 59000.00, 0.05, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Grace', 'Scott', 'grace.scott@pt.com', NULL, '2024-06-10', 2, 57000.00, 0.07, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Jackson', 'Green', 'jackson.green@pt.com', '789456123', '2024-07-15', 3, 56000.00, 0.06, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Ella', 'Baker', 'ella.baker@pt.com', '123789456', '2024-08-20', 4, 58000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Chloe', 'Adams', 'chloe.adams@pt.com', '789456123', '2024-09-25', 5, 60000.00, 0.03, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Carter', 'Evans', 'carter.evans@pt.com', '123789456', '2024-10-30', 6, 61000.00, 0.08, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Aria', 'Rivera', 'aria.rivera@pt.com', '789456123', '2024-11-05', 7, 59000.00, 0.05, 2);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Ryan', 'Long', 'ryan.long@pt.com', '123789456', '2024-12-10', 8, 58000.00, 0.07, 3);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Layla', 'Foster', 'layla.foster@pt.com', '789456123', '2025-01-15', 9, NULL, NULL, NULL);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Nathan', 'Ward', 'nathan.ward@pt.com', NULL, '2025-02-20', 10, 56000.00, 0.04, 5);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Aiden', 'Morales', 'aiden.morales@pt.com', '789456123', '2025-03-25', 1, 54000.00, 0.03, 1);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Ariana', 'Ortiz', 'ariana.ortiz@pt.com', '123789456', '2025-04-30', 2, NULL, NULL, NULL);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Zoe', 'Gomez', 'zoe.gomez@pt.com', '789456123', '2025-05-05', 3, NULL, NULL, NULL);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Sofia', 'Murray', 'sofia.murray@pt.com', NULL, '2025-06-10', 4, 60000.00, NULL, 4);
INSERT INTO public.employees
(first_name, last_name, email, phone_number, hire_date, country_id, salary, commission_pct, department_id)
VALUES('Hudson', 'Kim', 'hudson.kim@pt.com', NULL, '2025-07-15', 5, 59000.00, 0.06, 5);