 create table kopo_event_info_foreign(
 eventid varchar2(20),
 eventperiod varchar2(20),
 PROMOTION_RATIO NUMBER,
 constraint pk_kopo_event_info_foreign primary key(eventid));

 create TABLE KOPO_PRODUCT_VOLUME_FOREIGN(
 REGIONID VARCHAR2(20),
 PRODUCTGROUP VARCHAR2(20),
 YEARWEEK VARCHAR2(8),
 VOLUME NUMBER NOT NULL,
 EVENTID VARCHAR2(20),
 constraint pk_kopo_product_volume_foreign primary key(REGIONID, PRODUCTGROUP, YEARWEEK),
 constraint fk_kopo_product_volume_foreign foreign key(eventid) references kopo_event_info_foreign(eventid) 
 on delete set null);    //테이블 만들때 마지막에 넣어주면 됨 혹은 on delete set null 행사정보만 지운다


select * from KOPO_PRODUCT_VOLUME_FOREIGN

select * from KOPO_EVENT_INFO_FOREIGN

desc KOPO_PRODUCT_VOLUME_FOREIGN


alter table kopo_product_volume_foreign enable constraint fk_kopo_product_volume_foreign

DELETE FROM KOPO_EVENT_INFO_FOREIGN
WHERE EVENTID = 'EV00001'


drop table kopo_event_info_foreign

















