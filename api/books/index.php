<!-- returns all details of a single book based on book_id -->
<?php
  include('../../init.php');

  $response = array();

  $bk_id = '';

	if(isset($_GET ['book_id'])){
		$bk_id=$_GET ['book_id'];
	}

  $sql="SELECT
          b.id AS book_id,
          b.title AS book_title,
          b.subtitle AS book_subtitle,
          b.description as book_description,
          b.price AS book_price,
          b.rating AS book_rating,
          b.thumbnail AS book_thumbnail,
          a.id AS author_id,
          a.name AS author_name,
          a.image AS author_image,
          g.id AS genre_id,
          g.name AS genre_name,
          g.type AS genre_type
        FROM
          book AS b,
          author AS a,
          genre AS g
        WHERE
          b.id=".$bk_id." AND
          author_id=a.id
        AND
          genre_id=g.id ";

  $result = $con->query($sql);

  if ($result->num_rows>0) {

  	while($rows = $result->fetch_assoc()) {
      //book
  		$id = $rows['book_id'];
  		$title = $rows['book_title'];
      $subtitle = $rows['book_subtitle'];
  		$description = $rows['book_description'];
      $price = $rows['book_price'];
      $rating = $rows['book_rating'];
      $thumbnail = $rows['book_thumbnail'];
      // author
      $author_id = $rows['author_id'];
      $author_name = $rows['author_name'];
      $author_image = $rows['author_image'];
      //genre
      $genre_id = $rows['genre_id'];
      $genre_name = $rows['genre_name'];
      $genre_type = $rows['genre_type'];

      array_push($response,array("id"=>$id,"title"=>$title,"subtitle"=>$subtitle,"description"=>$description,"price"=>$price,"rating"=>$rating,"thumbnail"=>$thumbnail,"author_id"=>$author_id,"author_name"=>$author_name,"author_image"=>$author_image,"genre_id"=>$genre_id,"genre_name"=>$genre_name,"genre_type"=>$genre_type));

  	}
  }
  echo json_encode($response);
?>
