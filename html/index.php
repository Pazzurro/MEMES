<!DOCTYPE html>




<?php
    $db = new mysqli("127.0.0.1", "root", "", "meme");

    $page = 1;
    $limit = 10;
    $offset = ($page * $limit) - $limit;
    $sql ="SELECT `id`, `file`, `likes`, `title`, `created_at` FROM memes limit $limit offset $offset ";     
?>



<html>
    <head>
        
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="styl.css">
        <title>Memy</title>
        
        
    </head>
    <body>
        
        <div class="header">
            <a href="index.php" style="color: white; text-decoration: none"><h2>MEMY</h2></a>
        </div>
        
        <div>
            
            <div class="menu">
                <h3>MENU</h3>
                
                <p class="menuButton">jakaś opcja</p>
                <p class="menuButton">jakaś opcja</p>
                <p class="menuButton">jakaś opcja</p>
                <p class="menuButton">jakaś opcja</p>
                <p class="menuButton">jakaś opcja</p>
            </div>
            
            <div class="memes">
                
                <?php
                    if($result = $db->query($sql))
                    {
                        while($row = $result->fetch_array())
                        {
                            echo '
                                <div class="memeDiv">
                                
                                    <div class="memeTitle">
                                        <h1 style"text-align: left">Tytuł: ' .$row["title"]. '</h1>
                                    </div>
                                    
                                    <div>
                                        <span class="memeLike">Lajki: ' .$row["likes"]. '</span> 
                                        
                                        <br>
                                        
                                        <span class="memeLike">Stworzono: ' .$row["created_at"]. '</span>
                                    </div>
                                    
                                    
                                    <img class="memeImage" onclick="openPage('.$row["id"].')" src="meme_Images/' .$row["file"]. '.png">
                                    
                                    
                                    <hr>
                                </div>
                            ';
                        }
                    }
                ?>
                
            </div>
            
        </div>
        
        <div class="footer">
            <button class="pageButton">Następna strona</button>
        </div>
        
        <script>
            
            function openPage(meme_id)
            {
                window.location.href = "comments.php?memeID=" + meme_id;
            }
                
        </script>
        
        
    </body>
</html>