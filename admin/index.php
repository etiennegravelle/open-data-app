<?php
require_once '../includes/db.php';

$results = $db->query('
	SELECT id, rink_name, longitude, latitude 
	FROM rinks
	ORDER BY rink_name ASC
');
?>


<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>Ottawa Outdoor Rinks</title>
</head>
<body>
	<a href="add.php">Propose a Rink!</a>
	<ul>
	
	<?php foreach ($results as $rink) : ?>
		<li><?php echo $rink['rink_name']; ?>
		&bull;
        <a href="edit.php?id=<?php echo $rink['id']; ?>">Edit</a>
        <a href="delete.php?id=<?php echo $rink['id']; ?>">Delete</a>
		</li>
	<?php endforeach; ?>
	</ul>
	
	
</body>
</html>
