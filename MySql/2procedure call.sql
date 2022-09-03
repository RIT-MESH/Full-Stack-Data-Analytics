DELIMITER &&
create procedure dataset()
BEGIN
	select * from bank_details;
END &&

call dataset()



DELIMITER &&
create procedure bal_max()
BEGIN
	select * from bank_details where balance in (select max(balance) from bank_details);
END &&


DELIMITER &&
create procedure bal_max()
BEGIN
	select * from bank_details where balance in (select max(balance) from bank_details);
END &&

call bal_max()


DELIMITER &&
create procedure avg_bal_jobrole1(IN sudh varchar(30))
BEGIN
	select  avg(balance) from bank_details where job = sudh;
END &&

call avg_bal_jobrole1('admin.')

call avg_bal_jobrole1('retired')


call avg_bal_jobrole1('unknown')




DELIMITER &&
create procedure sel_edu_job1(in v1 varchar(30) , in v2 varchar(30) ) 
BEGIN
	select * from bank_details where education = v1 and job = v2;
END &&

call sel_edu_job1('tertiary' , 'retired')


create view bank_view as select age , job , marital , balance , education from bank_details; 

select  avg(balance) from bank_view where job = 'admin.'




