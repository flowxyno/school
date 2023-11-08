<?php
    require_once('util/secure_conn.php');  // require a secure connection
    require_once('util/valid_admin.php');  // require a valid admin user
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Left off: Insert Episodes</title>
        <link rel="stylesheet" type="text/css" href="main.css"/>
        <style>
        .container {
            display: flex;
        }
        .nav-menu {
            flex: 1;
        }
        .form-container {
            flex: 1.5;
        }
    </style>
    </head>
    <body>
        <header>
            <h1>Left off: Insert Episodes</h1>
        </header>
        <main>
            <div class="container"> 
                <div class="nav-menu">
                    <?php 
                        include 'util/nav_menu.php';
                    ?>
                </div>
                <div class="form-container">
                    <h1>New Episodes</h1>

                    <!-- change the action value to something other than login -->
                    <form action="." method="post" id="new_series_form" class="aligned">
                        <input type="hidden" name="action" value="login">

                        New Episodes form goes here

                        <label>&nbsp;</label>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
            <br>
        </main>
    </body>
</html>
