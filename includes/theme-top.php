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
    <h1><img src="images/header.png" /></h1>
    <a href="admin/sign-in.php" id="login">Admin Login</a>
<form id="geo-form">
	<label for="adr" placeholder="Insert Address, Postal Code, Neighborhood, Street Name or Intersection"></label>
	<input id="adr">
    <button id="geo">Find Me</button>
</form>
<link href='http://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'><body>
