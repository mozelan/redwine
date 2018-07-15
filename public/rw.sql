#设置客户端连接服务器使用UTF8字符集
SET NAMES utf8;
DROP database if EXISTS rw;
CREATE database rw charset=utf8;
use rw;
/***************    用户表       ******************/
CREATE TABLE users(
  uid INT PRIMARY KEY auto_increment,  #自增的主键
  uname VARCHAR(32) UNIQUE,   #登录名是唯一的
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),
  user_name VARCHAR(32),
  gender INT		     #1-男  0-女
);
INSERT INTO users VALUES(null,"dangdang",md5("123456"),"12244635@qq.com","18333607668","img/1.png","莫泽兰","0");
INSERT INTO users VALUES(null,"dongdong",md5("123456"),"1223144635@qq.com","18333667668","img/2.png","","0");
INSERT INTO users VALUES(null,"dingding",md5("123456"),"122144635@qq.com","18333407668","img/3.png","","0");
INSERT INTO users VALUES(null,"dada",md5("123456"),"12231635@qq.com","18333777668","img/1.png","","0");
INSERT INTO users VALUES(null,"bingbing",md5("123456"),"1223144635@qq.com","18332307668","img/1.png","","0");
INSERT INTO users VALUES(null,"yangyang",md5("123456"),"1223144635@qq.com","18334507668","img/1.png","","0");
INSERT INTO users VALUES(null,"qianqian",md5("123456"),"12244635@qq.com","18380607668","img/1.png","","0");
INSERT INTO users VALUES(null,"jiaojao",md5("123456"),"12231445@qq.com","18333607018","img/1.png","","0");
INSERT INTO users VALUES(null,"tiantian",md5("123456"),"13144635@qq.com","18233607668","img/1.png","","0");
#资讯表
CREATE TABLE news(
  nid INT PRIMARY KEY auto_increment,  #自增的主键
  img VARCHAR(128),
  title VARCHAR(32),
  times BIGINT,
  assort VARCHAR(8),
  content TEXT
);
INSERT INTO news(`nid`, `img`, `title`, `times`, `assort`, `content`) VALUES (null,'img/news/new1.jpg','如何添加一条动态',1495382400000,'店铺动态','秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物——红豆杉。红豆杉有“植物增氧机”之称。');
INSERT INTO news(`nid`, `img`, `title`, `times`, `assort`, `content`) VALUES (null,'img/news/new2.jpg','如何添加一条动态',1495382400000,'店铺动态','秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物——红豆杉。红豆杉有“植物增氧机”之称。');
INSERT INTO news(`nid`, `img`, `title`, `times`, `assort`, `content`) VALUES (null,'img/news/new3.jpg','如何添加一条动态',1495382400000,'店铺动态','秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物——红豆杉。红豆杉有“植物增氧机”之称。');
INSERT INTO news(`nid`, `img`, `title`, `times`, `assort`, `content`) VALUES (null,'img/news/new1.jpg','如何添加一条动态',1495382400000,'店长博客','秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物——红豆杉。红豆杉有“植物增氧机”之称。');
INSERT INTO news(`nid`, `img`, `title`, `times`, `assort`, `content`) VALUES (null,'img/news/new2.jpg','如何添加一条动态',1495382400000,'店长博客','秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物——红豆杉。红豆杉有“植物增氧机”之称。');
INSERT INTO news(`nid`, `img`, `title`, `times`, `assort`, `content`) VALUES (null,'img/news/new3.jpg','如何添加一条动态',1495382400000,'店长博客','秋天的拉萨，天气比较干燥，这个时候在家里养一些可以制造氧气和水分的植物大有好处。记者走访多个花店后发现，很多店老板都会同时提到一种制氧植物——红豆杉。红豆杉有“植物增氧机”之称。');
//产品表
CREATE TABLE products(
  pid INT PRIMARY KEY auto_increment,  #自增的主键
  sm VARCHAR(128),
  md VARCHAR(128),
  lg VARCHAR(128),
  price DECIMAL(8,2),
  title VARCHAR(32),
  times BIGINT,
  recommend VARCHAR(128),
  taste VARCHAR(32),
  sold_count VARCHAR(128)
);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/001.jpg','img/product_list/md/001.jpg','img/product_list/lg/001.jpg',1200,'红酒1001',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',126);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/002.jpg','img/product_list/md/002.jpg','img/product_list/lg/002.jpg',1200,'红酒1002',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',1256);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/003.jpg','img/product_list/md/003.jpg','img/product_list/lg/003.jpg',1200,'红酒1003',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',156);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/004.jpg','img/product_list/md/004.jpg','img/product_list/lg/004.jpg',1200,'红酒1004',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',1296);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/005.jpg','img/product_list/md/005.jpg','img/product_list/lg/005.jpg',1200,'红酒1005',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',12666);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/006.jpg','img/product_list/md/006.jpg','img/product_list/lg/006.jpg',1200,'红酒1006',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',256);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/007.jpg','img/product_list/md/007.jpg','img/product_list/lg/007.jpg',1200,'红酒1007',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',56);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/008.jpg','img/product_list/md/008.jpg','img/product_list/lg/008.jpg',1200,'红酒1008',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',16);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/009.jpg','img/product_list/md/009.jpg','img/product_list/lg/009.jpg',1200,'红酒1009',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',12569);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/010.jpg','img/product_list/md/010.jpg','img/product_list/lg/010.jpg',1200,'红酒1010',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',156);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/011.jpg','img/product_list/md/011.jpg','img/product_list/lg/011.jpg',1200,'红酒1011',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',256);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/012.jpg','img/product_list/md/012.jpg','img/product_list/lg/012.jpg',1200,'红酒1012',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',125);

INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/001.jpg','img/product_list/md/001.jpg','img/product_list/lg/001.jpg',1200,'红酒1001',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',12356);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/002.jpg','img/product_list/md/002.jpg','img/product_list/lg/002.jpg',1200,'红酒1002',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',256);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/003.jpg','img/product_list/md/003.jpg','img/product_list/lg/003.jpg',1200,'红酒1003',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',1256);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/004.jpg','img/product_list/md/004.jpg','img/product_list/lg/004.jpg',1200,'红酒1004',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',12456);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/005.jpg','img/product_list/md/005.jpg','img/product_list/lg/005.jpg',1200,'红酒1005',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',876);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/006.jpg','img/product_list/md/006.jpg','img/product_list/lg/006.jpg',1200,'红酒1006',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',1296);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/007.jpg','img/product_list/md/007.jpg','img/product_list/lg/007.jpg',1200,'红酒1007',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',1156);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/008.jpg','img/product_list/md/008.jpg','img/product_list/lg/008.jpg',1200,'红酒1008',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',14556);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/009.jpg','img/product_list/md/009.jpg','img/product_list/lg/009.jpg',1200,'红酒1009',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',656);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/010.jpg','img/product_list/md/010.jpg','img/product_list/lg/010.jpg',1200,'红酒1010',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',81786);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/011.jpg','img/product_list/md/011.jpg','img/product_list/lg/011.jpg',1200,'红酒1011',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',956);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/012.jpg','img/product_list/md/012.jpg','img/product_list/lg/012.jpg',1200,'红酒1012',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',196);

INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/001.jpg','img/product_list/md/001.jpg','img/product_list/lg/001.jpg',1200,'红酒1001',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',1856);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/002.jpg','img/product_list/md/002.jpg','img/product_list/lg/002.jpg',1200,'红酒1002',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',1256);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/003.jpg','img/product_list/md/003.jpg','img/product_list/lg/003.jpg',1200,'红酒1003',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干葡萄酒',1516);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/004.jpg','img/product_list/md/004.jpg','img/product_list/lg/004.jpg',1200,'红酒1004',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',12356);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/005.jpg','img/product_list/md/005.jpg','img/product_list/lg/005.jpg',1200,'红酒1005',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',1206);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/006.jpg','img/product_list/md/006.jpg','img/product_list/lg/006.jpg',1200,'红酒1006',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜葡萄',1266);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/007.jpg','img/product_list/md/007.jpg','img/product_list/lg/007.jpg',1200,'红酒1007',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',2506);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/008.jpg','img/product_list/md/008.jpg','img/product_list/lg/008.jpg',1200,'红酒1008',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',1776);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/009.jpg','img/product_list/md/009.jpg','img/product_list/lg/009.jpg',1200,'红酒1009',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','酒干葡萄酒',1356);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/010.jpg','img/product_list/md/010.jpg','img/product_list/lg/010.jpg',1200,'红酒1010',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',125);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/011.jpg','img/product_list/md/011.jpg','img/product_list/lg/011.jpg',1200,'红酒1011',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',1856);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/012.jpg','img/product_list/md/012.jpg','img/product_list/lg/012.jpg',1200,'红酒1012',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜葡萄酒',1056);


