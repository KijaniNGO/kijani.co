<?php
	$width = 800;
	$image_url = urlencode('http://blog.kijani.co/wp-content/uploads/2014/12/2014-12-05-A-Research-Grant-and-Dedication-to-a-Landscape.jpg');
	$title = urlencode('A Research Grant and Dedication to a Landscape');
	// $title = urlencode('Looking Back on 2014 &amp; Merry Christmas to All');
	// $title = urlencode('What Does “Tree” Mean?');
	// $title = urlencode('Stuck in the Mud');
	$filename = "test";
	$filename .= ".jpg";

	shell_exec("./phantomjs rasterize.js 'http://localhost/kijani.ngo/hero_img/svg.php?img={$image_url}&title={$title}&width={$width}' {$filename}");

	// $flags = "-la";
	// echo "<pre>".`ls {$flags}`."</pre>";

	function redirect($url, $permanent = false) {
		header('Location: ' . $url, true, $permanent ? 301 : 302);
		exit();
	};

	redirect($filename);

?>

