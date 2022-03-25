<?php

     $conn = mysqli_connect("localhost", "root", "", "peekabookdb");

     if(!$conn){
         exit("Database Connection Failed...");
     }
     
     if(isset($_POST['submit'])){
        if(!empty($_POST['GenreDropdown'])) {
            $selected = $_POST['GenreDropdown'];
            echo 'You have chosen: ' . $selected;
        } else {
            echo 'Please select the value.';
        }
    }

    $FetchBookID = "SELECT BookID FROM tb_books INNER JOIN tb_genre ON tb_books.GenreCode = tb_genre.GenreCode WHERE Genre = '{$selected}' ORDER BY RAND() LIMIT 1;";
    $FetchBookIDResult = mysqli_query($conn, $FetchBookID);

    $BookID = $FetchBookIDResult->fetch_array()[0] ?? '';
    Echo "<h1>Hello User, </h1> <p>BookID = {$BookID}</p>";
    
    $FetchBookName = "SELECT Title FROM tb_books WHERE BookID = '{$BookID}' ;";
    $FetchBookNameResult = mysqli_query($conn, $FetchBookName);
    $BookName = $FetchBookNameResult->fetch_array()[0] ?? '';

    Echo "<p>Book Name = {$BookName}</p>";

?>