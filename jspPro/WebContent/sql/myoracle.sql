create table query (id varchar2(20) primary key,
pw varchar2(20) not null,
name varchar2(20) not null,
vclass varchar2(20) not null,
phone varchar2(30) not null);

select *from query;

create table test(
	num number,
	name varchar2(10),
	primary key(num) );
	
select * from test;