<?php

  //LOADS ALL BASIC BOOK INFORMATION WITH THE OPTION TO LIMIT THE NUMBER OF RECORDS RETURNED

  include('../../init.php');

  $response = array();

  $limit = '';

	if(isset($_GET ['limit'])){
		$val=$_GET ['limit'];
		$val=preg_replace('[ˆ0-9]','1',$val);
		$limit=' LIMIT ' . $val;
	}

  $sql="SELECT
          b.id AS book_id,
          b.title AS book_title,
          b.price AS book_price,
          b.year AS book_year,
          b.rating AS book_rating,
          b.thumbnail AS book_thumbnail,
          a.name AS author_name,
          g.name AS genre_name
        FROM
          book AS b,
          author AS a,
          genre AS g
        WHERE
          author_id=a.id
        AND
          genre_id=g.id ".$limit;

  $result = $con->query($sql);

  if ($result->num_rows>0) {

  	while($rows = $result->fetch_assoc()) {
      //book
  		$id = $rows['book_id'];
  		$title = $rows['book_title'];
      $price = $rows['book_price'];
      $year = $rows['book_year'];
      $rating = $rows['book_rating'];
      $thumbnail = $rows['book_thumbnail'];
      // author
      $author_name = $rows['author_name'];
      //genre
      $genre_name = $rows['genre_name'];

      array_push($response,array(
        "id"=>$id,
        "title"=>$title,
        "price"=>$price,
        "year"=>$year,
        "rating"=>$rating,
        "thumbnail"=>$thumbnail,
        "author_name"=>$author_name,
        "genre_name"=>$genre_name
      ));
  	}
  }
  echo json_encode($response);
?>
