DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
  dept_no VARCHAR NOT NULL PRIMARY KEY,
  dept_name character varying NOT NULL
 );

DROP TABLE IF EXISTS dept_emp ;
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no VARCHAR NOT NULL,
  from_date VARCHAR NOT NULL,
  to_date VARCHAR
);

CREATE TABLE  dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no integer NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR
);

