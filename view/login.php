<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<title>Login</title>
<?php
//start session management
session_start();
//connect to the database
require('../model/database.php');
//retrieve the functions
require('../model/functions_messages.php');
?>
<body class="login">



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
        <h1 class="title">LOGIN</h1>
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
    $message = user_message();
    ?>

    <div class="formContainer-log" >
        <form class="login-form" action="../controller/authentication.php" method="post">
            <input class="login-username" type="text" name="username" id="username" placeholder="Enter your username*" required /><br />
            <input class="login-password" type="password" id="password" name="password" placeholder="Enter your password*" required /><br />
            <input class="login-submit" type="submit" name="login" value="Login" /><br>
            <p>Don't have an account yet? Please <a href="registration.php" class="links_login-reg">sign up</a>.</p>
        </form>
    </div>


    <div class="footer">Powered by Imperial Creative &trade;</div>
    <div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>
</body>
</html>

