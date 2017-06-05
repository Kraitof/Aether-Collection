<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Card Info</title>
    <link rel="stylesheet" href="../css/keyrune.css">
    <link rel="stylesheet" href="../css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <?php
    //start session management
    session_start();
    //include authorisation management
    //require('../controller/authorisation.php');
    //connect to the database
    require('../model/database.php');
    //retrieve the functions
    require('../model/functions_cards.php');
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
    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
    </div>

    <?php
       $cardID = $_GET['id'];
        $sql = 'SELECT * FROM cards where cardID = '.$cardID;   
       //use a prepared statement to enhance security
        $statement = $conn->prepare($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        $statement->closeCursor();
        
       
       foreach($result as $row):?>
    <!--Header-->
    <header class="img-box">
    
        <h1 class="title"><?php echo $row['cardName'];?></h1>
        <?php endforeach; ?>
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
       $cardID = $_GET['id'];
        $sql = 'SELECT * FROM cards where cardID = '.$cardID;   
       //use a prepared statement to enhance security
        $statement = $conn->prepare($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        $statement->closeCursor();
        
       
       foreach($result as $row):?>
            
       
        <article class="section">
          <div class="card-display">
             <?php
                   
                    echo '<img class="cardoverlay" src="../images/mtgSets/Amonkhet/Cards/' . ($row['imageSource']) . '"' . ' alt="card photo"'  . "/>";
                  
                    
                ?>
          </div>
          <div class="card-stats">
            <h2 class="title"></h2>
            
              <h1 class="card-mc"><?php echo $row['manaCost'];?></h1>
              <h1 class="card-type"><?php echo $row['cardName'];?></h1>
                <p class="card-description"><?php echo $row['oracleText'];?></p>
          </div>
          
          <?php endforeach; ?>
          
    </article>
  </section>
    
<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>

</body>

</html>