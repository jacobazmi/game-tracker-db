select games.game_id, games.title, games.release_date from users_games ug
join games on games.game_id = ug.game_id
where user_id = '4b931b74-9531-4cb6-a766-e66e92f3a22f';