（1）用户注册及登录模块；（2）整合腾讯微博模块；（3）失物招领模块；
（4）新闻及公告通知模块；（5）用户活动发布及召集模块；（6）校园地理信息查询模块； (7)用户信息模块
--用户登录表
create table user_login(
  uid int primary key auto_increment,
  login_name varchar(50) ,
  user_pwd varchar(12)
);

--组织信息
create table union_info(
  union_id int primary key auto_increment,
  union_superior int null,
  union_name varchar(100),
  union_address varchar(250),
  union_contact varchar(250),
  union_introduction text  
);
--用户详细信息
create table user_info(
  uid int primary key,
  user_name varchar(50),
  gender char(1),
  user_email varchar(55),
  user_union int, 
  user_union_history varchar(255),
  user_address varchar(255),
  user_contact varchar(255),
  user_photo text
);
--新闻等各种
--DATETIME 8 1000-01-01 00:00:00/9999-12-31 23:59:59 YYYY-MM-DD HH:MM:SS  
create table news(
  news_id int primary key auto_increment,
  news_author int ,
  news_union int,
  news_title varchar(50),
  news_date TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP, 
  news_visits int ,
  news_discuss char(1) default '0',
  news_flag char(1) default 'n',
  news_content text
);
--news_discuss 0 不允许评论 1允许评论
--flag 新闻 x 活动 h 失物招领 s

--评论
create table discuss(
  diss_id int primary key auto_increment,
  diss_pre int null,
  news_id int,
  diss_author int,
  diss_date TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  diss_content text
);
--diss_pre 评论的前一条

--表备注
create table remarks(
  table_name varchar(50),
  table_remark varchar(255)
)