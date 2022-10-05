<!DOCTYPE html>




<?php
    $db = new mysqli("127.0.0.1", "root", "", "meme");

    $page = 1;
    $limit = 10;
    $offset = ($page * $limit) - $limit;
    $q ="SELECT `file`, `likes`, `title`, `created_at` FROM memes limit $limit offset $offset ";     
?>



<html>
    <head>
        
        <meta charset="utf-8">
        <title>Memy</title>
        <link rel="stylesheet" type="text/css" href="styl.css">
        
    </head>
    <body class="body">
        
        <!-- trza zrobić php tutej, ale nie działa css -->
        
    </body>
</html>