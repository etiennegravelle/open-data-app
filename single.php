
<?php
require_once 'includes/filter-wrapper.php';
require_once 'includes/db.php';

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

//'prepare()' allows us to execute sql demands with user input
$sql = $db ->prepare('
	SELECT id, rink_name, longitude, latitude
	FROM rinks
	WHERE id = :id
');

$sql->bindValue(':id', $id, PDO::PARAM_INT);
//preforms the SQL query on the database
$sql->execute();
//Gets the results from the SQL query and stores them in a variable
$results = $sql->fetch();

//redirect the user to the hompage if there are no databse results
//No results will happen if they change the ?id=4 to include an ID that doesn't exist
if (empty($results)){
	header('Location: index.php');
	exit; //stop the PHP compiler right here and immediatly redirect the user
	
}


?>


<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title><?php echo $results['rink_name'];?></title>
</head>
<body>
	<h1><?php echo $results['rink_name']; ?></h1>
	<p>Longitude: <?php echo $results['longitude']; ?></p>
    <p>Latitude: <?php echo $results['latitude']; ?></p>
</body>
</html>
