<?php
	$image_url = urlencode('http://blog.kijani.co/wp-content/uploads/2014/12/2014-12-05-A-Research-Grant-and-Dedication-to-a-Landscape.jpg');
	$title = urlencode('A Research Grant and Dedication to a Landscape');
	// $title = urlencode('Looking Back on 2014 & Merry Christmas to All');
	// $title = urlencode('What Does “Tree” Mean?');
	// $title = urlencode('Stuck in the Mud');
	$width = 500;
	$type = "png";

	echo "<img src='http://kijani.co/hero_img/{$type}.php?img={$image_url}&title={$title}&width={$width}'>"
 ?>
