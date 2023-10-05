<?php

/*

 TODO:

  * Make simple PHP app that demonstrates connecting to DB.

  * Demo how to select data from DB and display it

    - Figure out how to select data from PHP

    - Select and display

  * Demo how to insert data into DB

 */

?>

Hello

<?php

    $dsn = 'mysql:host=localhost;dbname=demo';

    $username = 'root';

    $password = '';

    try {

        $db = new PDO($dsn, $username, $password);

    } catch (PDOException $e) {

        echo "There was an error";

        exit();

    }

    //Prepare the SQL statement for execution
    $stmt = $db->prepare("SELECT * FROM Starships");

    //Execute the prepared statement
    $stmt->execute();

    //Fetch all of the remaining rows in the result
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "ID: " . $row['ID'] . "<br>";
        echo "Name: " . $row['Name'] . "<br>";
        echo "Class: " . $row['Class'] . "<br>";
        echo "Captain: " . $row['Captain'] . "<br>";
        echo "First Launch: " . $row['FirstLaunch'] . "<br><br>";
    }

    //Use $db object here.  How to select data???

?>

It Worked!!!