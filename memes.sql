SELECT * FROM memes WHERE deleted_at = IS NULL;


INSERT INTO users ("user_name", "password", "email", "is_admin") VALUES
(
    "User1", MD5("ZAQ!2wsx"), user1@gmail.com, 1,
);


INSERT INTO users ("user_name", "password", "email", "is_admin") VALUES
(
    "User2", MD5("Q@wertyuiop"), user2@wp.pl, 0,
);