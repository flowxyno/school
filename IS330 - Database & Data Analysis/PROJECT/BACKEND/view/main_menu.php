<?php
    require_once('util/secure_conn.php');  // require a secure connection
    require_once('util/valid_admin.php');  // require a valid admin user
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Left off - Main Menu</title>
        <link rel="stylesheet" type="text/css" href="main.css"/>
    </head>
    <body>
        <header>
            <h1>Where did I leave off!!</h1>
        </header>
        <main>
            <?php 
                include 'util/nav_menu.php';
            ?>

            <p>This is the primary Menu page where you end up once you log in.</p>
        </main>
    </body>
</html>