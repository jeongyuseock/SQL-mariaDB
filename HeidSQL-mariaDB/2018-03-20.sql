select * from member;

select * from basicsalary;

select * from member where `no` = 1004;

select * from basicsalary 
where position = '과장' 
  or  position = '차장'; 

select * from member where `position` =  '사원';

select * from member where `year` <= 10;

select * from basicsalary where 	`salay` >= 5000;

select * from member 
 where `YEAR` < 10 
 and `position` = '대리' ;
 
 
 select now() 
 select count(*) '사원수'from member
 where position = '사원'     







select * from member
order by no   

select * from member
order by no desc

select * from member
order by year desc, no desc


select  count(*) '사원 인원수'from member
where position = '사원' 

select count(*) '과장 인원수' from member
where position = '과장'

select count(*) '5년차 인원수' from member
where year >= 5

select count(*) '1005 미만인 인원수' from member
where  NO > 10005 

select count(*) '직급 전체 수' from basicsalary


select count(position) '직급 전체 수' from basicsalary
select count(distinct(position)) '직급 전체 수' from member 
select count(position) '직급 전체 수' from member 

--이것도 주석처리방법 

