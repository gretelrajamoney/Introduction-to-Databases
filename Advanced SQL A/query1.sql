-- Write the query to create the 4 tables below.
create table client(id integer(11) primary key auto_increment, first_name varchar(255) not null, last_name varchar(255) not null, email varchar(255) not null, constraint full_name unique(first_name, last_name));
create table employee(id integer(11) primary key auto_increment, first_name varchar(255) not null, last_name varchar(255) not null, start_date date not null, email varchar(255) not null, constraint full_name unique(first_name, last_name));
create table project(id integer(11) primary key auto_increment, title varchar(255) not null unique, comments text, cid integer(11), foreign key(cid) references client(id));
create table works_on(pid integer(11), eid integer(11), due_date date not null, primary key(eid,pid), foreign key(pid) references project(id), foreign key(eid) references employee(id));


-- Leave the queries below untouched. These are to test your submission correctly.
-- Test that the tables were created
DESCRIBE client;
DESCRIBE employee;
DESCRIBE project;
DESCRIBE works_on;

-- Test that the correct foreign keys were created 
SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_SCHEMA = 'grade';



