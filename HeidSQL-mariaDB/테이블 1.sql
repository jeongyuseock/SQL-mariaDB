 create table KOPO_PRODUCT_VOLUME
 (
  REGIONID VARCHAR(20 BYTE),
  PRODUCTGORUP VARCHAR(20 BYTE),
  YEARWEEK VARCHAR(6 BYTE),
  VOLUME NUMBER
  );
  
  select REGIONID,PRODUCTGORUP,YEARWEEK,VOLUME
  from kopo_product_volume;
  
  alter user JYS
  IDENTIFIED BY JYS
  ACCOUNT UNLOCK