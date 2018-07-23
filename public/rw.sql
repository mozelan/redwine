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
#产品表
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
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/f4f8a073cba64320aeaee577d03c7c1a5.jpg','img/product_list/md/f4f8a073cba64320aeaee577d03c7c1a5.jpg','img/product_list/lg/f4f8a073cba64320aeaee577d03c7c1a5.jpg',238.00,'法国（原瓶进口）法圣古堡天使树干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',131361);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/da007cdc9fbe445fbc8c1905f05aaa585.jpg','img/product_list/md/da007cdc9fbe445fbc8c1905f05aaa585.jpg','img/product_list/lg/da007cdc9fbe445fbc8c1905f05aaa585.jpg',39.00,'智利红酒智利魅利干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',12926);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/698be0ebf8004a68bdc64714b81c66a15.jpg','img/product_list/md/698be0ebf8004a68bdc64714b81c66a15.jpg','img/product_list/lg/698be0ebf8004a68bdc64714b81c66a15.jpg',266.00,'西班牙红酒克洛丽莎金标干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',61815);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/fcc4dc52ee20466385a50aa00ba51e415.jpg','img/product_list/md/fcc4dc52ee20466385a50aa00ba51e415.jpg','img/product_list/lg/fcc4dc52ee20466385a50aa00ba51e415.jpg',29.00,'法国原瓶进口博列诺AOC级干红葡萄酒红酒750ml*1',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',2882);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/2d71435d68554289a971625008a8f42f5.jpg','img/product_list/md/2d71435d68554289a971625008a8f42f5.jpg','img/product_list/lg/2d71435d68554289a971625008a8f42f5.jpg',266.00,'西班牙（原瓶进口）克洛丽莎黑标干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',180222);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/38123120743d4be78a4ba61cda2b95375.jpg','img/product_list/md/38123120743d4be78a4ba61cda2b95375.jpg','img/product_list/lg/38123120743d4be78a4ba61cda2b95375.jpg',149.00,'澳洲红酒澳大利亚丁戈树赤霞珠干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',30078);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/2fa438a8ead4436483577cb2b5d7e5325.jpg','img/product_list/md/2fa438a8ead4436483577cb2b5d7e5325.jpg','img/product_list/lg/2fa438a8ead4436483577cb2b5d7e5325.jpg',299.00,'法国红酒法国原酒进口 橡木桶神鹿干红葡萄酒13度750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',1477);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/d3358e0c46c346fbb203314e24f6bc7f5.jpg','img/product_list/md/d3358e0c46c346fbb203314e24f6bc7f5.jpg','img/product_list/lg/d3358e0c46c346fbb203314e24f6bc7f5.jpg',69.00,'西班牙红酒西班牙歌帕天堂·爱丽丝干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',3151);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/e7e81eddaa9f43ae91aee147af1fdff85.jpg','img/product_list/md/e7e81eddaa9f43ae91aee147af1fdff85.jpg','img/product_list/lg/e7e81eddaa9f43ae91aee147af1fdff85.jpg',69.00,'南山庄园赤霞珠干红葡萄酒单支装1瓶红酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',15414);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/197c2efb8ee040d986eb1fa3f5a2e4a35.jpg','img/product_list/md/197c2efb8ee040d986eb1fa3f5a2e4a35.jpg','img/product_list/lg/197c2efb8ee040d986eb1fa3f5a2e4a35.jpg',109.00,'法国红酒原瓶进口AOC豪多帝王珍藏干红葡萄酒750ml 波尔多产区',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',3273);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/338695ed847d4ff99cfd8c1feb48e9415.jpg','img/product_list/md/338695ed847d4ff99cfd8c1feb48e9415.jpg','img/product_list/lg/338695ed847d4ff99cfd8c1feb48e9415.jpg',129.00,'西班牙红酒 西班牙西亚特干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',2409);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/e025cf5515ba4293ae31bafd54be98165.jpg','img/product_list/md/e025cf5515ba4293ae31bafd54be98165.jpg','img/product_list/lg/e025cf5515ba4293ae31bafd54be98165.jpg',49.00,'法国拉奥尔勃艮第干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','干红葡萄酒',6587);

INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/d359eae82745487eaa59d3490b19b0bc5.jpg','img/product_list/md/d359eae82745487eaa59d3490b19b0bc5.jpg','img/product_list/lg/d359eae82745487eaa59d3490b19b0bc5.jpg',29.00,'7°通天柔红山葡萄甜酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',102064);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/f165b799071846149c23f6caec85c5255.jpg','img/product_list/md/f165b799071846149c23f6caec85c5255.jpg','img/product_list/lg/f165b799071846149c23f6caec85c5255.jpg',199.00,'法国原酒进口红葡萄酒弗诗妮2008单支秒杀750ML送礼自饮佳酿',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',2107);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/b27323c5ba7b4ebd8bc168070b9c1aea5.jpg','img/product_list/md/b27323c5ba7b4ebd8bc168070b9c1aea5.jpg','img/product_list/lg/b27323c5ba7b4ebd8bc168070b9c1aea5.jpg',39.00,'通天葡萄酒通天山葡萄酒优选甜红酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',2003);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/345b98f7606d4c688685db5c42b21b035.png','img/product_list/md/345b98f7606d4c688685db5c42b21b035.png','img/product_list/lg/345b98f7606d4c688685db5c42b21b035.png',49.00,'7.5°通天葡萄酒通天山葡萄酒国信优选山葡萄甜酒750ml甜红酒',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',236);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/9b1df002b80b4bccbae60d329ae677145.jpg','img/product_list/md/9b1df002b80b4bccbae60d329ae677145.jpg','img/product_list/lg/9b1df002b80b4bccbae60d329ae677145.jpg',49.00,'中国通天野生原汁山葡萄酒甜红酒1000ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',81);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/d890b2519d814e75a3bca2501a0fc14a5.jpg','img/product_list/md/d890b2519d814e75a3bca2501a0fc14a5.jpg','img/product_list/lg/d890b2519d814e75a3bca2501a0fc14a5.jpg',60.00,'通天葡萄酒中国通天脱醇山葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',53);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/bfeddee4b0844c6e8d091bc7c5b5b7f35.jpg','img/product_list/md/bfeddee4b0844c6e8d091bc7c5b5b7f35.jpg','img/product_list/lg/bfeddee4b0844c6e8d091bc7c5b5b7f35.jpg',98.00,'通天葡萄酒通天雅罗阳光脱醇山葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',18);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/566d1aad1d114333b00f6d249d7f10875.jpg','img/product_list/md/566d1aad1d114333b00f6d249d7f10875.jpg','img/product_list/lg/566d1aad1d114333b00f6d249d7f10875.jpg',178.00,'费恩桑格利亚红葡萄酒 750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',14);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/cb6f76ecdf994e209db33401037b383f5.jpg','img/product_list/md/cb6f76ecdf994e209db33401037b383f5.jpg','img/product_list/lg/cb6f76ecdf994e209db33401037b383f5.jpg',228.00,'派利特瑞 加拿大进口冰酒赤霞珠晚收红葡萄酒2013',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',56);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/6c4d9685faad46a0ad0a3dde4c434bf35.jpg','img/product_list/md/6c4d9685faad46a0ad0a3dde4c434bf35.jpg','img/product_list/lg/6c4d9685faad46a0ad0a3dde4c434bf35.jpg',98.00,'送开瓶器通化通天雅罗阳光霜后山葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',81);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/fb24a84ece4d4617922bf8d170fa961d5.jpg','img/product_list/md/fb24a84ece4d4617922bf8d170fa961d5.jpg','img/product_list/lg/fb24a84ece4d4617922bf8d170fa961d5.jpg',59.00,'送开瓶器红酒8度通化通天野生原汁山葡萄酒1000ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',9);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/628122b11922412085a525a6be1b1a025.jpg','img/product_list/md/628122b11922412085a525a6be1b1a025.jpg','img/product_list/lg/628122b11922412085a525a6be1b1a025.jpg',59.00,'红酒7.5度通化通天优选山葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','甜红葡萄酒',19);

INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/76cd25578d4c411e8b34c8330b8472145.jpg','img/product_list/md/76cd25578d4c411e8b34c8330b8472145.jpg','img/product_list/lg/76cd25578d4c411e8b34c8330b8472145.jpg',269.00,'澳洲整箱红酒澳大利亚奔富洛神山庄设拉子',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',2517);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/36542dfdb49942d0b859519d11e3a26a5.jpg','img/product_list/md/36542dfdb49942d0b859519d11e3a26a5.jpg','img/product_list/lg/36542dfdb49942d0b859519d11e3a26a5.jpg',49.00,'澳洲红酒澳大利亚黄尾袋鼠西拉红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',166483);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/44a08aba5ac846fba4b9a09ce56896485.jpg','img/product_list/md/44a08aba5ac846fba4b9a09ce56896485.jpg','img/product_list/lg/44a08aba5ac846fba4b9a09ce56896485.jpg',49.00,'澳洲红酒澳大利亚奔富洛神山庄赤霞珠红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',57757);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/10fb9cc2764349598994e7e3429ca92c5.jpg','img/product_list/md/10fb9cc2764349598994e7e3429ca92c5.jpg','img/product_list/lg/10fb9cc2764349598994e7e3429ca92c5.jpg',49.00,'澳大利亚黄尾袋鼠加本力梅洛红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',743);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/03bb953f6a6c4364b85f071f990069575.jpg','img/product_list/md/03bb953f6a6c4364b85f071f990069575.jpg','img/product_list/lg/03bb953f6a6c4364b85f071f990069575.jpg',99.00,'澳大利亚黄尾袋鼠签名版珍藏加本力苏维翁红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',249);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/e895a5810be04f81bc4484c9607c477d5.jpg','img/product_list/md/e895a5810be04f81bc4484c9607c477d5.jpg','img/product_list/lg/e895a5810be04f81bc4484c9607c477d5.jpg',79.00,'澳大利亚红酒麦格根.庄园赤霞珠红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',355);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/86bfce10e10548b9b3624776a03bc5965.jpg','img/product_list/md/86bfce10e10548b9b3624776a03bc5965.jpg','img/product_list/lg/86bfce10e10548b9b3624776a03bc5965.jpg',79.00,'Bree冰灵梅洛红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',424);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/6549a2f867d047098329241ec7fbbcb45.jpg','img/product_list/md/6549a2f867d047098329241ec7fbbcb45.jpg','img/product_list/lg/6549a2f867d047098329241ec7fbbcb45.jpg',99.00,'澳大利亚黄尾袋鼠签名版珍藏梅洛红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',52);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/ff0cfde33f7046b1931a77b9c1f89e915.jpg','img/product_list/md/ff0cfde33f7046b1931a77b9c1f89e915.jpg','img/product_list/lg/ff0cfde33f7046b1931a77b9c1f89e915.jpg',108.00,'澳大利亚88经典梅洛红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',45);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/263c7ead3a63470795212b4e0c6f63965.jpg','img/product_list/md/263c7ead3a63470795212b4e0c6f63965.jpg','img/product_list/lg/263c7ead3a63470795212b4e0c6f63965.jpg',78.00,'澳大利亚天使鱼珊瑚系列西拉干红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',105);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/f4dca76ed92f4191bfecbb6e67f855975.jpg','img/product_list/md/f4dca76ed92f4191bfecbb6e67f855975.jpg','img/product_list/lg/f4dca76ed92f4191bfecbb6e67f855975.jpg',99.00,'德国红玫瑰半干红葡萄酒',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',393);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/7b3e04ac6cc7443bb4ecb5c044181b395.jpg','img/product_list/md/7b3e04ac6cc7443bb4ecb5c044181b395.jpg','img/product_list/lg/7b3e04ac6cc7443bb4ecb5c044181b395.jpg',298.00,'美国贝灵哲创始者庄园赤霞珠红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半干红葡萄酒',14);

INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/2ab4a6bfb2e0429694a2557014dc9f215.jpg','img/product_list/md/2ab4a6bfb2e0429694a2557014dc9f215.jpg','img/product_list/lg/2ab4a6bfb2e0429694a2557014dc9f215.jpg',69.00,'智利安第神鹰红葡萄酒',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',500);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/59be4e31f48b400da0a5cab12f2887f15.jpg','img/product_list/md/59be4e31f48b400da0a5cab12f2887f15.jpg','img/product_list/lg/59be4e31f48b400da0a5cab12f2887f15.jpg',198.00,'格鲁吉亚特里亚尼河谷金泽梦半甜红葡萄酒',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',29);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/fbbda0eed64b43d59eb63588af684d615.jpg','img/product_list/md/fbbda0eed64b43d59eb63588af684d615.jpg','img/product_list/lg/fbbda0eed64b43d59eb63588af684d615.jpg',168.00,'摩尔多瓦黄金鲟喜宴梅洛半甜红葡萄酒750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',8);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/7004453b395844d694e8344cba3f5a7e5.jpg','img/product_list/md/7004453b395844d694e8344cba3f5a7e5.jpg','img/product_list/lg/7004453b395844d694e8344cba3f5a7e5.jpg',469.00,'长白山特产半甜葡萄酒整箱740ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',2);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/a183995f979d4222832a3da9ffd75ec15.jpg','img/product_list/md/a183995f979d4222832a3da9ffd75ec15.jpg','img/product_list/lg/a183995f979d4222832a3da9ffd75ec15.jpg',89.00,'法国红酒法国（原瓶进口）天使爱美丽半甜红葡萄酒单支750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',1392);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/0b5eb87a61ec49f4a1aed1ec1deff1ae5.jpg','img/product_list/md/0b5eb87a61ec49f4a1aed1ec1deff1ae5.jpg','img/product_list/lg/0b5eb87a61ec49f4a1aed1ec1deff1ae5.jpg',238.00,'法国红酒法国（原瓶进口）天使爱美丽半甜红葡萄酒双支皮盒红酒礼盒装750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',32);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/dd355363e8d14f29bac2dc222e8e8bab5.jpg','img/product_list/md/dd355363e8d14f29bac2dc222e8e8bab5.jpg','img/product_list/lg/dd355363e8d14f29bac2dc222e8e8bab5.jpg',118.00,'法国红酒法国（原瓶进口）天使爱美丽半甜红葡萄酒单支木盒红酒礼盒装750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',22);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/35aa2090d6bb4cdcbfc13b6a81b79ce05.jpg','img/product_list/md/35aa2090d6bb4cdcbfc13b6a81b79ce05.jpg','img/product_list/lg/35aa2090d6bb4cdcbfc13b6a81b79ce05.jpg',1794.00,'红酒坊2016窖藏赤霞珠红葡萄酒750ml*6瓶',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',76);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/c0027141ff12432ea07eb037f9d3584b5.jpg','img/product_list/md/c0027141ff12432ea07eb037f9d3584b5.jpg','img/product_list/lg/c0027141ff12432ea07eb037f9d3584b5.jpg',98.00,'卡格尔原瓶进口甜红葡萄酒寺院印章单支装750ml',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',13);
INSERT INTO products(`pid`, `sm`, `md`, `lg`, `price`, `title`, `times`, `recommend`, `taste`,`sold_count`) VALUES (null,'img/product_list/sm/7f1d441221174d2eab473bf9a8910ed85.jpg','img/product_list/md/7f1d441221174d2eab473bf9a8910ed85.jpg','img/product_list/lg/7f1d441221174d2eab473bf9a8910ed85.jpg',198.00,'卡格尔原瓶进口甜红葡萄酒礼盒装寺院印章 750ml*2',1521072000000,'红酒（Red wine）是葡萄酒的一种，并不一定特指红葡萄酒。红酒的成分相当简单，是经自然发酵酿造出来的果酒，含有最多的是葡萄汁，葡萄酒有许多分类方式。','半甜红葡萄酒',125);


