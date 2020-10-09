<!-- returns all genres -->
<?php
  include('../../init.php');

  $response = array();

  $sql="SELECT id, name, image, type FROM genre";

  $result = $con->query($sql);

  if ($result->num_rows>0) {

  	while($rows = $result->fetch_assoc()) {

  		$id = $row['id'];
  		$name = $row['name'];
  		$image = $row['image'];
      $type = $row['type'];
      array_push($response,array("id"=>$id,"name"=>$name,"image"=>$image,"type"=>$type));

  	}
  }
  echo json_encode($response);
?>
