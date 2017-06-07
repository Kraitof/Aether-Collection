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
                require('model/functions_users.php');
            ?>
        <!-- Magnific Popup plugin files -->
    <!-- Magnific Popup core CSS file -->
    <link rel="stylesheet" href="view/magnific-popup/magnific-popup.css">

    <!-- jQuery 1.7+ -->
    <script src="js/jquery-1.9.1.min.js"></script>

    <!-- Magnific Popup core JS file -->
    <script src="view/magnific-popup/jquery.magnific-popup.js"></script>
    <script>
        $(document).ready(function() {
            $('.image-popup-vertical-fit').magnificPopup({
                type: 'image',
                closeOnContentClick: true,
                mainClass: 'mfp-img-mobile',
                image: {
                    verticalFit: true
                }
            });

            $('.image-popup-fit-width').magnificPopup({
                type: 'image',
                closeOnContentClick: true,
                image: {
                    verticalFit: false
                }
            });

            $('.image-popup-no-margins').magnificPopup({
                type: 'image',
                closeOnContentClick: true,
                closeBtnInside: false,
                fixedContentPos: true,
                mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
                image: {
                    verticalFit: true
                },
                zoom: {
                    enabled: true,
                    duration: 300 // don't foget to change the duration also in CSS
                }
            });
        });
    </script>
    </head>

    <body>
        <!--Navigation-->
        <div class="topnav" id="myTopnav">
            <a href="index.php">Home</a>
            <a href="view/setSelection.php">Magic Sets</a>
            <a href="view/collectionBuilder.php">Collection Builder</a>
                <?php
                    if(isset($_SESSION['user'])){
                    if(isAdmin()){echo '<a href="view/adminPanel.php">Admin Panel</a>';};
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
                <section id="magnific_popup">
                    <a class="image-popup-vertical-fit" href="images/magnific_popup/Approach-of-the-Second-Sun.jpg" title="Approach of the Second-Sun">
                        <img src="images/magnific_popup/Approach-of-the-Second-Sun.jpg" class="magnific_image" height="100" data-pin-nopin="true">
                    </a>
                    <a class="image-popup-vertical-fit" href="images/magnific_popup/Cascading-Cataracts_.jpg" title="Cascading Cataracts">
                        <img src="images/magnific_popup/Cascading-Cataracts_.jpg" class="magnific_image" height="100" data-pin-nopin="true">
                    </a>
                    <a class="image-popup-vertical-fit" href="images/magnific_popup/Lilinana-Deaths-Majesty.jpg" title="Lilinana Deaths Majesty">
                        <img src="images/magnific_popup/Lilinana-Deaths-Majesty.jpg" class="magnific_image" height="100" data-pin-nopin="true">
                    </a> 
                </section>
            </article>
        </section>
</body>
</html>
        
