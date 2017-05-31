<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Magic the Gathering Sets</title>
    <link rel="stylesheet" href="../css/keyrune.css">
    <link rel="stylesheet" href="../css/style.css">
    <?php
  //start session management
  session_start();
  //connect to the database
  require('../model/database.php');
  //retrieve the functions
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
        <h1 class="title">MAGIC SETS</h1>
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

</script>
    <!--Content-->
  <section class="content">
    <article class="set_section">
    <ol style="padding: 0;">
      <li class="set_icon">
        <a href="../view/setCards.php" id="buttonid"><span class="ss ss-akh"></span></a>
      </li>
      </ol>
    </article>
  </section>
    
<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>
</body>

</html>