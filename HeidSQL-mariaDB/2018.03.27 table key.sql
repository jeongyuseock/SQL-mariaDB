CREATE TABLE kopo_product_volume(
regionid varchar2(20),
productgroup varchar(20),
yearweek varchar(8),
volume number not null,
constraint pk_kopo_product_volume 
primary key (regionid,productgroup,yearweek));

insert into kopo_product_volume
values('regionid','productgroup',201702,1111);


select * from kopo_product_volume
values ('A01','ST0001','201702','3000');




    
    