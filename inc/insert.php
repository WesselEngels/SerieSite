<?php

require("connection.php");

$hero = $_POST['heroId'];
$rating = $_POST['rating'];
$review = $_POST['review'];

$sqlinsert = "INSERT INTO rating (heroId, rating, ratingDate, ratingReview) VALUES ('$hero', '$rating', NOW(), '$review')";

if ($conn->query($sqlinsert) === true) {
  echo "";
}
else {
  echo "Error: ". $sqlinsert . "<br>" . $conn->error;
  die();
}

header("Location: ../thank.html");
 ?>
