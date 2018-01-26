<!DOCTYPE html>
<html lang="nl">
  <head>
    <link rel="shortcut icon" href="img/imdb.jpg" type="img/imdb.jpg">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="utf-8">
    <title>IMDB 2.0</title>
  </head>
  <body>
    <div id="header">
    <header>
      <a href="index.php?teamId=0&heroid=0">
      <img  src="img/imdb.jpg"></img>
    </a>
    </header>
    </div>
  <div id="container">
    <?php
    include("inc/series.php");
    include("inc/characters.php");
    include("inc/details.php");
     ?>
</div>
  </body>
</html>
