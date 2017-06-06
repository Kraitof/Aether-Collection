<head>
    <title>Collector Builder</title>
    <link rel="stylesheet" href="../css/style.css">
    <script
    src="https://code.jquery.com/jquery-3.2.1.min.js"
    integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
    crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php
//start session management
    session_start();
//connect to the database
    require('../model/database.php');
//retrieve the functions
    require('../model/functions_cards.php');
    require('../model/collectionList_functions.php');
    require('../model/functions_messages.php');
    require('../model/functions_users.php');
    ?>
</head>

<body>
    <!--Navigation-->
    <div class="topnav" id="myTopnav">
        <a href="../index.php">Home</a>
        <a href="setSelection.php">Magic Sets</a>
        <a href="collectionBuilder.php">Collection Builder</a>
        <?php
        if(isset($_SESSION['user'])){
            if(isAdmin()){echo '<a href="adminPanel.php">Admin Panel</a>';}
            echo '<a href="../controller/logout_process.php">Logout</a>';
        } else {
            echo '<a href="login.php">Login</a>';
            echo '<a href="registration.php">Register</a>';
        }
        ?>
    </div>
    <!--Header-->
    <header class="img-box">
        <h1 class="title">COLLECTOR</h1>
        <div class="scroll"></div>

        <script>
            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        </script>
    </header>


    <?php
//call user_message() function
    $userID = $_SESSION['id'];
//call the get_products() function
    $result = get_user_card_collection($userID);
    ?>


    <article class="content">

        <?php foreach($result as $card):?>
            <div class="cardoverlay"
            <?php
            $row = get_singlecard_by_id($card['cardID']);
//if the imageSource field in the database is NULL or empty
            if((is_null($row['imageSource'])) || (empty($row['imageSource'])))
            {
//display the default photo
                echo "<p><img src='images/mtgBack.jpg' width=200 height=200 alt='default photo' /></p>"; 
            }
            else
            { 
//display the product photo
                echo '<p><figure class="card"><a href="cardInfo.php?id='.$row["cardID"].'"><img src="../images/mtgSets/Amonkhet/Cards/' . ($row['imageSource']) . '"' . ' alt="card photo"'  . "/></a></figure></p>";
            }
            ?>
            <a href="../controller/increment_card_process.php?cardID=<?php echo $card['cardID']?>&quantity=<?php echo $card['quantity']?>" style="text-decoration: none;">
                <button value="Add" class="collection_buttons">+</button>
            </a>

            <div class="collection_quantity">
                <?php echo $card['quantity']?>
            </div>


            <a href="../controller/decrement_card_process.php?cardID=<?php echo $card['cardID']?>&quantity=<?php echo $card['quantity']?>">
                <button value="Delete" class="collection_buttons">-</button>
            </a>

            <div class="collectionCondition">
                <?php echo $card['conditionCard']?>
            </div>

            <div class="textdownload-submit">
                <?php $cardID=$card['cardID']; $name = get_cardNames_byID($cardID);?>
                <a href="../model/collection_download.php?cardName=<?php echo $name['cardName'];?>&&quantity=<?php echo $card['quantity'];?>&&conditionCard=<?php echo $card['conditionCard'];?>" class="text-submit" >Export .txt</a>
            </div>
        </div>


    <?php endforeach; ?>
</article>
<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>