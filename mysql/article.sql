#管理员表
create table `work_admin`(
`id` int(11) unsigned not null AUTO_INCREMENT,
`username` varchar(20) not null default  '' COMMENT '姓名',
`realname` varchar(20) not null default  '' COMMENT '真实姓名',
`logo` varchar(50) not null default '',
`password` varchar(32) not null default '' COMMENT '密码',
`code` varchar(10) not null default ''  COMMENT '密码加密码',
`status` tinyint(1)  not null default 1  COMMENT '状态 1正常 0删除 2禁用 ',
`create_time` int(11)  unsigned not null default 0  COMMENT '创建时间',
`update_time` int(11)  unsigned not null default 0  COMMENT '更新时间',
primary key(`id`),
unique key username(`username`)
)engine=innodb AUTO_INCREMENT=1 default charset=utf8;
INSERT INTO `work_admin`(username,realname,password,code,status,create_time,update_time) 
VALUES ( 'superadmin', '程程', '3993a05d83718bac2049649aea3c49ba', '3643', '1', '1521725536', '1521951698');


#用户表
create table `work_author`(
`id` int(11) unsigned not null AUTO_INCREMENT,
`username` varchar(20) not null default  '' COMMENT '姓名',
`realname` varchar(20) not null default  '' COMMENT '真实姓名',
`logo` varchar(50) not null default '',
`password` varchar(32) not null default '' COMMENT '密码',
`code` varchar(10) not null default ''  COMMENT '密码加密码',
`tel` varchar(20) not null default '' COMMENT '电话',
`email` varchar(20) not null default '' COMMENT '邮箱',
`note` text  null  COMMENT '备注',
`status` tinyint(1)  not null default 1  COMMENT '状态 1正常 0删除 2私有 3禁用 ',
`create_time` int(11)  unsigned not null default 0  COMMENT '创建时间',
`update_time` int(11)  unsigned not null default 0  COMMENT '更新时间',
primary key(`id`),
unique key username(`username`)
)engine=innodb AUTO_INCREMENT=1 default charset=utf8;

#类别表
create table `work_category`(
`id` int(11) unsigned not null AUTO_INCREMENT,
`categoryname` varchar(30) not null default  '' COMMENT '类别名',
`status` tinyint(1)  not null default 1  COMMENT '状态 1正常 0删除 2禁用 ',
`create_time` int(11)  unsigned not null default 0  COMMENT '创建时间',
`update_time` int(11)  unsigned not null default 0  COMMENT '更新时间',
primary key(`id`),
unique key categoryname(`categoryname`)
)engine=innodb AUTO_INCREMENT=1 default charset=utf8;
#文章表
create table `work_article`(
`id` int(11) unsigned not null AUTO_INCREMENT,
`title` varchar(50) not null default '',
`logo` varchar(50) not null default '',
`author_id` int(11) not null default 0,
`category_id` int(11) not null default 0,
`description` varchar(250) not null default '',
`content` text  null ,
`up` int(11) not null default 0,
`status` tinyint(1)  not null default 1,
`create_time` int(11)  unsigned not null default 0,
`update_time` int(11)  unsigned not null default 0,
primary key(`id`),
key author_id(`author_id`),
key category_id(`category_id`)
)engine=innodb AUTO_INCREMENT=1 default charset=utf8;
