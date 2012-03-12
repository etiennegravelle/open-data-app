<?php


$errors = array();


$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

if(empty($id)){
	header('Location: index.php');
	exit;
}

$rink_name = filter_input(INPUT_POST, 'rink_name', FILTER_SANITIZE_STRING);
$longitude = filter_input(INPUT_POST, 'longitude', FILTER_SANITIZE_STRING);
$latitude = filter_input(INPUT_POST, 'latitude', FILTER_SANITIZE_STRING);



if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	if (empty($rink_name)){
		$errors['rink_name'] = true;
	}
	
	if (empty($longitude)){
		$errors['longitude'] = true;
	}
	
	if (empty($latitude)){
		$errors['latitude'] = true;
	}
	
	if (empty($errors)) {
		require_once '../includes/db.php';
		
		$sql = $db->prepare('
			UPDATE rinks
			SET rink_name=:rink_name, longitude=:longitude, latitude=:latitude
			WHERE id = :id
			');
			
			$sql->bindValue(':rink_name', $rink_name, PDO::PARAM_STR);
			$sql->bindValue(':longitude', $longitude, PDO::PARAM_STR);
			$sql->bindValue(':latitude', $latitude, PDO::PARAM_STR);
			$sql->bindValue(':id', $id, PDO::PARAM_INT);
			$sql->execute();
			
			header('Location: index.php');
			exit;
	}
} else {
	require_once '../includes/db.php';
	
	$sql = $db->prepare('
	SELECT id, rink_name, longitude, latitude
	FROM rinks
	WHERE id = :id
	');
	
	$sql->bindValue(':id', $id, PDO::PARAM_INT);
	$sql->execute();
	$results = $sql->fetch();
	
	$rink_name = $results['rink_name'];
	$longitude = $results['longitude'];
	$latitude = $results['latitude'];
}
	
	

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit Dinosaur</title>
</head>
<body>
	
	<form method="post" action="edit.php?id=<?php echo $id; ?>">
    	<div>
        	<label for="rink_name">Rink Name <?php if (isset($errors['rink_name'])) : ?><strong>Is required</strong><?php endif; ?></label>
            <input id="rink_name" name="rink_name" value="<?php echo $rink_name; ?>" required>
		</div>
		<div>
			<label for="longitude">longitude<?php if (isset($errors['longitude'])) :?><strong>Is required</strong><?php endif; ?></label>
			<input id="longitude" name="longitude" value="<?php echo $longitude; ?>" required>
		</div>
        
        <div>
			<label for="latitude">latitude<?php if (isset($errors['latitude'])) :?><strong>Is required</strong><?php endif; ?></label>
			<input id="latitude" name="latitude" value="<?php echo $latitude; ?>" required>
		</div>
			<button type="submit">Save</button>
	</form>
    
</body>
</html>