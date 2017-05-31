<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Set Name</title>
    <link rel="stylesheet" href="../css/keyrune.css">
    <link rel="stylesheet" href="../css/style.css">
    <?php
    //start session management
    session_start();
    //include authorisation management
    //require('../controller/authorisation.php');
    //connect to the database
    require('../model/database.php');
    //retrieve the functions
    require('../model/functions_cards.php');

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
    echo '<a href="../controller/logout_process.php">Logout</a>';
    } else {
    echo '<a href="login.php">Login</a>';
    echo '<a href="registration.php">Register</a>';
    }
    ?>
    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </div>
    <!--Header-->
    <header class="img-box">
         <h1 class="title"></h1>
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


    <!--Content-->
<section class="content">
    <?php
        //call the get_products() function
        $result = get_cards();
    ?>
	<article class="set-section">
        <?php foreach($result as $row):?>
    	   	<div class="cardoverlay"
                <?php
                    //if the imageSource field in the database is NULL or empty
                    if((is_null($row['imageSource'])) || (empty($row['imageSource'])))
                    {
                    //display the default photo
                    echo "<p><img src='images/mtgBack.jpg' width=200 height=200 alt='default photo' /></p>"; 
                    }
                    else
                    { 
                    //display the product photo
                    echo '<p><figure class="card"><a href="cardInfo.php?id='.$row["cardID"].'"><img class="card" src="../images/mtgSets/Amonkhet/Cards/' . ($row['imageSource']) . '"' . ' alt="card photo"'  . "/></a></figure></p>";
                    }
                ?>

    		</div>
            </div>
            <?php endforeach; ?>
	</article>
 </section>
    
<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>

</body>

</html>