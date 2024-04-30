Create table departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name Varchar(50) not null
);    


Create table dept_emp (
	emp_no int not null, 
	dept_no varchar(5) not null,
	PRIMARY KEY (emp_no,dept_no),
	Foreign key (emp_no) references employees(emp_no),
	Foreign key (dept_no) references departments(dept_no)
);    



Create table dept_manager (
	dept_no varchar(5) not null,
	emp_no int not null, 
	PRIMARY KEY (dept_no,emp_no),
	Foreign Key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
  
  
  CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date varchar(10) NOT NULL,  --changed to varchar because date wasnt working 
    first_name VARCHAR(50) NOT NULL,  
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date varchar(10) NOT NULL,  --changed to varchar because date wasnt working 
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 
);    


create table salaries (
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);


create table titles (
	title_id varchar(5) primary key,
	title varchar(30)
); 

select * from departments 

select * from employees

select * from salaries 

select * from titles




