<?php

require_once '../includes/db.php';

$places_xml = simplexml_load_file('2009_outdoor_rinks.kml');

$sql = $db->prepare('
	INSERT INTO rinks (name, longitude, latitude)
	VALUES (:name, :longitude, :latitude)
');

foreach ($places_xml->Document->Folder[0]->Placemark as $place) {
	//echo $place->name;
	$coords = explode(',', trim($place->Point->coordinates));
	//$adr = '';
	
	/*foreach ($place->ExtendedData->SchemaData->SimpleData as $civic) {
		if ($civic->attributes()->name == 'LEGAL_ADDR') {
			$adr = $civic;	
		}
	}*/
	
	$sql->bindvalue(':rink_name', $place->name, PDO::PARAM_STR);
	//$sql->bindvalue(':street_address', $adr, PDO::PARAM_STR);
	$sql->bindvalue(':longitude', $coords[0], PDO::PARAM_STR);
	$sql->bindvalue(':latitude', $coords[1], PDO::PARAM_STR);
	$sql->execute();
}

var_dump($sql->errorInfo());