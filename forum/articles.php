<?php
// Connect to the database
$host = "b97824gy.beget.tech";
$username = "b97824gy_forum";
$password = "Forum123";
$dbname = "b97824gy_forum";

$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
  die("Коннекция упала: " . mysqli_connect_error());
}

// Query the database for the list of articles
$result = mysqli_query($conn, "SELECT * FROM articles");

$articles = [];
while($row = mysqli_fetch_assoc($result)) {
  $articles[] = $row;
}

// Return the articles in JSON format
header('Content-Type: application/json');
echo json_encode($articles);

// Close the connection
mysqli_close($conn);
?>