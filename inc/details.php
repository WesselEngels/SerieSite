<div id="details">

  <?php
  if (isset($_GET['heroid'])) {
      $heroid = $_GET['heroid'];

      $sqldescr = "SELECT * FROM hero WHERE heroId = '". $heroid. "'";
      $sqlrating ="SELECT ROUND(AVG(rating), 1) AS rating_avg FROM rating Where heroId='".$heroid."'"  ;
  } else {
      $sqldescr = "SELECT * FROM hero WHERE heroId=0";
      $sqlrating ="SELECT * FROM rating where heroId=0";
  }

  $result2 = $conn->query($sqldescr);
  $result3 = $conn->query($sqlrating);

  if ($result2->num_rows > 0) {
      while ($row1 = $result3->fetch_assoc()) {
          if ($result2->num_rows > 0) {
              while ($row = $result2->fetch_assoc()) {
                  echo "<div class='container-descr'>";
                  echo "<div id='average'>";
                  echo "<label>Average rating is: ". $row1['rating_avg']. "/5.0</label>";
                  echo "</div>";
                  echo "<div class='hero-img'>";
                  echo "<img src='" .$row['heroImage']. "'>";
                  echo "</div>";
                  echo "<div class='hero-descr'>";
                  echo "<label>". $row['heroName']. "</label><br><br>";
                  echo $row['heroDescription'];
                  echo "</div>";
                  echo "<div class='hero-power'>";
                  echo "<label>Quote</label><br><br>";
                  echo $row['heroPower'];
                  echo "</div>"; ?>
        <label class='rate-title'>Rating</label>
        <form action="inc/insert.php?heroId=<?php echo $row['heroId']; ?>" method="POST" class="frmRate">
          <fieldset>
            <div class="rate">
              <input type="radio" id="rating10" name="rating" value="5" />
              <label class="lblRating" for="rating10" title="5 stars"></label>

                <input type="radio" id="rating9" name="rating" value="4.5" />
                <label class="lblRating half" for="rating9" title="4 1/2 stars"></label>

                <input type="radio" id="rating8" name="rating" value="4" />
                <label class="lblRating" for="rating8" title="4 stars"></label>

                <input type="radio" id="rating7" name="rating" value="3.5"  />
                <label class="lblRating half" for="rating7" title="3 1/2 stars"></label>

                <input type="radio" id="rating6" name="rating" value="3" />
                <label class="lblRating" for="rating6" title="3 stars"></label>

                <input type="radio" id="rating5" name="rating" value="2.5" />
                <label class="lblRating half" for="rating5" title="2 1/2 stars"></label>

                <input type="radio" id="rating4" name="rating" value="2" />
                <label class="lblRating" for="rating4" title="2 stars"></label>

                <input type="radio" id="rating3" name="rating" value="1.5" />
                <label class="lblRating half" for="rating3" title="1 1/2 stars"></label>

                <input type="radio" id="rating2" name="rating" value="1" />
                <label class="lblRating" for="rating2" title="1 star"></label>

                <input type="radio" id="rating1" name="rating" value="0.5" />
                <label class="lblRating half" for="rating1" title="1/2 star"></label>

                <input required type="radio" id="rating0" name="rating" value="0" />
                <label class="lblRating" for="rating0" title="No star"></label>
            </div>
              <label class='comment'>Comment<br></label>
              <textarea required name="review" placeholder="Give here your comment"></textarea>
            <div class="divSubmit">
              <input type="submit" name="submitRating" value="Rate"/>
              <input type="hidden" name="heroId" value="<?php echo $row['heroId']; ?>"/>
            </div>
          </fieldset>
        </form>

        <?php


    echo "<div class='comment' style='margin-left: 10px'>";
    echo "<label>Reviews</label><br><br>";
              }
          }
      }
  } else {
        echo "<label class='select-actor'>Select an Actor</label>";
    }
    if (isset($_GET['heroid'])) {
        $heroid = $_GET['heroid'];
        $sqlreview = "SELECT ratingReview, rating, ratingDate FROM rating WHERE heroId = '". $heroid. "'";
    }
      $result4 = $conn->query($sqlreview);

      if ($result4->num_rows > 0) {
          while ($row2 = $result4->fetch_assoc()) {
              echo "<div class='star'>&bigstar;</div>" .$row2['rating']. " -- ";
              echo $row2['ratingDate']. "<br>";
              echo "<div class='rating-review'>" .$row2['ratingReview']. "</div><br><br>";
          }
      }
      echo "</div>";
     ?>

</div>
</div>
