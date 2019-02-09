SET NAMES qq;
DROP DATABASE IF EXISTS qq;
CREATE DATABASE qq CHARSET=UTF8;
/*1:进入库qq*/
USE qq;
/*轮播表*/
CREATE TABLE imagelist(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO imagelist VALUES(NULL,"http://127.0.0.1:3000/img/轮播图/1.jpg");
INSERT INTO imagelist VALUES(NULL,"http://127.0.0.1:3000/img/轮播图/2.jpg");
INSERT INTO imagelist VALUES(NULL,"http://127.0.0.1:3000/img/轮播图/3.jpg");
/*最新上架表*/
CREATE TABLE roost(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title  VARCHAR(255),
  name VARCHAR(20),
  money VARCHAR(10)
);
INSERT INTO roost VALUES(NULL,"http://127.0.0.1:3000/img/最新上架/5.jpg","原来占据你内心的不是我","贺一航",20),
(NULL,"http://127.0.0.1:3000/img/最新上架/2.jpg","天份","薛之谦",20),
(NULL,"http://127.0.0.1:3000/img/最新上架/3.jpg","我好像在哪见过你","薛之谦",20),
(NULL,"http://127.0.0.1:3000/img/最新上架/4.jpg","意外","薛之谦",20);
/*本月热销*/
CREATE TABLE sell(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title  VARCHAR(255),
  name VARCHAR(20),
  money VARCHAR(10),
  sell  VARCHAR(20)
);
INSERT INTO sell VALUES(NULL,"http://127.0.0.1:3000/img/本月热销/1.jpg","Sunny","火箭少女101Sunnee",20,21437),
(NULL,"http://127.0.0.1:3000/img/本月热销/2.jpg","此刻到永远","SNH48",20,2930),
(NULL,"http://127.0.0.1:3000/img/本月热销/3.jpg","只想与你再一起 《再创世纪》电视剧片尾曲","HANA",20,2404),
(NULL,"http://127.0.0.1:3000/img/本月热销/4.jpg","听说的幸福","钟欣潼",20,41481);
/*热销总榜*/
CREATE TABLE well(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title  VARCHAR(255),
  name VARCHAR(20),
  sell  VARCHAR(20),
  cattle INT 
);
INSERT INTO well VALUES(NULL,"http://127.0.0.1:3000/img/热销总榜/1.jpg","想起了你","程响",88.70,1),
(NULL,"http://127.0.0.1:3000/img/热销总榜/2.jpg","全世界只有你最皮","小小浩 / 沉鱼会吐泡泡",117.01,2),
(NULL,"http://127.0.0.1:3000/img/热销总榜/3.jpg","大猪蹄子","孙紫涵 / 钟洁",113.09,3),
(NULL,"http://127.0.0.1:3000/img/热销总榜/4.jpg","流行","李宇春",117.05,4),
(NULL,"http://127.0.0.1:3000/img/热销总榜/5.jpg","周杰伦的床边故事","周杰伦",113.09,5),
(NULL,"http://127.0.0.1:3000/img/热销总榜/6.jpg","撞","火箭少女",199.07,6),
(NULL,"http://127.0.0.1:3000/img/热销总榜/7.jpg","野","李宇春",341.38,7),
(NULL,"http://127.0.0.1:3000/img/热销总榜/8.jpg","Reloaded1(重启1)","鹿晗",335.89,8),
(NULL,"http://127.0.0.1:3000/img/热销总榜/9.jpg","MADE","BIGBANG",196.48,9),
(NULL,"http://127.0.0.1:3000/img/热销总榜/10.jpg","伟大的渺小","林俊杰",63.14,10);
/*music*/
CREATE TABLE music(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  m_music VARCHAR(255)
);
INSERT INTO music VALUES(NULL,"http://127.0.0.1:3000/img/最新上架/1.mp3"),
(NULL,"http://127.0.0.1:3000/img/最新上架/2.mp3"),
(NULL,"http://127.0.0.1:3000/img/最新上架/3.mp3"),
(NULL,"http://127.0.0.1:3000/img/最新上架/4.mp3");


/*畅销总榜*/
CREATE TABLE zb(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(255),
  name VARCHAR(255),
  price DECIMAL(8,2),
  xl VARCHAR(255)
);
INSERT INTO zb VALUES
(null,"http://127.0.0.1:3000/img/1.jpg","梦不落雨林/NAMANANA","张艺兴",27,888987),
(null,"http://127.0.0.1:3000/img/2.jpg","梦不落雨林/NAMANANA","张艺兴",25,888986),
(null,"http://127.0.0.1:3000/img/3.jpg","梦不落雨林/NAMANANA","张艺兴",24,888985),
(null,"http://127.0.0.1:3000/img/4.jpg","梦不落雨林/NAMANANA","张艺兴",24,888984),
(null,"http://127.0.0.1:3000/img/1.jpg","梦不落雨林/NAMANANA","张艺兴",23,888983),
(null,"http://127.0.0.1:3000/img/2.jpg","梦不落雨林/NAMANANA","张艺兴",22,888982),
(null,"http://127.0.0.1:3000/img/3.jpg","梦不落雨林/NAMANANA","张艺兴",21,888981),
(null,"http://127.0.0.1:3000/img/4.jpg","梦不落雨林/NAMANANA","张艺兴",26,888988),
(null,"http://127.0.0.1:3000/img/2.jpg","梦不落雨林/NAMANANA","张艺兴",28,888989),
(null,"http://127.0.0.1:3000/img/1.jpg","梦不落雨林/NAMANANA","张艺兴",29,888980);

/*畅销榜歌曲详情*/
CREATE TABLE cx(
  nid INT,
  pid INT,
  name VARCHAR(255)
);
INSERT INTO cx VALUES
(1,1,"集结号"),
(1,2,"集结号"),
(1,3,"集结号"),
(1,4,"集结号"),
(1,5,"集结号"),
(1,6,"集结号"),
(2,1,"梦不落雨林"),
(2,2,"梦不落雨林"),
(2,3,"梦不落雨林"),
(2,4,"梦不落雨林"),
(2,5,"梦不落雨林"),
(2,6,"梦不落雨林"),
(3,1,"爱到这"),
(3,2,"爱到这"),
(3,3,"爱到这"),
(3,4,"爱到这"),
(3,5,"爱到这"),
(3,6,"爱到这"),
(4,1,"催眠术"),
(4,2,"催眠术"),
(4,3,"催眠术"),
(4,4,"催眠术"),
(4,5,"催眠术"),
(4,6,"催眠术"),
(5,1,"爱的引力"),
(5,2,"爱的引力"),
(5,3,"爱的引力"),
(5,4,"爱的引力"),
(5,5,"爱的引力"),
(5,6,"爱的引力"),
(6,1,"集结号"),
(6,2,"集结号"),
(6,3,"集结号"),
(6,4,"集结号"),
(6,5,"集结号"),
(6,6,"集结号"),
(7,1,"梦不落雨林"),
(7,2,"梦不落雨林"),
(7,3,"梦不落雨林"),
(7,4,"梦不落雨林"),
(7,5,"梦不落雨林"),
(7,6,"梦不落雨林"),
(8,1,"爱到这"),
(8,2,"爱到这"),
(8,3,"爱到这"),
(8,4,"爱到这"),
(8,5,"爱到这"),
(8,6,"爱到这"),
(9,1,"催眠术"),
(9,2,"催眠术"),
(9,3,"催眠术"),
(9,4,"催眠术"),
(9,5,"催眠术"),
(9,6,"催眠术"),
(10,1,"爱的引力"),
(10,2,"爱的引力"),
(10,3,"爱的引力"),
(10,4,"爱的引力"),
(10,5,"爱的引力"),
(10,6,"爱的引力");