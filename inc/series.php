<div id="series">
  <?php
  require("inc/connection.php");

  $sql = "SELECT * FROM team";


$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
      echo "<div class='serie-info'>";
      echo "<a href='index.php?id=". $row['teamId']. "&heroid=0'>";
      echo "<img class='mySlides' src='". $row['teamImage'] . "'>";
      echo "<div class='total-char'>";
      echo "Number of Actors: ". $row['totalCharacters'];
      echo "</div>";
      echo "</a>";
      echo "</div>";
  }


} else {
  echo "0 results";
}

   ?>
</div>
