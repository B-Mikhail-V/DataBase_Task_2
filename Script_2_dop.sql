create table if not exists departments(
id serial primary key,
department_name varchar(255) not null unique,
chief varchar(80) not null
);
create table if not exists employees(
id serial primary key,
employee_name varchar(80) not null,
department_id integer not null references department(id)
);
