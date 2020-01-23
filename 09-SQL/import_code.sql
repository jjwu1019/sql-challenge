CREATE TABLE departments (
  dept_no character varying(45) NOT NULL,
  dept_name character varying(45) NOT NULL
);

select * from departments

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(50) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

select * from dept_emp

CREATE TABLE dept_manager (
  dept_no character varying(50) NOT NULL,
  emp_no integer NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

select * from dept_manager

CREATE TABLE employees (
  emp_no integer NOT NULL,
  birth_date timestamp without time zone DEFAULT now() NOT NULL,
  first_name character varying(50) NOT NULL,
  last_name character varying(50) NOT NULL,
  gender character varying(50) NOT NULL,
  hire_date timestamp without time zone DEFAULT now() NOT NULL
);

select * from employees

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

select * from salaries

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying(50) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

select * from titles
