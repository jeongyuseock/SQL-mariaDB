 
 
 --left 조인
    select a.*, b.productname  
    from lefttable a left join righttable b 
    on a.productgroup = b.productid
    


--마스터     
select * from kopo_stock_mst;

--로그 실적
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
    and a.screed_div = 'KOSPI'     -- 내가원하는 정보 찾는구간 ==컬럼명 대소문자 구분



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
    and a.screed_div = 'KOSPI'     -- 내가원하는 정보 찾는구간 ==컬럼명 대소문자 구분
     --위에 이너조인이랑 레프트가 같은값이 나오는이유는 where 절떄문이다?
     
     
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
       
       