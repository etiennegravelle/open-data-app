<?php
/**
 *
 *Displays the list and map for the open Data Set
 *
 *@package ca.etiennegravelle.open-data-app
 *@copyright 2012 Etienne Gravelle
 *@author etienne Gravelle etienne.gravelel@gmail.com
 *@link http://etiennegravelle.github.com/open-data-app/
 *@license New BSD license <link goes here>
 *@version 1.0.0
 */
require_once 'includes/db.php';

$results = $db->query('
	SELECT id, rink_name, longitude, latitude, rate_count, rate_total
	FROM rinks
	ORDER BY rink_name ASC
');


include 'includes/theme-top.php';
?>
	
<?php
require_once 'includes/db.php';

$results = $db->query('
	SELECT id, rink_name, longitude, latitude, rate_count, rate_total
	FROM rinks
	ORDER BY rink_name ASC
');


?>


	<ul class="rinks">
   
	
	
	<?php foreach ($results as $rink) : ?>
    <?php
		if ($rink['rate_count'] > 0) {
			$rating = round($rink['rate_total'] / $rink['rate_count']);
		} else {
			$rating = 0;
		}
	?>
    	<li class="highlight" itemscope itemtype="http://schema.org/TouristAttraction" data-id="<?php echo $rink['id']; ?>">
        
		<a href="single.php?id=<?php echo $rink['id']; ?>" itemprop="name"><?php echo $rink['rink_name']; ?></a>
        <span itemprop="geo" itemscope itemtype="http://schema.org/GeoCoordinates">
			<meta itemprop="latitude" content="<?php echo $rink['latitude']; ?>">
			<meta itemprop="longitude" content="<?php echo $rink['longitude']; ?>">
		</span>
        <meter value="<?php echo $rating; ?>" min="0" max="5"><?php echo $rating; ?> out of 5</meter>
		
        <ul class="rater">
		<?php for ($i = 1; $i <= 5; $i++) : ?>
			<?php $class = ($i <= $rating) ? 'is-rated' : ''; ?>
			<li class="rater-level <?php echo $class; ?>">★</li>
		<?php endfor; ?>
		</ul>
	</li>
<?php endforeach; ?>
</ul>
    
    <div id="map"></div>
     

<?php

include 'includes/theme-bottom.php';

?>

