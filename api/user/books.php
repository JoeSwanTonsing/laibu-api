<?php

  //LOADS ALL BOOKS USER HAS DOWNLOADED/READ

  include('../../init.php');

  $response = array();

  $user_id = '';
  if(isset($_GET ['user_id'])){
  	$user_id=$_GET ['user_id'];
  }

  // GET BOOK_ID
  $sql="SELECT book_id FROM user_books WHERE user_id=$user_id";
  $result = $con->query($sql);
  if ($result->num_rows>0) {
  	while($rows = $result->fetch_assoc()) {
  		$book_id = $rows['book_id'];

      // FOR EACH BOOK_ID GET BOOK DETAILS
      $get="SELECT
        b.id AS book_id,
        b.title AS book_title,
        b.subtitle AS book_subtitle,
        b.year AS book_year,
        b.thumbnail AS book_thumbnail,
        a.id AS author_id,
        a.name AS author_name,
        g.id AS genre_id,
        g.name AS genre_name
      FROM
        book AS b,
        author AS a,
        genre AS g
      WHERE
        author_id=a.id
      AND
        genre_id=g.id
      AND
        b.id=$book_id";
        
      $qry=mysqli_query($con,$get);
      $row = $qry->fetch_assoc();
      $id=$row['book_id'];
      $title=$row['book_title'];
      $subtitle=$row['book_subtitle'];
      $year=$row['book_year'];
      $thumbnail=$row['book_thumbnail'];
      $author_name=$row['author_name'];
      $genre_name=$row['genre_name'];

      array_push($response,array(
        "id"=>$id,
        "title"=>$title,
        "subtitle"=>$subtitle,
        "year"=>$year,
        "thumbnail"=>$thumbnail,
        "author_name"=>$author_name,
        "genre_name"=>$genre_name
      ));
    }
  }
  echo json_encode($response);
?>
