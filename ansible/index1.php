<html>
  <head>
    <title>ApachePHP</title>
  </head>
<style>
  body{
    background-color: Cyan;
    }
    
  h1{
    font-size: 40px;
    color: black;
    text-align: center;
    }
  h2{
    font-size: 20px;
    color: black;
    text-align: center;
    }
</style>

  
  <body>
  <h1>WELCOME TO ALTSCHOOL. I AM SERVER-2</h1>
    <h2>
    <?php
    echo 'This is the current date and time:  ';
    date_default_timezone_set("Africa/Lagos");
    echo date("F d, Y h:i:s A e,", time());
    ?>
    </h2>
    <h1>Coded by: Bukola Testimony</h1>
  </body>
</html>