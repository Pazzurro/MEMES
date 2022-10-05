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
        <link rel="stylesheet" href="styl.css">
        <title>Memy</title>
    </head>
    <body>
             <?php 
                    if ($wynik = $con->query($q)){
                    
                        while($row=$wynik->fetch_array()){
                            //print_r($row);
                            echo '
                                <div class="date_title">
                                    <div class="title"><p>'.$row["title"].'</p></div>
                                    <div class="date"><p>'.$row["created_ad"].'</p></div>
                                </div>
                                <div class="where_meme"></div>
                                <div class="meme">
                                <div>
                                    <img class="meme_1" src="'.$row["file"].'" alt="'.$row["title"].'">
                                </div>
                                </div>
                                    <div class="where_meme">Musze dać gdzieś like XD'.$row["like"].'</div>
                                </div>
                                ';
                        }
                    }
            ?>
        <div class="pages">
            <h2>Tu są strony</h2>
            
            <button> <!-- </button> 1 <button> --> </button>
        </div>
    </body>
</html>