<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/index.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php
    //start session management
    session_start();
    //connect to the database
    require('model/database.php');
    ?>
</head>

<body>
<!--Navigation-->
    <div class="topnav" id="myTopnav">
      <a href="../index.php">Home</a>
      <a href="view/setSelection.php">Magic Sets</a>
      <a href="view/collectionBuilder.php">Collection Builder</a>
      
    
    <?php
    if(isset($_SESSION['user'])){
    echo '<a href="controller/logout_process.php">Logout</a>';
    } else {
    echo '<a href="view/login.php">Login</a>';
    echo '<a href="view/registration.php">Register</a>';
    }
    ?>
    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </div>
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
    <!--Header-->
    <header class="img-box">
        <h1 class="title">COLLECTOR</h1>
        <div class="scroll"></div>
    </header>

    <!--Content-->
<div class="flex-container">
    <section class="content">
        <div>
            <h2 class="service-title">Our Awesome Services</h2>
        </div>

        <article class="section">
            <div class="service-post">
                <a href="view/setSelection.php"><div class="service-icon"><img src="images/icons/searchCollector.svg"></div></a>
                <h3 class="service-title">Search Cards</h3>
                <p class="service-description"></p>
            </div>

            <div class="service-post">
                <a href="view/collectionBuilder.php"><div class="service-icon"><img src="images/icons/addCollection.svg"></div></a>
                <h3 class="service-title">Build Collection</h3>
                <p class="service-description"></p>
            </div>

            <div class="service-post">
                <a href="view/setSelection.php"><div class="service-icon"><img src="images/icons/setsCollector.svg"></div></a>
                <h3 class="service-title">View Sets</h3>
                <p class="service-description"></p>
            </div>
        </article>
    </section>
</div>
    
 <section class="contentGrey">
    <article class="section2">
            <div class="grey-image">
                <img src="images/icons/searchCollector_reverse.svg">
            </div>
            <div class="grey-post">
                <h3 class="service-title">Start Looking!</h3>
                <p class="service-description">If you're looking for a place to start, why not try looking at all of you're favorite cards in selecting a set! Click below to view the MTG Sets.</p>
                <div class="container">
                    <a href="view/setSelection.php">
                        <button id="button" class="reverse_button">View Sets</button>
                    </a>
                </div>
            </div>
    </article>
</section>

 <section class="content">
    <article class="section3">
            <div class="white-post">
                <h3 class="service-title">Want to join up?</h3>
                <p class="service-description">Click below to sign up and get acess to save your collection!</p>
                <div class="container">
                    <a href="view/registration.php">
                        <button id="button">Registration</button>
                    </a>
                </div>
    </article>
</section>    

<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>

</body>

</html>