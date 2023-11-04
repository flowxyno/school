<?php
    require_once('util/secure_conn.php');  // require a secure connection
    require_once('util/valid_admin.php');  // require a valid admin user

    if (isset($_POST['new_series'])) {
        // Database connection
       // include "model/database.php";
    
        // Get user inputs from the form
        $seriesName = $_POST['seriesName'];
        $synop = $_POST['synop'];
        $coverArt = $_POST['coverArt'];
        $tagID = $_POST['tagID'];
    
        // Insert series information into the 'series' table
        $insertSeriesQuest = "INSERT INTO series (seriesName, synop, coverArt) VALUES (:seriesName, :synop, :coverArt)";
        $statement = $db->prepare($insertSeriesQuest);
        $statement->bindParam(':seriesName', $seriesName);
        $statement->bindParam(':synop', $synop);
        $statement->bindParam(':coverArt', $coverArt);

        $statement->execute();
    
        //if ($db->query($insertSeriesQuest) === TRUE) {
            // Get the last inserted seriesID
            $seriesID = $db->lastInsertId;
    
            // Insert series and tag association into the 'seriesTags' table
            $insertSeriesTagsQuest = "INSERT INTO seriesTags (seriesID, tagID) VALUES (:seriesID, :tagID)";
            $statement = $db->prepare($insertSeriesTagsQuest);
            $statement->bindParam(':seriesID', $seriesID);
            $statement->bindParam(':tagID', $tagID);

            $statement->execute();

            echo "sucessful";
    
         /*   if ($db->query($insertSeriesTagsQuest) === TRUE) {
                echo "Series added successfully!";
            } else {
                echo "Error: " . $insertSeriesTagsQuest . "<br>" . $db->error;
            }
        //}
    
        // Close the database connection
        $db->close(); */
    }
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
                        <!--<input type="hidden" name="action" value="newSeries"> -->

                        <label for="seriesName">Series Name:</label>
                        <input type="text" name="seriesName" required><br><br>

                        <label for="synopsis">Synopsis:</label>
                        <textarea name="synop" rows="4" cols="50" required></textarea><br><br>

                        <label for="coverArt">Cover Art URL:</label>
                        <input type="text" name="coverArt" required><br><br>

                        <label for="tagID">Select Tag:</label>
                        <select name="tagID" required>
                            <option value=""></option>
                            <?php
                            // Establish database connection
                            //include "model/database.php";

                            // Retrieve tag data
                            $tagQuest = "SELECT tagID, tagName FROM tags";
                            $tagResult = $db->query($tagQuest);

                                // Display tagNames as options for the dropdown menu
                                foreach ($row = $tagResult->fetchAll(PDO::FETCH_ASSOC)) {
                                    echo "<option value='{$row['tagID']}'>{$row['tagName']}</option>";
                                }

                            // Close the database connection
                            //$db->close();
                            ?>
                        </select><br><br>
                        <label>&nbsp;</label>
                        <input type="submit" name="new_series" value="Submit">
                    </form>
                </div>
            </div>
            <br>
        </main>
    </body>
</html>