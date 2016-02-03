prompt PL/SQL Developer import file
prompt Created on 2016年3月11日 by Administrator
set feedback off
set define off
prompt Dropping T_GOODS...
drop table T_GOODS cascade constraints;
prompt Dropping T_GOODS_CAR...
drop table T_GOODS_CAR cascade constraints;
prompt Dropping T_GTYPE...
drop table T_GTYPE cascade constraints;
prompt Dropping T_ORDER...
drop table T_ORDER cascade constraints;
prompt Dropping T_ORDERTAIL...
drop table T_ORDERTAIL cascade constraints;
prompt Dropping T_ROLE...
drop table T_ROLE cascade constraints;
prompt Dropping T_USER...
drop table T_USER cascade constraints;
prompt Creating T_GOODS...
create table T_GOODS
(
  ID        NUMBER not null,
  GOODSNAME VARCHAR2(32),
  GOODSTYPE NUMBER,
  COUNT     NUMBER,
  PRICE     NUMBER,
  GOODSPIC  VARCHAR2(64),
  GOODSDESC VARCHAR2(128)
)
;

prompt Creating T_GOODS_CAR...
create table T_GOODS_CAR
(
  ID        NUMBER not null,
  USER_ID   NUMBER,
  GID       NUMBER,
  GOODSNAME VARCHAR2(64),
  BUYTIME   DATE,
  BUYTOTAL  NUMBER,
  PRICE     NUMBER
)
;

prompt Creating T_GTYPE...
create table T_GTYPE
(
  ID       NUMBER not null,
  PID      NUMBER not null,
  TYPENAME VARCHAR2(32) not null,
  NOTE     VARCHAR2(64)
)
;

prompt Creating T_ORDER...
create table T_ORDER
(
  ID       NUMBER not null,
  BUYTIME  DATE,
  TOTAL    NUMBER,
  STATUS   NUMBER,
  SENDTIME DATE,
  PAYORNOT NUMBER,
  USERID   NUMBER
)
;

prompt Creating T_ORDERTAIL...
create table T_ORDERTAIL
(
  ID      NUMBER not null,
  ORDERID NUMBER,
  GID     NUMBER,
  GPIC    VARCHAR2(64),
  PRICE   NUMBER,
  COUNT   NUMBER
)
;

prompt Creating T_ROLE...
create table T_ROLE
(
  ID       NUMBER not null,
  ROLENAME VARCHAR2(32)
)
;

prompt Creating T_USER...
create table T_USER
(
  ID        NUMBER not null,
  USERNAME  VARCHAR2(64),
  PASSWORD  VARCHAR2(64),
  ROLE      NUMBER,
  EMAIL     VARCHAR2(64),
  ADDRESS   VARCHAR2(64),
  CELLPHONE VARCHAR2(64),
  GENDER    VARCHAR2(64),
  REGDATE   DATE,
  REALNAME  VARCHAR2(64),
  HEADER    VARCHAR2(64)
)
;

