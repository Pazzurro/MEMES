SELECT * FROM memes WHERE deleted_at = IS NULL;


INSERT INTO users ("user_name", "password", "email", "is_admin") VALUES
(
    "User1", MD5("ZAQ!2wsx"), user1@gmail.com, 1,
);


INSERT INTO users ("user_name", "password", "email", "is_admin") VALUES
(
    "User2", MD5("Q@wertyuiop"), user2@wp.pl, 0,
);


SELECT m.id, m.file, m.title, m.likes, m.updated_at AS "date", u1.name AS "autor", u2.name AS "admin" 
FROM memes m
JOIN user u1 ON user_id = u1.id 
JOIN user u2 ON admin_id = u2.id;
WHERE m.deleted_at IS NULL OFFSET 0 LIMIT 10;