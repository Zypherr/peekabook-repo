<?php
     $conn = mysqli_connect("localhost", "root", "", "peekabookdb");

     if(!$conn){
         exit("Database Connection Failed...");
     }

     //Publisher Filter drop down
     $Publishers = "SELECT CompanyName FROM tb_publishers";
     $PublishersResult = mysqli_query($conn, $Publishers);

    if (mysqli_num_rows($PublishersResult)>0){
        echo "<select name='PublisherDropdown' id='PublisherDropdown'>";
         echo "<option selected disabled> Select a Publisher... </option>";

        while ($rows = mysqli_fetch_assoc($PublishersResult)){
            echo "<option>".$rows["CompanyName"]."</option>";
        }
        echo "</select>";
    }

    echo "<br/>";

    //Genre Filter drop down
    $Genre = "SELECT Genre FROM tb_genre";
    $GenreResult = mysqli_query($conn, $Genre);

   if (mysqli_num_rows($GenreResult)>0){
       echo "<select name='GenreDropdown' id='GenreDropdown'>";
        echo "<option selected disabled> Select a Genre... </option>";

       while ($rows = mysqli_fetch_assoc($GenreResult)){
           echo "<option>".$rows["Genre"]."</option>";
       }
       echo "</select>";
   }

?>