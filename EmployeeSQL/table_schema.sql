create table titles (
	title_id varchar(10) not null,
	title varchar(20) not null,
	primary key (title_id)
);

create table employees (
	emp_no int not null, 
	emp_title varchar(10),
	birth_date date,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	sex varchar(1) not null,
	hire_date date,
	primary key (emp_no),
	foreign key (emp_title) references titles(title_id)
);

create table departments (
	dept_no varchar(10) not null, 
	dept_name varchar(20) not null, 
	primary key (dept_no)
);

create table dept_manager (
	dept_no varchar(10) not null,
	emp_no int not null,
	primary key (emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)

);

create table dept_emp (
	emp_no int not null, 
	dept_no varchar(10) not null,
	PRIMARY KEY(emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	primary key(emp_no),
	foreign key (emp_no) references employees(emp_no)
);
