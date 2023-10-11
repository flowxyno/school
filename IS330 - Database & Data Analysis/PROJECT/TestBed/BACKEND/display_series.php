<!DOCTYPE html>
<html>
<head>
    <title>Series Trackers</title>
</head>
<body>
    <h1>Series Trackers for Selected User</h1>

    <?php
    // Include the database connection code
    include "db_connection.php";

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $selectedUserID = $_POST['user'];

        // Fetch series trackers for the selected user
        $query = "SELECT series.seriesName, episodes.episodeTitle, seriesTrackers.lastWatched
                  FROM seriesTrackers
                  INNER JOIN series ON seriesTrackers.seriesID = series.seriesID
                  INNER JOIN episodes ON seriesTrackers.episodeID = episodes.episodeID
                  WHERE seriesTrackers.userID = :selectedUserID";

        // Use a prepared statement to prevent SQL injection
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':selectedUserID', $selectedUserID, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            echo "<ul>";
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<li>{$row['seriesName']} - {$row['episodeTitle']} (Last Watched: {$row['lastWatched']})</li>";
            }
            echo "</ul>";
        } else {
            echo "<p>No series trackers found for the selected user.</p>";
        }
    } else {
        echo "<p>Please select a user from the dropdown.</p>";
    }
    ?>
</body>
</html>