Drop table if exists users_games;
Drop table if exists games;

CREATE table games (
game_id INT NOT NULL AUTO_INCREMENT primary key, 
title text, 
year year, 
platforms set('PC','PS4','PS5','Switch','XOne','XS'));

Drop table if exists users;
create table users (
user_id varchar(36) not null primary key);


create table users_games (
connection_id INT NOT NULL AUTO_INCREMENT primary key,
user_id varchar(36),
game_id int,
foreign key (user_id) references users(user_id),
foreign key (game_id) references games(game_id)
);

insert into games (title, year, platforms) values ('Bloop 2', 2023, ('PC,PS4'));
insert into games (title, year, platforms) values ('Hash Browns', 2020, ('PS4'));

insert into users (user_id) values ('as37sjd');
insert into users (user_id) values ('dh37dj');

insert into users_games (user_id, game_id) values ('as37sjd', 1);
insert into users_games (user_id, game_id) values ('dh37dj', 1);
insert into users_games (user_id, game_id) values ('dh37dj', 2);