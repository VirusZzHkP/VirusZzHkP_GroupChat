<?php

    session_start();
    require 'dbh.inc.php';

    $companyName = "PHP Login/Registration System";
    
    function strip_bad_chars( $input ){
        $output = preg_replace( "/[^a-zA-Z0-9_-]/", "", $input);
        return $output;
    }
?>  

<!DOCTYPE html>

<html>
    <head>
        <title><?php echo TITLE; ?></title>
        <link href="includes/styles.css" rel="stylesheet"> 
        <link rel="icon" href="images/logo.png">
    </head>
    <body id="final-example">
        
    <!-------     LOGIN / LOGOUT FORM               --------->
    
    <?php 
    
    if(isset($_SESSION['userId']))
    {
        echo '<img id="status" src="">';
    }
    else
    {
        echo '<img id="status" src="">';
    }
    
    ?>
        
    <div id="login">
        
        <?php 
            
            if(isset($_SESSION['userId']))
            {
                echo'<div style="text-align: center;">
                        <img id="userDp" src=./uploads/'.$_SESSION["userImg"].'>
                        <h3>' . strtoupper($_SESSION['userUid']) . '</h3>
                        <a href="chat.php" class="button login">Chat</a><br>
                        <a href="profile.php" class="button login">Profile</a> <br> 
						<a href="edit-profile.php" class="button login">Edit Profile</a><br>
                        <a href="includes/logout.inc.php" class="button login">Logout</a><br>
                        
                    </div>';
            }
            else
            {
                if(isset($_GET['error']))
                {
                    if($_GET['error'] == 'emptyfields')
                    {
                        echo '<p class="closed">Fields Can Not Be Empty !!</p>';
                    }
                    else if($_GET['error'] == 'nouser')
                    {
                        echo '<p class="closed">Invalid Login Details</p>';
                    }
                    else if ($_GET['error'] == 'wrongpwd')
                    {
                        echo '<p class="closed">Invalid Login Details</p>';
                    }
                    else if ($_GET['error'] == 'sqlerror')
                    {
                        echo '<p class="closed">500 - Internal Server Error</p>';
                    }
                }

                echo '<form method="post" action="includes/login.inc.php" id="login-form">
                    <input type="text" id="name" name="mailuid" placeholder="Username...">
                    <input type="password" id="password" name="pwd" placeholder="Password...">
                    <input type="submit" class="button next login" name="login-submit" value="Login">
                </form>
                <a href="signup.php" class="button previous">Signup</a>';               
            }
        ?>

    </div>
    
    <!-------     LOGIN / LOGOUT FORM END           --------->
        <div class="wrapper">
            