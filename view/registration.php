<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php
//start session management
    session_start();
//connect to the database
    require('../model/database.php');
//provide the value of the $title variable for this page
    $title = "Registration";
    ?>
</head>
<title>Registration</title>
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
        <h1 class="title">REGISTRATION</h1>
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
//user messages
if(isset($_SESSION['error'])) //if session error is set
{ 
    echo '<div class="error">';
echo '<p>' . $_SESSION['error'] . '</p>'; //display error message
echo '</div>';
unset($_SESSION['error']); //unset session error
}
?>
<div class="formContainer-reg">
    <form class="reg-form" action="../controller/registration_process.php" method="post">
        <input class="reg-fname" type="text" name="firstName" id="firstName" placeholder="Enter your first name" /><br />
        <input class="reg-lname" type="text" name="lastName" id="lastName" placeholder="Enter your last name" /><br />
        <input onfocusout="checkemail()" id="email" class="reg-email" type="email" name="email" id="email" placeholder="Enter your email*" required /><br />
        <input onfocusout="checkusername()" id="username" class="reg-username" type="text" name="username" id="username" placeholder="Enter your username*" required /><br />
        <input class="reg-password" type="password" id="password" name="password" placeholder="Enter your password*" required pattern=".{8,}" /><br />
        <input class="reg-submit" type="submit" name="register" value="Register" /><br>
        <p>Please <a href="login.php" class="links_login-reg">login</a> if you already have an account.</p>
    </form>
</div>

<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>
</body>
</html>