select games.game_id, games.title, games.year from users_games as ug
inner join games on games.game_id = ug.game_id
where user_id = 'as37sjd';