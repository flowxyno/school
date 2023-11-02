<?php
    require_once('util/secure_conn.php');  // require a secure connection
    require_once('util/valid_admin.php');  // require a valid admin user
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Left off: Insert Series</title>
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
            <h1>Left off: Insert New Series</h1>
        </header>
        <main>
            <div class="container"> 
                <div class="nav-menu">
                    <?php 
                        include 'util/nav_menu.php';
                    ?>
                </div>
                <div class="form-container">
                    <h1>New Series</h1>

                    <!-- change the action value to something other than login -->
                    <form action="." method="post" id="new_series_form" class="aligned">
                        <input type="hidden" name="action" value="login">

                        <label for="seriesName">Series Name:</label>
                        <input type="text" name="seriesName" required><br><br>

                        <label for="synopsis">Synopsis:</label>
                        <textarea name="synopsis" rows="4" cols="50" required></textarea><br><br>

                        <label for="coverArt">Cover Art URL:</label>
                        <input type="text" name="coverArt" required><br><br>

                        <label for="tagID">Select Tag:</label>
                        <select name="tagID" required>
                            <?php

                            // Database connection
                            include "model/database.php";

                            // Retrieve tag data
                            $tagQuery = "SELECT tagID, tagName FROM tags";
                            $tagResult = $db->query($tagQuery);

                            // Cycle through tagIDs to match up to tagName
                            
                                while ($row = $tagResult->fetch()) {
                                    echo "<option value='" . $row['tagID'] . "'>" . $row['tagName'] . "</option>";
                                }

                            // Close the database connection
                            $db->close();
                            ?>
                        </select><br><br>

                        <label>&nbsp;</label>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
            <br>
        </main>
    </body>
</html>