 
 
 --left ����
    select a.*, b.productname  
    from lefttable a left join righttable b 
    on a.productgroup = b.productid
    


--������     
select * from kopo_stock_mst;

--�α� ����
select * from kopo_stock_log;




create table kopo_st_jys_join as



select
     a.screen_code
    ,a.screed_div
    ,b.open
    ,b.high
    ,b.low
    ,a.content
    from kopo_stock_mst a
    left join kopo_stock_log b
    on a.screen_code = b.st_code
    where 1=1
    and a.screed_div = 'KOSPI'     -- �������ϴ� ���� ã�±��� ==�÷��� ��ҹ��� ����



select * from kopo_st_jys_join


select
     a.screen_code
    ,a.screed_div
    ,b.open
    ,b.high
    ,b.low
    ,a.content
    from kopo_stock_mst a
    INNER join kopo_stock_log b
    on a.screen_code = b.st_code
    where 1=1
    and a.screed_div = 'KOSPI'     -- �������ϴ� ���� ã�±��� ==�÷��� ��ҹ��� ����
     --���� �̳������̶� ����Ʈ�� �������� ������������ where �������̴�?
     
     
     select * from tabs
     
     
     select
     a.screen_code
    ,a.screed_div
    ,b.open
    ,b.high
    ,b.low
    ,a.content
    from kopo_stock_mst a,
     kopo_stock_log b
    where 1=1
    and a.screen_code = b.st_code
    
    
    select * from kopo_channel_result   
    
    select regionid
        , product
        , count(*)
        from kopo_channel_seasonality_new
       group by regionid, product
       order by regionid, product     
       
       