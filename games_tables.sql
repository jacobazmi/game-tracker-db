
DROP SCHEMA IF EXISTS games;
CREATE SCHEMA games;
USE games;

DROP TABLE IF EXISTS users_games;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS users;

CREATE table games (
game_id INT NOT NULL AUTO_INCREMENT primary key, 
title text, 
release_date date, 
platforms set('PC','PS4','PS5','Switch','XONE','Series X','Stadia'),
length double);


create table users (
user_id varchar(36) not null primary key,
nickname text);


create table users_games (
connection_id INT NOT NULL AUTO_INCREMENT primary key,
user_id varchar(36),
game_id int,
foreign key (user_id) references users(user_id),
foreign key (game_id) references games(game_id)
);

insert into games (title, release_date, platforms, length) values 
('A Way Out', '2018-03-23', ('PC,PS4,XONE'), 15),
('Control', '2019-08-27', ('PC,PS4,XONE,Stadia'), 10),
('The Last of Us Part II', '2020-06-19', ('PS4'), 24),
('The Legend of Zelda: Breath of the Wild', '2017-03-03', ('Switch'), 50),
('Luigi\'s Mansion 3', '2019-10-31', ('Switch'), 12),
('A Plague Tale: Innocence', '2019-05-14', ('PC,Series X,XONE,PS5,PS4'), 6),
('Tiny Tina\'s Wonderlands', '2022-03-25', ('PC,Series X,PS5,XONE,PS4'), 60);

insert into users (user_id) values 
('4b931b74-9531-4cb6-a766-e66e92f3a22f'),
('c912d1c8-a2fb-4338-808f-0c2c6121be3c');

insert into users_games (user_id, game_id) values 
('4b931b74-9531-4cb6-a766-e66e92f3a22f', 1),
('4b931b74-9531-4cb6-a766-e66e92f3a22f', 2),
('4b931b74-9531-4cb6-a766-e66e92f3a22f', 7),
('c912d1c8-a2fb-4338-808f-0c2c6121be3c', 1),
('c912d1c8-a2fb-4338-808f-0c2c6121be3c', 3);
