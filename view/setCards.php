<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Set Name</title>
    <link rel="stylesheet" href="../css/keyrune.css">
    <link rel="stylesheet" href="../css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css">
  <!-- Default Theme -->
  <link href="owl-carousel/owl.theme.css" rel="stylesheet" type="text/css">

  <!-- jQuery 1.7+ -->
  <script src="../js/jquery-1.9.1.min.js"></script>

  <!-- Include js plugin -->
  <script src="owl-carousel/owl.carousel.js"></script>
    <?php
//start session management
    session_start();
//include authorisation management
//require('../controller/authorisation.php');
//connect to the database
    require('../model/database.php');
//retrieve the functions
    require('../model/functions_cards.php');
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
        <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </div>
    <!--Header-->
  <script>
    $(document).ready(function() {
        $(".owl-carousel").owlCarousel();
    });
    </script>
  <section id="owl_carousel">
    <div class="owl-carousel">
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/plains_white_mana_mtg.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/island_blue_mana_mtg.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/forest_green_mana_mtg.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/mountain_red_mana_mtg.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/black_swamp_mana_mtg.jpg" alt="">
        </div>
                <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/MTG1.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/MTG2.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/MTG3.jpg" alt="">
        </div>
        <div class="customer_image" id="">
            <img class="img-responsive" src="../images/owl_carousel/MTG4.jpg" alt="">
        </div>
    </div>
</section>


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