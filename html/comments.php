<?php
    $db = new mysqli("127.0.0.1", "root", "", "meme");

    $q ="SELECT memes.id AS memeID, memes.file, memes.likes, memes.created_at, memes.title, memes.user_id, users.id as userID, users.user_name FROM memes JOIN users ON users.id = memes.user_id";
    
    $sqlComments = "SELECT comments.content, comments.memes_id, comments.users_id, users.id, users.user_name FROM comments JOIN users ON users.id = comments.users_id";
        
?>

<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styl.css">
        <title>Memy</title>
    </head>
    <body style="background-color: #b2b2b2">
        
        <div class="header">
            <a href="index.php" style="color: white; text-decoration: none"><h2>MEMY</h2></a>
        </div>
        
        <div class="comments">
            <?php

                if(isset($_GET["memeID"]))
                {
                    $id = $_GET["memeID"];

                    if($result = $db->query($q))
                    {
                        while($row = $result->fetch_array())
                        {
                            if($id == $row["memeID"])
                            {
                                echo '

                                    <div class="memeDiv">

                                        <div class="memeTitle">
                                            <h1 style"text-align: left">Tytuł: ' .$row["title"]. '</h1>
                                            <h1 style"text-align: left">Autor: ' .$row["user_name"]. '</h1>
                                        </div>

                                        <div>
                                            <span class="memeLike">Lajki: ' .$row["likes"]. '</span> 

                                            <br>

                                            <span class="memeLike">Stworzono: ' .$row["created_at"]. '</span>
                                        </div>


                                        <img class="memeImage" src="meme_Images/' .$row["file"]. '.png">
                                        
                                        <hr>
                                            
                                        <div class="commentsText">
                                            <h1> Comments </h1>
                                            
                                            ';
                                            
                                            if($resultCom = $db->query($sqlComments))
                                            {
                                                while($rowCom = $resultCom->fetch_array())
                                                {
                                                    if($id == $rowCom["memes_id"])
                                                    {
                                                        echo '
                                                            <hr>
                                                            <p class="commentsAutor">' .$rowCom["user_name"]. '</p>
                                                            <p class="commentsContent">' .$rowCom["content"]. '</p>
                                                        ';
                                                    }
                                                }
                                            }
                                            
                                        
                                            '
                                        </div>
                                        

                                    </div>
                                ';
                            }
                        }
                    }
                }
            ?>
        </div>
    </body>
</html>