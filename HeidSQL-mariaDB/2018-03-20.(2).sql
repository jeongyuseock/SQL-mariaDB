alter table `news` add column `category` varchar(50)

update news
  set category = 'IT'
  where no = 1;
  
  update news
  set category = '아이폰 x신규 출시'
  where no = 1;
  
  --조건절을 안쓰면 싹다 날라간다 업데이트나 딜리트에는 특히 주의해야함!
  
  
  update member
    set year = year+1;
    
    
   update member 
   set name = '이만수'
   where name = '이천수';
   
   update member 
   set position = '대리'
   where name = '이철수' 
   or  name =  '차범근';
   
   update member 
   set position = '차장'
   where name = '지소연';
   
   update basicsalary 
   set salary = salary+1500
   where position = '부장'
   or position = '차장';
   
   update basicsalary
   set salary = salary+1000
   where position = '과장'
   or position = '대리'
   or position = '사원';
   
   update basicsalary
   set position = '주임'
   where position = '사원';
   
   
   
   
   