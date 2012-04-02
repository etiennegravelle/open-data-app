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

<h1><img src="images/header.png" /></h1>

<a href="admin/sign-in.php">Admin Login</a>

<button id="geo">Find Me</button>
<form id="geo-form">
	<label for="adr">Address</label>
	<input id="adr">
</form>
	
<?php
require_once 'includes/db.php';

$results = $db->query('
	SELECT id, rink_name, longitude, latitude 
	FROM rinks
	ORDER BY rink_name ASC
');


include 'includes/theme-top.php';
?>


	<ol class="rinks">
	
	<?php foreach ($results as $rink) : ?>
    	<li itemscope itemtype="http://schema.org/TouristAttraction" data-id="<?php echo $rink['id']; ?>">
        
		<a href="single.php?id=<?php echo $rink['id']; ?>" itemprop="name"><?php echo $rink['rink_name']; ?></a>
        <span itemprop="geo" itemscope itemtype="http://schema.org/GeoCoordinates">
			<meta itemprop="latitude" content="<?php echo $rink['latitude']; ?>">
			<meta itemprop="longitude" content="<?php echo $rink['longitude']; ?>">
		</span>
		</li>
	<?php endforeach; ?>
	</ol>
    
    <div id="map"></div>
    
     <div id="foot"><img src="images/logo.png"/></div>
     

<?php

include 'includes/theme-bottom.php';

?>


