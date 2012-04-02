<?php



require_once '../includes/db.php';

$results = $db->query('
	SELECT id, rink_name, longitude, latitude, rate_count, rate_total 
	FROM rinks
	ORDER BY rink_name ASC
');

include '../includes/theme-top.php';

?>



<h1>Ottawa Outdoor Rinks!(2010)</h1>

<a href="sign-in.php">Admin Login</a>

<a href="add.php">Propose a rink</a>
	
<ol class="rinks">

<?php foreach ($results as $rinks) : ?>
		&bull;
        <a href="edit.php?id=<?php echo $rinks['id']; ?>">Edit</a>
        <a href="delete.php?id=<?php echo $rinks['id']; ?>">Delete</a>
		</li>
	
   
	<?php
		if ($rinks['rate_count'] > 0) {
			$rating = round($rinks['rate_total'] / $rinks['rate_count']);
		} else {
			$rating = 0;
		}
	?>
	<li itemscope itemtype="http://schema.org/TouristAttraction" data-id="<?php echo $rinks["id"]; ?>">
		<a href="single.php?id=<?php echo $rinks['id']; ?>" itemprop="name"><?php echo $rinks['rink_name']; ?></a>
		<span itemprop="geo" itemscope itemtype="http://schema.org/GeoCoordinates">
			<meta itemprop="latitude" content="<?php echo $rinks['latitude']; ?>">
			<meta itemprop="longitude" content="<?php echo $rinks['longitude']; ?>">
		</span>
		<meter value="<?php echo $rating; ?>" min="0" max="5"><?php echo $rating; ?> out of 5</meter>
		<ol class="rater">
		<?php for ($i = 1; $i <= 5; $i++) : ?>
			<?php $class = ($i <= $rating) ? 'is-rated' : ''; ?>
			<li class="rater-level <?php echo $class; ?>">★</li>
		<?php endfor; ?>
		</ol>
	</li>
<?php endforeach; ?>
</ol>

<div id="map"></div>

<?php

include '../includes/theme-bottom.php';

?>


<!--<!DOCTYPE HTML>
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
-->