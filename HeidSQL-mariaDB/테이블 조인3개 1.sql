
create table lefttable 
(
     regionid varchar2(20),
     productgroup varchar2(20),
     yearweek varchar2(20),
     qty number
)      
  create table righttable 
 ( 
    productid varchar2(20),
    productname varchar2(20)
    
    )
    
    create table promotiontable
  (
     promotionweek varchar2(20),
     promotionretto varchar2(20)
    
  
)  
  
    
    
    edit lefttable     --edit는 간단하게 테이블 insert 하고 delete 하는 명렁어
    
     edit righttable 
     
     edit promotiontable
     
     
    select * from lefttable 
    
    select * from righttable
    
    select * from promotiontable
    
    
   --left 조인
    select a.*, b.productname  
    from lefttable a left join righttable b 
    on a.productgroup = b.productid
    --inner 조인
     select a.*, b.productname  
    from lefttable a inner join righttable b 
    on a.productgroup = b.productid
    
    
    
    
    
    
    --키가 3개 일때  3개조인
    
     select * from righttable
     
    -- a테이블 : 실적 관리 테이블
    select a.*, b.productname , c.promotionretto -- 여기에 c.promo~~ 새로운 테이블씀 새로운 테이블조인수랑동일
    from lefttable a
    left join righttable b
    on a.productgroup = b.productid
    left join promotiontable c 
    on a.yearweek = c.promotionweek
   





    -- c 테이블 : 프로모션 관리 테이블
    from lefttable a 
    
    left join righttable c
    
    --첫번쨰 키 : 상품
    on a.productgroup = c.productgroup
    
    --두번쨰 키 : 주차정보
    and a.yearweek = c.promotionweek
    
    
    
    

--조인3개 하기

select a.*, b.productname , c.promotionretto
    from lefttable a
    left join righttable b
    on a.productgroup = b.productid
    --두번째 레프트조인 
    left join promotiontable c 
    on a.yearweek = c.promotionweek
    
    
    
    -- 위에꺼랑 동일한데 밑에것처럼해야 가독성도 높고 좋다
    -- 키 값을 지정할때 기준점이라고 생각하면됨 컴퓨터가 인식하는기준점 
    -- 
    
    select a.regionid, 
    a.productgroup, 
    a.yeraweek,
    a.qty 
    b.productname,
    c.promotionretto
    
    from lefttable a
    left join righttable b
    on a.productgroup = b.productid
    
    --두번째 레프트조인 
    left join promotiontable c 
    on a.yearweek = c.promotionweek
    
    
    
    
    
    
    select a. *
    , b.productname
    , c.promotionretto
    -- a테이블 : 실적관리 테이블
    from lefttable a,
    righttable b,
    promotiontable c
    
    where 1=1
    and a.productgroup = b.productid (+)     -- +가 들어가면 inner조인 안들어가면 left 조인   +는 레프트조인이라고 생각해
    and a.productgroup = c.promotionweek (+)
    and a.yearweek = c.promotionweek (+)
    
    
    
    select * from lefttable
    where 1=1 
    and yearweek = '201502'
   
    
    
    
    
   

   
   
