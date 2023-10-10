<!DOCTYPE html>
<html>

<head>
    <Title>User Selection</Title>
</head>

<body>
    <h1>Select a User</h1>

   <form>

   <label for="user">User: </label>
   <select>
    <?php 
        include "db_connection.php";

        $result = $conn->prepare("SELECT userID, firstName,lastName FROM users");

        $result->execute();

            while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                echo "<option value='{$row['userID']}'>{$row['firstName']} {$row['lastName']}</option>";
            }
    ?>
   </select>
   <input type="submit" value="Show Series Trackers">
   </form>
   
    <!--<form>
        <label for="user">User:</label>
        <select name="user" id="user">
            INSERT OPENING PHP TAG HERE!!

            // Connection to the database connection file
            include "db_connection.php";

            // Fetching users from the database
            $quest = "SELECT userID, firstName, lastName FROM users";
            $result = $conn->query($quest);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<option value='{$row['userID']}'>{$row['firstName']} {$row['lastName']}</option>";
                }
            }

            ?>
        </select>
        <input type="submit" value="Show Series Trackers">
    </form> -->
</body>

</html>
