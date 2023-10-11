<!DOCTYPE html>
<html>

<head>
    <Title>User Selection</Title>
</head>

<body>
    <h1>Select a User</h1>
   
    <form action="display_series.php" method="POST">
        <label for="user">User:</label>
        <select name="user" id="user">
            <?php

            // Connection to the database connection file
            include "db_connection.php";

            // Fetching users from the database
            $quest = "SELECT userID, firstName, lastName FROM users";
            $result = $conn->query($quest);

                //Loading the dropdown from the database
                while ($row = $result->fetch()) {
                    echo "<option value='{$row['userID']}'>{$row['firstName']} {$row['lastName']}</option>";
                }

            ?>
        </select>
        <input type="submit" value="Show Series Trackers">
    </form>
</body>

</html>
