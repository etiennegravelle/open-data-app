<!DOCTYPE HTML>
<html lang=en-ca>
<head>
	<meta charset=utf-8>
	<title><?php if (isset($title)) { echo $title . ' · '; } ?>Outdoor Rinks!</title>
    <?php if($_SERVER['HTTP_HOST'] == 'localhost') : ?>
	<link href="css/general.css" rel="stylesheet">
    <?php else : ?>
    <link href="css/general.css" rel="stylesheet">
    <?php endif; ?>
	<script src="js/modernizr.dev.js"></script>
</head>
<body>
