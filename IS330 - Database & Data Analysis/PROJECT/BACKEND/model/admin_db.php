<?php
function add_admin($fname, $lname, $username, $password) {
    global $db;

    


    $hash = password_hash($password, PASSWORD_DEFAULT);
    $query = 'INSERT INTO users (firstName, lastName, userName, passwordHash)
              VALUES (:fname, :lname, :username, :password)';
    $statement = $db->prepare($query);
    $statement->bindValue(':fname', $fname);
    $statement->bindValue(':lname', $lname);
    $statement->bindValue(':username', $username);
    $statement->bindValue(':password', $hash);
    $statement->execute();
    $statement->closeCursor();
}

function is_valid_admin_login($username, $password) {
    global $db;
    
    // Note: Remove this before security review
    /* $hash = password_hash($password, PASSWORD_DEFAULT);
    echo $hash; */ 

    $query = 'SELECT passwordHash FROM users
              WHERE userName = :username';
    $statement = $db->prepare($query);
    $statement->bindValue(':username', $username);
    $statement->execute();
    $row = $statement->fetch();
    $statement->closeCursor();

    if($row === False)
    {
        return False;
    }

    $hash = $row['passwordHash'];
    return password_verify($password, $hash);
}
?>