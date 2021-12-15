-- write your queries to insert data here
insert into client(first_name, last_name, email) values('Sara', 'Smith', 'smiths@hello.com');
insert into client(first_name, last_name, email) values('Miguel', 'Cabrera', 'mc@hello.com');
insert into client(first_name, last_name, email) values('Bo', "Chan'g", 'bochang@hello.com');

insert into employee(first_name, last_name, start_date, email) values('Ananya', 'Jaiswal', '2008-04-10', 'ajaiswal@hello.com');
insert into employee(first_name, last_name, start_date, email) values('Michael', 'Fern', '2015-07-19', 'michaelf@hello.com');
insert into employee(first_name, last_name, start_date, email) values('Abdul', 'Rehman', '2018-02-27', 'rehman@hello.com');

insert into project(cid, title, comments) values((select id from client where first_name='Sara' and last_name='Smith'), 'Diamond', 'Should be done by Jan 2019');
insert into project(cid, title, comments) values((select id from client where first_name='Bo' and last_name="Chan'g"), "Chan'g", 'Ongoing maintenance');
insert into project(cid, title, comments) values((select id from client where first_name='Miguel' and last_name='Cabrera'), 'The Robinson Project', null);

insert into works_on(eid, pid, due_date) values((select id as eid from employee where first_name='Ananya' and last_name='Jaiswal'), (select id as pid from project where title="Chan'g"),'2020-11-19');
insert into works_on(eid, pid, due_date) values((select id as eid from employee where first_name='Michael' and last_name='Fern'), (select id as pid from project where title='The Robinson Project'),'2020-12-05');
insert into works_on(eid, pid, due_date) values((select id as eid from employee where first_name='Abdul' and last_name='Rehman'), (select id as pid from project where title='Diamond'),'2021-01-01');

-- Leave the queries below untouched. These are to test your submission correctly.
select * from project;
select * from client;
select * from employee;
select * from works_on;
