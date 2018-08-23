use `fastfood_qzg`;
#`version_no` varchar(20) NOT NULL, ok
#unique key (`store_no`,`doc_no`,`order_time`) ok
#alter table doc add column predoc_no varchar(50);ok
#alter table brand add column appId varchar(50) default null;ok
#storeNo serialNo ?
#alter table store_table add column table_no varchar(5);ok
#alter table doc_detail add column `price` decimal(10,2);
#update doc_detail d set d.price=(select price from dish where dish_id=d.dish_id);
#alter table predoc_detail add column `price` decimal(10,2);
#update predoc_detail d set d.price=(select price from dish where dish_id=d.dish_id);
#alter table predoc add column `doc_type` varchar(1);
#alter table predoc add column `is_consumed` varchar(1)  default '0';
#alter table transfer add column `serial_no` varchar(50);
#alter table transfer add column `login_time` datetime;


#预订单 ok
DROP TABLE IF EXISTS `predoc`;
CREATE TABLE IF NOT EXISTS `predoc` (
	`predoc_id` int NOT NULL auto_increment,
	`predoc_no` varchar(50) NOT NULL,
	`brand_no` varchar(50) NOT NULL,
	`store_no` varchar(50) NOT NULL,
	`amount` decimal(10,2) NOT NULL,
	`table_id` int NOT NULL,
	`order_time` datetime NOT NULL,
	`is_pay` varchar(1) default '0',
	`wechat_account` varchar(50),
	`create_time` datetime NOT NULL,
	primary key (`predoc_id`),
	index (`store_no`),
	unique key (`predoc_no`,`order_time`),
	CONSTRAINT `fk_predoc_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



#预订单明细 ok
DROP TABLE IF EXISTS `predoc_detail`;
CREATE TABLE IF NOT EXISTS `predoc_detail` (
	`predoc_detail_id` int NOT NULL auto_increment,
	`predoc_id` int NOT NULL,
	`dish_id` int NOT NULL,
	`quantity` smallint NOT NULL,
	primary key (`predoc_detail_id`),
	CONSTRAINT `fk_predoc_detail_doc` FOREIGN KEY (`predoc_id`) REFERENCES `predoc` (`predoc_id`),
	CONSTRAINT `fk_predoc_detail_dish` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



------- 4.14 分单打印------- 
DROP TABLE IF EXISTS `printer`;
CREATE TABLE IF NOT EXISTS `printer` (
	`printer_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`printer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table dish_type add column printer_id int;
alter table dish add column printer_id int;

------- 4.15 外卖------- 

alter table brand add column is_takeaway_enable varchar(1) default '0';

alter table predoc add column takeaway_status varchar(5) default '0';

DROP TABLE IF EXISTS `takeaway_doc`;
CREATE TABLE IF NOT EXISTS `takeaway_doc` (
	`takeaway_doc_id` int NOT NULL auto_increment,
	`predoc_no` varchar(50) NOT NULL,
	`contact` varchar(50) NOT NULL,
	`mobile` varchar(50) NOT NULL,
	`address` varchar(50) NOT NULL,
	`diliver_time` varchar(50) NOT NULL,
	`pay_type` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`takeaway_doc_id`),
	index (`predoc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `store_takeaway`;
CREATE TABLE IF NOT EXISTS `store_takeaway` (
	`store_takeaway_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`diliver_time` varchar(300) NOT NULL,
	`least_price` decimal(10,2) NOT NULL,
	`pay_type` varchar(50) NOT NULL,
	`remark` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`store_takeaway_id`),
	index (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




-------4.20 付款方式---------------

DROP TABLE IF EXISTS `pay`;
CREATE TABLE IF NOT EXISTS `pay` (
	`pay_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`pay_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`order_no` tinyint(4) NOT NULL,
	`unit` varchar(10) NOT NULL,
	`status` varchar(1) NOT NULL default '1',
	`create_time` datetime  default now(),
	primary key (`pay_id`),
	index (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into pay(store_no,pay_no,name,order_no,unit) values('0','001','人民币','1','元');
insert into pay(store_no,pay_no,name,order_no,unit) values('0','002','微信支付','2','元');

DROP TABLE IF EXISTS `doc_pay`;
CREATE TABLE IF NOT EXISTS `doc_pay` (
	`doc_pay_id` int NOT NULL auto_increment,
	`doc_id` int NOT NULL,
	`pay_id` int NOT NULL,
	`name` varchar(50) NOT NULL,
	`unit` varchar(10) NOT NULL,
	`amount` decimal(10,2) NOT NULL,
	primary key (`doc_pay_id`),
	CONSTRAINT FOREIGN KEY (`doc_id`) REFERENCES `doc` (`doc_id`),
	CONSTRAINT FOREIGN KEY (`pay_id`) REFERENCES `pay` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 insert into doc_pay (doc_id,pay_id,name,unit,amount)
 select doc_id , 
 (case when (doc_type='0'||doc_type='3') then 1 else 2 end) pay_id,
 (case when (doc_type='0'||doc_type='3') then '人民币' else '微信支付' end) name,
 '元' unit,
 amount amount
 from doc;

DROP TABLE IF EXISTS `predoc_pay`;
CREATE TABLE IF NOT EXISTS `predoc_pay` (
	`predoc_pay_id` int NOT NULL auto_increment,
	`predoc_id` int NOT NULL,
	`pay_id` int NOT NULL,
	`name` varchar(50) NOT NULL,
	`unit` varchar(10) NOT NULL,
	`amount` decimal(10,2) NOT NULL,
	primary key (`predoc_pay_id`),
	CONSTRAINT FOREIGN KEY (`predoc_id`) REFERENCES `predoc` (`predoc_id`),
	CONSTRAINT FOREIGN KEY (`pay_id`) REFERENCES `pay` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



 insert into predoc_pay (predoc_id,pay_id,name,unit,amount)
 select predoc_id , 
 (case when (doc_type='0'||doc_type='3') then 1 else 2 end) pay_id,
 (case when (doc_type='0'||doc_type='3') then '人民币' else '微信支付' end) name,
 '元' unit,
 amount amount
 from predoc;

update predoc set doc_type = '1' where doc_type is null;
 

 
 
alter table dish add column a_price decimal(10,2);

alter table store add column is_aprice_enable varchar(1) default '0';
alter table store add column discount_rates varchar(50);
alter table store add column is_day_push_enable varchar(1) default '0';





alter table doc add column received_amount decimal(10,2) not null;  
alter table doc add column discount_amount decimal(10,2) not null;
update doc set received_amount = amount where received_amount=0;

alter table predoc add column received_amount decimal(10,2) not null;  
alter table predoc add column discount_amount decimal(10,2) not null;
update predoc set received_amount = amount where received_amount=0;

alter table takeaway_doc drop column pay_type;

alter table doc modify column pay_type varchar(5);
update doc set pay_type = '2' where pay_type= '1';
update doc set pay_type = '1' where pay_type= '0';
 --- test ok ---



------ 4.28  做法类别 做法------

DROP TABLE IF EXISTS `facture_type`;
CREATE TABLE IF NOT EXISTS `facture_type` (
	`facture_type_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`order_no` tinyint NOT NULL,
	`status` varchar(1) NOT NULL,
	`limit_num` varchar(10) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`facture_type_id`),
	index (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
	`facture_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`order_no` tinyint NOT NULL,
	`facture_type_id` int NOT NULL,
	`status` varchar(1) NOT NULL,
	`price` decimal(10,2) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`facture_id`),
	index (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dish_facture`;
CREATE TABLE IF NOT EXISTS `dish_facture` (
	`dish_facture_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`dish_id` int NOT NULL,
	`facture_type_id` int NOT NULL,
	`facture_id` int NOT NULL,
	primary key (`dish_facture_id`),
	index (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `doc_facture`;
CREATE TABLE IF NOT EXISTS `doc_facture` (
	`doc_facture_id` int NOT NULL auto_increment,
	`doc_id` int NOT NULL,
	`docdetail_id` int NOT NULL,
	`dish_id` int NOT NULL,
	`facture_type_id` int NOT NULL,
	`facture_id` int NOT NULL,
	`price` decimal(10,2) NOT NULL,
	primary key (`doc_facture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table doc add column ought_amount decimal(10,2);-- not null; 
alter table doc_detail add column received_amount decimal(10,2);-- not null; 


------ 5.4  反结账------

DROP TABLE IF EXISTS `refund`;
CREATE TABLE IF NOT EXISTS `refund` (
	`refund_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`order_no` tinyint(4) NOT NULL,
	`status` varchar(1) NOT NULL default '1',
	`create_time` datetime  default now(),
	primary key (`refund_id`),
	index (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into refund(store_no,name,order_no) values('0','菜未上，顾客反悔','1');
insert into refund(store_no,name,order_no) values('0','出品原因','2');

alter table doc add column refund_id int;
alter table doc modify column is_deleted varchar(5) NOT NULL default '0';

--- local ---
alter table doc add column discount_rate decimal(10,2);-- not null;
alter table doc add column round_amount decimal(10,2);--  not null;

alter table doc_detail add column is_deleted varchar(5) default '0';
--NOT NULL 


--above ok
---- 5.12  套餐  -----

--套餐类别--
DROP TABLE IF EXISTS `dishset_type`;
CREATE TABLE `dishset_type` (
  `dishset_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type_no` varchar(50) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `status` varchar(1) NOT NULL,
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL default now(),
  PRIMARY KEY (`dishset_type_id`),
  index (`store_no`),
  CONSTRAINT FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--套餐--
DROP TABLE IF EXISTS `dishset`;
CREATE TABLE IF NOT EXISTS `dishset` (
	`dishset_id` int NOT NULL auto_increment,
	`dishset_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`store_no` varchar(50) NOT NULL,
	`order_no` tinyint NOT NULL,
	`dishset_type_id` int NOT NULL,
	`price` decimal(10,2) NOT NULL,
	`a_price` decimal(10,2),
	`image_url` varchar(200),
	`is_clear` varchar(1) NOT NULL,
	`is_deleted` varchar(1) NOT NULL default '0',
	`status` varchar(1) NOT NULL,
	`create_time` datetime NOT NULL default now(),
	primary key(`dishset_id`),
	index (`store_no`),
	CONSTRAINT  FOREIGN KEY (`dishset_type_id`) REFERENCES `dishset_type` (`dishset_type_id`),
	CONSTRAINT FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dishset_detail`;
CREATE TABLE IF NOT EXISTS `dishset_detail` (
	`dishset_detail_id` int NOT NULL auto_increment,
	`detail_name` varchar(50) NOT NULL,
	`dishset_id` int NOT NULL,
	`options` varchar(10) NOT NULL,
	primary key(`dishset_detail_id`),
	CONSTRAINT  FOREIGN KEY (`dishset_id`) REFERENCES `dishset` (`dishset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dishset_dish`;
CREATE TABLE IF NOT EXISTS `dishset_dish` (
	`dishset_dish_id` int NOT NULL auto_increment,
	`dishset_id` int NOT NULL,
	`dishset_detail_id` int NOT NULL,
	`dish_id` int NOT NULL,
	`dish_name` varchar(50) NOT NULL,
	`add_price` decimal(10,2) NOT NULL,
	primary key(`dishset_dish_id`),
	CONSTRAINT  FOREIGN KEY (`dishset_detail_id`) REFERENCES `dishset_detail` (`dishset_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table doc_detail modify column dish_id int;
alter table doc_detail add column dishset_id int;
alter table doc_detail add column name varchar(50);

DROP TABLE IF EXISTS `doc_dishset_detail`;
CREATE TABLE IF NOT EXISTS `doc_dishset_detail` (
	`doc_dishset_detail_id` int NOT NULL auto_increment,
	`doc_id` int NOT NULL,
	`docdetail_id` int NOT NULL,
	`dishset_id` int NOT NULL,
	`dishset_detail_id` int NOT NULL,
	`dishset_dish_id` int NOT NULL,
	`detail_name` varchar(50) NOT NULL,
	`dish_id` int NOT NULL,
	`dish_name` varchar(50) NOT NULL,
	`price` decimal(10,2) NOT NULL,
	`quantity` smallint NOT NULL,
	`received_amount` decimal(10,2) NOT NULL,
	primary key (`doc_dishset_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table doc_facture add column doc_dishset_detail_id int;


-----5.19  限时优惠 ----
alter table dish add column `benifit_start_time` varchar(50);
alter table dish add column `benifit_end_time` varchar(50);
alter table dish add column `benifit_price` decimal(10,2);
alter table dish add column `is_offline` varchar(5);


alter table dishset add column `benifit_start_time` varchar(50);
alter table dishset add column `benifit_end_time` varchar(50);
alter table dishset add column `benifit_price` decimal(10,2);
alter table dishset add column `is_offline` varchar(5);

alter table dish add column `limit_num` int;
alter table dish add column `cur_limit_num` int;

alter table dishset add column `limit_num` int;
alter table dishset add column `cur_limit_num` int;

更新doc_detail deleted根据doc deleted
update doc_detail set is_deleted = '0' where 
doc_id in (select doc_id from doc where doc.is_deleted = '0');

exists(select 1 from doc where doc_detail.doc_id=doc.doc_id
and doc.is_deleted = '1')

select * from doc_detail where exists(select 1 from doc where doc_detail.doc_id=doc.doc_id
and doc.is_deleted = '1')

alter table doc add column ought_amount decimal(10,2);


----- 5.31 销售做法排行 库存----
alter table doc_facture add column facture_type_name varchar(50);
alter table doc_facture add column facture_name varchar(50);

update doc_facture set facture_type_id=(select facture_type_id from facture where facture_id=doc_facture.facture_id);
update doc_facture set facture_type_name = (select name from facture_type where facture_type_id=(select facture_type_id from facture where facture_id=doc_facture.facture_id));
update doc_facture set facture_name = (select name from facture where facture_id=doc_facture.facture_id);

update doc_detail set name = (select name from dish where dish_id =doc_detail.dish_id) where name is null and dishset_id is null;



alter table dish add column `no_discount` varchar(5);
alter table dishset add column `no_discount` varchar(5);


DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
	`stock_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`dish_id` int NOT NULL,
	`name` varchar(50) NOT NULL,
	`workshop_in` int NOT NULL default 0,
	`store_in` int NOT NULL default 0,
	`store_out` int NOT NULL default 0,
	`loss` int NOT NULL default 0,
	`dish_sales` int NOT NULL default 0,
	`dishset_sales` int NOT NULL default 0,
	`sales` int NOT NULL default 0,
	`last_day_stock_num` int NOT NULL default 0,
	`stock_num` int NOT NULL default 0,
	`stock_date` date NOT NULL,
	primary key(`stock_id`),
	index (`store_no`),
	CONSTRAINT FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;