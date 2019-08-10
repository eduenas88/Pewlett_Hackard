CREATE TABLE employees (
  emp_no integer PRIMARY KEY NOT NULL,
  birth_date DATE NOT NULL,
  first_name character varying NOT NULL,
  last_name character varying NOT NULL,
  gender VARCHAR NOT NULL, 
  hire_date VARCHAR NOT NULL
);

SELECT * FROM employees; 