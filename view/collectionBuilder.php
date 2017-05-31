
<head>
<title>Collector Builder</title>
    <link rel="stylesheet" href="../css/style.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<?php

// start session management
session_start();
// connect to the database
require ('../model/database.php');
// retrieve the functions
require ('../model/functions_cards.php');
require ('../model/functions_messages.php');
require ('../model/collectionList_functions.php');
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

<script type="text/javascript" class="dropdown-cardsearch">
  $( function() 
  {
    $.getJSON('../json/amonkhet.json', function(cardList){
    var cardListA = [];
    for (var card in cardList){
    cardListA.push(card);
  }
    $( "#cardSearch" ).autocomplete({
    source: cardListA.sort(),
    minLength: 1
  })
  });
  })
</script>

<div class="collectionBuilder">
    <section class="builderOptions">
        <form method="post" action="../controller/addcard_process.php">
            <div>
                <input id="cardSearch" name="cardname" type="text" class="collectionBuilderForm" placeholder="Card Name">
            </div>
            <div>
                <input class="collectionBuilderForm" name="quantity" placeholder="Qty">
            </div>
            <div>
                <input class="collectionBuilderForm" name="conditionCard" placeholder="condition">
            </div>

            <div>
                <button>Save Collection</button>
            </div>
        </form>
    </section>
</div>


<section class="contentGrey">
    <article class="section2">
        <div class="grey-image">
            <img src="../images/icons/setsCollector_reverse.svg">
        </div>
        <div class="grey-post">
            <h3 class="service-title">See your Collection</h3>
            <p class="service-description">After you have finished building your collection, click the button below to see them all now!</p>
            <div class="container">
                <a href="Users_collection.php">
                    <button id="button" class="see_collection">See your Collection</button>
                </a>
            </div>
        </div>
    </article>
</section>
<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>
</body>
</html>