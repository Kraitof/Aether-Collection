<?php
//Start session management
session_start();

//Call the the database
require('../model/database.php');
?>

<head>
    <!-- Magnific Popup plugin files -->
    <!-- Magnific Popup core CSS file -->
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css">

    <!-- jQuery 1.7+ -->
    <script src="../js/jquery-1.9.1.min.js"></script>

    <!-- Magnific Popup core JS file -->
    <script src="magnific-popup/jquery.magnific-popup.js"></script>
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

<section id="magnific_popup">
    <a class="image-popup-vertical-fit" href="images/magnific_popup/comwide_2009.png" title="Comwide 2009">
        <img src="../images/magnific_popup/comwide_2009.png" height="100" data-pin-nopin="true">
    </a>
    <a class="image-popup-vertical-fit" href="images/magnific_popup/comwide_2014.png" title="Comwide 2014">
        <img src="../images/magnific_popup/comwide_2014.png" height="100" data-pin-nopin="true">
    </a>
    <a class="image-popup-vertical-fit" href="images/magnific_popup/our-office-1.jpg" title="Our Office">
        <img src="../images/magnific_popup/our-office-1.jpg" height="100" data-pin-nopin="true">
    </a>
</section>    