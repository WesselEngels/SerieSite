<div id="characters">
  <?php


    if (isset($_GET['id'])) {
      $id = $_GET['id'];

      $sqlhero = "SELECT * FROM hero WHERE teamId = '". $id. "'";

    }
    else {
      $sqlhero = "SELECT * FROM hero";
    }

    $result1 = $conn->query($sqlhero);
    //description bij de hero keuze, de gene die het speelt erbij zetten
    if ($result1->num_rows > 0) {
        while ($row = $result1->fetch_assoc()) {
          echo "<div class='container-hero'>";
          echo "<a href='index.php?id=". $row['teamId']. "&heroid=". $row['heroId']. "'>";
          echo "<button class='hero-button'>More Information</button>";
          echo "</a>";
          echo "<div class='hero-images'>";
          echo "<div class='hero-name'>";
          echo $row['heroName'];
          echo "</div>";
          echo "<div class='actor-name'>";
          echo "Played by:<br>" .$row['actorName']. "";
          echo "</div>";
          echo "<a href='index.php?id=". $row['teamId']. "&heroid=". $row['heroId']. "'>";
          echo "<img src='" .$row['heroImage']. "'>";
          echo "</a>";
          echo "</div>";
          echo "</div>";

    }
}

    ?>
  </div>
