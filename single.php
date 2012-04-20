<?php


$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

if (empty($id)) {
	header('Location: index.php');
	exit;
}

require_once 'includes/db.php';
require_once 'includes/functions.php';

//'prepare()' allows us to execute sql demands with user input
$sql = $db ->prepare('
	SELECT id, rink_name, longitude, latitude, rate_count, rate_total
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

$title = $results['rink_name'];



if ($results['rate_count'] > 0) {
	$rating = round($results['rate_total'] / $results['rate_count']);
} else {
	$rating = 0;
}

$cookie = get_rate_cookie();

include 'includes/theme-top.php';

?>


<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title><?php echo $results['rink_name'];?></title>
</head>
<body>
	<div class="single">
	<h1><?php echo $results['rink_name']; ?></h1>
	<p>Longitude: <?php echo $results['longitude']; ?></p>
    <p>Latitude: <?php echo $results['latitude']; ?></p>
    <p>Average Rating<dd><meter value="<?php echo $rating; ?>" min="0" max="5"><?php echo $rating; ?> out of 5</meter></dd>
    
    <?php if (isset($cookie[$id])) : ?>
    
    <h2>Your rating</h2>
<ol class="rater rater-usable">
	<?php for ($i = 1; $i <= 5; $i++) : ?>
		<?php $class = ($i <= $cookie[$id]) ? 'is-rated' : ''; ?>
		<li class="rater-level <?php echo $class; ?>">★</li>
	<?php endfor; ?>
</ol>
<?php else : ?>
<h2>Rate</h2>
<ol class="rater rater-usable">
	<?php for ($i = 1; $i <= 5; $i++) : ?>
	<li class="rater-level"><a href="rate.php?id=<?php echo $results['id']; ?>&rate=<?php echo $i; ?>">★</a></li>
	<?php endfor; ?>
</ol>

<?php endif; ?>
</p>
</body>
</div>



<div id="disqus_thread"></div>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'ottawaoutdoorrinks'; // required: replace example with your forum shortname
	var disqus_developer = 1;

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>


<a href="index.php">Back to home</a>

</body>
</html>

<?php

include 'includes/theme-bottom.php';

?>
