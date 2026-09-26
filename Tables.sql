create table exp_categories (
  category_id    number primary key,
  name  varchar2(100) not null unique
);

create table employee (
  emp_id            number primary key,
  emp_no   varchar2(20) unique,
  full_name     varchar2(150) not null,
  email         varchar2(150) not null unique,
  department    varchar2(100),
  manager_id    number references employee(emp_id),
  app_username  varchar2(100) unique
);


create table emp_expenses (
  expense_id            number primary key,
  emp_id   number not null references employee(emp_id),
  category_id   number not null references exp_categories(category_id),
  description   varchar2(200) not null,
  amount        number(10,2) not null,
  spent_on      date default sysdate,
  status        varchar2(20) default 'PENDING' check (status in ('PENDING','APPROVED','REJECTED')),
  receipt_blob  blob,
  receipt_name  varchar2(255),
  receipt_mime  varchar2(100),
  created_by    varchar2(100) ,
  created_on    date default sysdate,
  approved_by   varchar2(100),
  approved_on   date,
  reject_reason varchar2(4000)
);
