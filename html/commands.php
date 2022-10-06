<?php
    $con = new mysqli("127.0.0.1", "root", "", "memes");

    $page = 1;
    $limit = 10;
    $offset = ($page * $limit) - $limit;
    $q ="SELECT `file`, `like`, `created_ad`, `title` FROM memes limit $limit offset $offset ";
        
?>

<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="pog.css">
        <title>Memy</title>
    </head>
    <body>
        <div class="header">
            <a href="index.php" style="color: white; text-decoration: none"><h2>MEMY</h2></a>
        </div>
        <div>
            <div class="where_meme"></div>
                <div class="meme">
                    <div>
                        <p>Tu powinny być komentarze</p>
                    </div>
                </div>
            <div class="where_meme"></div>
        </div>
    </body>
</html>