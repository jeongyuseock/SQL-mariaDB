
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
  
    
    
    edit lefttable     --edit�� �����ϰ� ���̺� insert �ϰ� delete �ϴ� ����
    
     edit righttable 
     
     edit promotiontable
     
     
    select * from lefttable 
    
    select * from righttable
    
    select * from promotiontable
    
    
   --left ����
    select a.*, b.productname  
    from lefttable a left join righttable b 
    on a.productgroup = b.productid
    --inner ����
     select a.*, b.productname  
    from lefttable a inner join righttable b 
    on a.productgroup = b.productid
    
    
    
    
    
    
    --Ű�� 3�� �϶�  3������
    
     select * from righttable
     
    -- a���̺� : ���� ���� ���̺�
    select a.*, b.productname , c.promotionretto -- ���⿡ c.promo~~ ���ο� ���̺� ���ο� ���̺����μ�������
    from lefttable a
    left join righttable b
    on a.productgroup = b.productid
    left join promotiontable c 
    on a.yearweek = c.promotionweek
   





    -- c ���̺� : ���θ�� ���� ���̺�
    from lefttable a 
    
    left join righttable c
    
    --ù���� Ű : ��ǰ
    on a.productgroup = c.productgroup
    
    --�ι��� Ű : ��������
    and a.yearweek = c.promotionweek
    
    
    
    

--����3�� �ϱ�

select a.*, b.productname , c.promotionretto
    from lefttable a
    left join righttable b
    on a.productgroup = b.productid
    --�ι�° ����Ʈ���� 
    left join promotiontable c 
    on a.yearweek = c.promotionweek
    
    
    
    -- �������� �����ѵ� �ؿ���ó���ؾ� �������� ���� ����
    -- Ű ���� �����Ҷ� �������̶�� �����ϸ�� ��ǻ�Ͱ� �ν��ϴ±����� 
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
    
    --�ι�° ����Ʈ���� 
    left join promotiontable c 
    on a.yearweek = c.promotionweek
    
    
    
    
    
    
    select a. *
    , b.productname
    , c.promotionretto
    -- a���̺� : �������� ���̺�
    from lefttable a,
    righttable b,
    promotiontable c
    
    where 1=1
    and a.productgroup = b.productid (+)     -- +�� ���� inner���� �ȵ��� left ����   +�� ����Ʈ�����̶�� ������
    and a.productgroup = c.promotionweek (+)
    and a.yearweek = c.promotionweek (+)
    
    
    
    select * from lefttable
    where 1=1 
    and yearweek = '201502'
   
    
    
    
    
   

   
   
