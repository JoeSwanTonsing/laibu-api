<?php

  //RETURNS ALL GENRES - ID, NAME, IMAGE, TYPE
  include('../../init.php');

  $response = array();

  $limit = '';
	if(isset($_GET ['limit'])){
		$val=$_GET ['limit'];
		$val=preg_replace('[ˆ0-9]','1',$val);
		$limit=' LIMIT ' . $val;
	}

  $sql="SELECT id, name, image, type FROM genre".$limit;

  $result = $con->query($sql);

  if ($result->num_rows>0) {

  	while($rows = $result->fetch_assoc()) {

  		$id = $rows['id'];
  		$name = $rows['name'];
  		$image = $rows['image'];
      $type = $rows['type'];
      array_push($response,array(
        "id"=>$id,
        "name"=>$name,
        "image"=>$image,
        "type"=>$type
      ));
  	}
  }
  echo json_encode($response);
?>
