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

    <?php
       $cardID = $_GET['id'];
        $sql = 'SELECT * FROM cards where cardID = '.$cardID;   
       //use a prepared statement to enhance security
        $statement = $conn->prepare($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        $statement->closeCursor();
        
       
       foreach($result as $row):?>