<?php
require_once 'includes/db.php';

//'->exec()' allows us to perform SQL and NOT expect results
//'->query()' allows us to perform SQL and expect results

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
	<a href="admin/add.php">Propose a Rink!</a>
	<ul>
	
	<?php
	foreach ($results as $rink) : ?>
		<li><a href="single.php?id=<?php echo $rink['id']; ?>"><?php echo $rink['rink_name']; ?></a>
		&bull;
        <a href="admin/edit.php?id=<?php echo $rink['id']; ?>">Edit</a>
        <a href="admin/delete.php?id=<?php echo $rink['id']; ?>">Delete</a>
		</li>
	<?php endforeach; ?>
	/*
	</ul>
	
	
</body>
</html>
