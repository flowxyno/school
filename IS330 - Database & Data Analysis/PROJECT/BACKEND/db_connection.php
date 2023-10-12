<?php 

$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'leftoff';

// Create the connection
try {
    $conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
} catch (PDOException $e) {
    echo "There was an error";
    exit();
}

?>