DROP DATABASE IF EXISTS `fastfood_qzg`;
CREATE DATABASE `fastfood_qzg`;
use `fastfood_qzg`;

#用户 管理员、商户后台用户
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
	`user_id` int NOT NULL auto_increment,
	`account` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
	`user_type` varchar(5) NOT NULL,
	`status` varchar(1) default '1',
	`create_time` datetime NOT NULL,
	primary key (`user_id`),
	unique key (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into user(account,password,user_type,status,create_time) values('admin','ceb4f32325eda6142bd65215f4c0f371','11','1',now());



#品牌
DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
	`brand_id` int NOT NULL auto_increment,
	`brand_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`image_url` varchar(200),
	`contact` varchar(50),
	`contact_mobile` varchar(50),
	`salesman` varchar(50),
	`salesman_mobile` varchar(50),
	`user_id` int NOT NULL,
	`remark` varchar(80),
	`status` varchar(1) NOT NULL,
	`create_time` datetime NOT NULL,
	`last_update_time` datetime NOT NULL,
	primary key (`brand_id`),
	unique key (`brand_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#门店
DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
	`store_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`brand_id` int NOT NULL,
	`province_id` varchar(50) NOT NULL,
	`city_id` varchar(50) NOT NULL,
	`district_id` varchar(50),
	`detail_address` varchar(50),
	`user_id` int NOT NULL,
	`open_time` varchar(50),
	`close_time` varchar(50),
	`contact` varchar(50),
	`contact_no` varchar(50),
	`contact_mobile` varchar(50),
	`image_url` varchar(200),
	`introduction` varchar(200),
	`remark` varchar(80),
	`status` varchar(1) NOT NULL,
	`create_time` datetime NOT NULL,
	`last_update_time` datetime NOT NULL,
	primary key (`store_id`),
	unique key (`store_no`),
	CONSTRAINT `fk_store_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#员工  收银员
DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
	`staff_id` int NOT NULL auto_increment,
	`staff_no` varchar(50) NOT NULL,
	`store_no` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`status` varchar(1) NOT NULL,
	`mobile` varchar(50) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`staff_id`),
	unique key (`staff_no`,`store_no`),
	CONSTRAINT `fk_staff_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#类别
DROP TABLE IF EXISTS `dish_type`;
CREATE TABLE IF NOT EXISTS `dish_type` (
	`dishType_id` int NOT NULL auto_increment,
	`name` varchar(50) NOT NULL,
	`store_no` varchar(50) NOT NULL,
	`type_no` varchar(50) NOT NULL,
	`order_no` tinyint NOT NULL,
	`open_time` varchar(50),
	`close_time` varchar(50),
	`is_deleted` varchar(1) NOT NULL default '0',
	`status` varchar(1) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key(`dishType_id`),
	index (`store_no`),
	CONSTRAINT `fk_dishType_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#菜品
DROP TABLE IF EXISTS `dish`;
CREATE TABLE IF NOT EXISTS `dish` (
	`dish_id` int NOT NULL auto_increment,
	`dish_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`store_no` varchar(50) NOT NULL,
	`order_no` tinyint NOT NULL,
	`dishType_id` int NOT NULL,
	`price` decimal(10,2) NOT NULL,
	`unit_name` varchar(10) NOT NULL,
	`image_url` varchar(200),
	`is_clear` varchar(1) NOT NULL,
	`is_deleted` varchar(1) NOT NULL default '0',
	`status` varchar(1) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key(`dish_id`),
	index (`store_no`),
	CONSTRAINT `fk_dish_dishType` FOREIGN KEY (`dishType_id`) REFERENCES `dish_type` (`dishType_id`),
	CONSTRAINT `fk_dish_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#交接表
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE IF NOT EXISTS `transfer` (
	`transfer_id` int NOT NULL auto_increment,
	`brand_no` varchar(50),
	`store_no` varchar(50) NOT NULL,
	`staff_no` varchar(50) NOT NULL,
	`transfer_time` datetime NOT NULL,
	`total_orders` smallint NOT NULL,
	`total_amount` decimal(10,2) NOT NULL,
	`consume_amount` decimal(10,2) NOT NULL,
	`receive_amount` decimal(10,2) NOT NULL,
	`cash_orders` smallint NOT NULL,
	`cash_amount` decimal(10,2) NOT NULL,
	`wechat_orders` smallint NOT NULL,
	`wechat_amount` decimal(10,2) NOT NULL,
	`cash_delete_orders` smallint NOT NULL,
	`cash_delete_amount` decimal(10,2) NOT NULL,
	`wechat_delete_orders` smallint NOT NULL,
	`wechat_delete_amount` decimal(10,2) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`transfer_id`),
	CONSTRAINT `fk_transfer_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




#订单
DROP TABLE IF EXISTS `doc`;
CREATE TABLE IF NOT EXISTS `doc` (
	`doc_id` int NOT NULL auto_increment,
	`doc_no` varchar(50) NOT NULL,
	`brand_no` varchar(50),
	`store_no` varchar(50) NOT NULL,
	`amount` decimal(10,2) NOT NULL,
	`order_time` datetime NOT NULL,
	`staff_no` varchar(50) NOT NULL,
	`doc_type` varchar(1) NOT NULL,
	`pay_type` varchar(1) NOT NULL,
	`is_deleted` varchar(1),
	`wechat_account` varchar(50),
	`transfer_id` int NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`doc_id`),
	index (`store_no`),
	index (`brand_no`),
	unique key (`store_no`,`doc_no`,`order_time`),
	CONSTRAINT `fk_doc_transfer` FOREIGN KEY (`transfer_id`) REFERENCES `transfer` (`transfer_id`),
	CONSTRAINT `fk_doc_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



#订单明细
DROP TABLE IF EXISTS `doc_detail`;
CREATE TABLE IF NOT EXISTS `doc_detail` (
	`docdetail_id` int NOT NULL auto_increment,
	`doc_id` int NOT NULL,
	`dish_id` int NOT NULL,
	`quantity` smallint NOT NULL,
	primary key (`docdetail_id`),
	CONSTRAINT `fk_docdetail_doc` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`doc_id`),
	CONSTRAINT `fk_docdetail_dish` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



#收银监控表
DROP TABLE IF EXISTS `equip_monitor`;
CREATE TABLE IF NOT EXISTS `equip_monitor` (
	`equipMonitor_id` int NOT NULL auto_increment,
	`brand_no` varchar(50),
	`store_no` varchar(50) NOT NULL,
	`serial_no` varchar(50) NOT NULL,
	`version_no` varchar(20) NOT NULL,
	`last_login_time` datetime NOT NULL,
	`last_transfer_time` datetime,
	`last_staff` varchar(50) NOT NULL,
	`is_data_upload` varchar(1) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`equipMonitor_id`),
	CONSTRAINT `fk_equip_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#台位表
DROP TABLE IF EXISTS `store_table`;
CREATE TABLE IF NOT EXISTS `store_table` (
	`table_id` int NOT NULL auto_increment,
	`store_no` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`image_url` varchar(200) NOT NULL,
	`create_time` datetime NOT NULL,
	primary key (`table_id`),
	index (`store_no`),
	CONSTRAINT `fk_table_store` FOREIGN KEY (`store_no`) REFERENCES `store` (`store_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

