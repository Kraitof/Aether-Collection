<?php
//start session management
session_start();
//connect to the database
require('../model/database.php');
require('../model/functions_users.php');
if(isset($_SESSION['user'])){
    if(!isAdmin()) header('location: ../index.php');
} else {
//header('location: ../index.php');
}
?>

<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="../css/style.css">
    <script src="js/index.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
            <h1 class="service-title">Welcome Admin</h1>
        </div>
        <article class="section3">
            <div class="white-post">
                <h3 class="service-title">Delete Users</h3>
                <p class="service-description">Please use the controls below to delete Collectors</p>
                <div class="container">
                    <a href="view/registration.php">
                    </a>
                </div>
            </article>
        </section>

        <section class="contentGrey">
            <article class="section2">
                <div class="grey-post">
                    <?php
                    if(isset($_GET['edit'])) {
                        echo '<form method="POST">
                        <select name="rank" class="rankDropDown">
                            <option value="0">Banned</option>
                            <option value="1">User</option>
                            <option value="2">Admin</option>
                        </select></br>
                        <input type="submit" value="SUBMIT" name="editRank" class="userSubmit"/>
                    </form>';
                }

                if(isset($_POST['editRank'])) {
                    editRank($_POST['rank'], $_GET['edit']);
                    echo 'Rank successfully updated!';
                }


                if(isset($_POST['submit'])) {
                    delete_user($_POST['userID']);
                    echo 'You have deleted a user';
                }

                $users = fetchUsers();
                foreach ($users as $user) {
                    echo $user['username'];
                    echo '<a class="userEdit" href="adminPanel.php?edit='.$user['userID'].'"></br>Edit Rank</a>';
                    echo '<form method="POST">';
                    echo '<input type="hidden" name="userID" value="'.$user['userID'].'" />';
                    echo "<input type='submit' name='submit' value='Delete' class='userDelete' />";
                    echo '</form>';
                }
                ?>

            </a>
        </a>
    </div>
</div>
</article>
</section>

<div class="footer">Powered by Imperial Creative &trade;</div>
<div class="subfooter">Magic the Gathering, FNM is TM and copyright Wizards of the Coast, Inc, a subsidiary of Hasbro, Inc. All rights reserved. This site is unaffiliated.</div>
</body>

</html>