prompt Loading T_GOODS...
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (2, '男牛仔裤', 7, 20, 200, null, 'bbb');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (3, '女风衣', 8, 30, 300, null, 'ccc');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (4, '女保暖裤', 9, 40, 400, null, 'ddd');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (5, 'oppo音乐手机', 10, 50, 500, null, 'eee');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (6, 'nubia摄像手机', 11, 60, 600, null, 'fff');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (7, '佳能70D相机', 12, 70, 500, null, 'ggg');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (8, 'Acer57VZ笔记本', 13, 80, 400, null, 'hhh');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (9, '大宝洗面奶', 14, 90, 300, null, 'eee');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (10, '大宝护手霜', 15, 100, 200, null, 'iii');
insert into T_GOODS (ID, GOODSNAME, GOODSTYPE, COUNT, PRICE, GOODSPIC, GOODSDESC)
values (1, '男毛衣', 6, 10, 100, null, 'aaa');
commit;
prompt 10 records loaded
prompt Loading T_GOODS_CAR...
insert into T_GOODS_CAR (ID, USER_ID, GID, GOODSNAME, BUYTIME, BUYTOTAL, PRICE)
values (238, 1, 12, 'ceshi', to_date('20-01-2016 10:56:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into T_GOODS_CAR (ID, USER_ID, GID, GOODSNAME, BUYTIME, BUYTOTAL, PRICE)
values (226, 1, 1, '男夹克', to_date('20-01-2016 09:43:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 100);
commit;
prompt 2 records loaded
prompt Loading T_GTYPE...
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (1, 0, '男装', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (2, 0, '女装', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (3, 0, '手机', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (4, 0, '数码', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (5, 0, '化妆品', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (7, 1, '男裤', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (8, 2, '女上衣', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (9, 2, '女裤', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (10, 3, '音乐手机', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (11, 3, '摄像手机', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (12, 4, '数码相机', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (13, 4, '笔记本电脑', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (14, 5, '洗面奶', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (15, 5, '护手霜', null);
insert into T_GTYPE (ID, PID, TYPENAME, NOTE)
values (6, 1, '男上衣', null);
commit;
prompt 15 records loaded
prompt Loading T_ORDER...
insert into T_ORDER (ID, BUYTIME, TOTAL, STATUS, SENDTIME, PAYORNOT, USERID)
values (261, to_date('23-01-2016 20:13:07', 'dd-mm-yyyy hh24:mi:ss'), 101, 1, to_date('23-01-2016 20:14:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into T_ORDER (ID, BUYTIME, TOTAL, STATUS, SENDTIME, PAYORNOT, USERID)
values (242, to_date('20-01-2016 10:58:06', 'dd-mm-yyyy hh24:mi:ss'), 101, 1, to_date('20-01-2016 10:58:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into T_ORDER (ID, BUYTIME, TOTAL, STATUS, SENDTIME, PAYORNOT, USERID)
values (234, to_date('20-01-2016 10:29:34', 'dd-mm-yyyy hh24:mi:ss'), 100, 1, to_date('20-01-2016 10:30:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into T_ORDER (ID, BUYTIME, TOTAL, STATUS, SENDTIME, PAYORNOT, USERID)
values (232, to_date('20-01-2016 09:44:44', 'dd-mm-yyyy hh24:mi:ss'), 100, 1, to_date('20-01-2016 09:45:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
commit;
prompt 4 records loaded
prompt Loading T_ORDERTAIL...
insert into T_ORDERTAIL (ID, ORDERID, GID, GPIC, PRICE, COUNT)
values (262, 261, 12, null, 1, 1);
insert into T_ORDERTAIL (ID, ORDERID, GID, GPIC, PRICE, COUNT)
values (263, 261, 1, null, 100, 1);
insert into T_ORDERTAIL (ID, ORDERID, GID, GPIC, PRICE, COUNT)
values (243, 242, 12, null, 1, 1);
insert into T_ORDERTAIL (ID, ORDERID, GID, GPIC, PRICE, COUNT)
values (244, 242, 1, null, 100, 1);
insert into T_ORDERTAIL (ID, ORDERID, GID, GPIC, PRICE, COUNT)
values (235, 234, 1, null, 100, 1);
insert into T_ORDERTAIL (ID, ORDERID, GID, GPIC, PRICE, COUNT)
values (233, 232, 1, null, 100, 1);
commit;
prompt 6 records loaded
prompt Loading T_ROLE...
insert into T_ROLE (ID, ROLENAME)
values (1, 'customer');
insert into T_ROLE (ID, ROLENAME)
values (2, 'seller');
insert into T_ROLE (ID, ROLENAME)
values (3, 'administrator');
commit;
prompt 3 records loaded
prompt Loading T_USER...
insert into T_USER (ID, USERNAME, PASSWORD, ROLE, EMAIL, ADDRESS, CELLPHONE, GENDER, REGDATE, REALNAME, HEADER)
values (4, 'admin4', '123', 1, 'admin4@qq.com', '天津市高新技术开发区', '4567890', '男', to_date('04-01-2016', 'dd-mm-yyyy'), '赵六', null);
insert into T_USER (ID, USERNAME, PASSWORD, ROLE, EMAIL, ADDRESS, CELLPHONE, GENDER, REGDATE, REALNAME, HEADER)
values (5, 'admin5', '123', 2, 'admin5@qq.com', '河南省郑州市二七区', '5678901', '男', to_date('05-01-2016', 'dd-mm-yyyy'), '钱七', null);
insert into T_USER (ID, USERNAME, PASSWORD, ROLE, EMAIL, ADDRESS, CELLPHONE, GENDER, REGDATE, REALNAME, HEADER)
values (6, 'admin6', '123', 3, 'admin6@qq.com', '黑龙江省哈尔滨市南岗区', '6789012', '女', to_date('06-01-2016', 'dd-mm-yyyy'), '孙八', null);
insert into T_USER (ID, USERNAME, PASSWORD, ROLE, EMAIL, ADDRESS, CELLPHONE, GENDER, REGDATE, REALNAME, HEADER)
values (1, 'admin1', '123', 1, 'admin1@qq.com', '江苏省南通市通州区科教城', '1234567', '男', to_date('01-01-2016', 'dd-mm-yyyy'), '张三', null);
insert into T_USER (ID, USERNAME, PASSWORD, ROLE, EMAIL, ADDRESS, CELLPHONE, GENDER, REGDATE, REALNAME, HEADER)
values (2, 'admin2', '123', 2, 'admin2@qq.com', '北京市海淀区清华大学', '2345678', '女', to_date('02-01-2016', 'dd-mm-yyyy'), '李四', null);
insert into T_USER (ID, USERNAME, PASSWORD, ROLE, EMAIL, ADDRESS, CELLPHONE, GENDER, REGDATE, REALNAME, HEADER)
values (3, 'admin3', '123', 3, 'admin3@qq.com', '上海市浦东新区东方明珠', '3456789', '男', to_date('03-01-2016', 'dd-mm-yyyy'), '王五', null);
commit;
prompt 6 records loaded
set feedback on
set define on
prompt Done.
