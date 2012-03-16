<?php
require_once 'includes/db.php';

$results = $db->query('
	SELECT id, rink_name, longitude, latitude 
	FROM rinks
	ORDER BY rink_name ASC
');


include 'includes/theme-top.php';
?>


	<ol class="dinos">
	
	<?php foreach ($results as $rink) : ?>
    	<li itemscope itemtype="http://schema.org/TouristAttraction">
		<a href="single.php?id=<?php echo $rink['id']; ?>" itemprop="name"><?php echo $rink['rink_name']; ?></a>
        <span itemprop="geo" itemscope itemtype="http://schema.org/GeoCoordinates">
			<meta itemprop="latitude" content="<?php echo $rink['latitude']; ?>">
			<meta itemprop="longitude" content="<?php echo $rink['longitude']; ?>">
		</span>
		</li>
	<?php endforeach; ?>
	</ol>
    
    <div id="map"></div>

<?php

include 'includes/theme-bottom.php';

?>
	
	
</body>
</html>


