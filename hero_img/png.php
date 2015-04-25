<?php
	$title = $_GET["title"];
	$image_url = $_GET["img"];
	$width = $_GET["width"];

	$filename = "out";
	$filename .= ".png";

	`./phantomjs rasterize.js "http://kijani.co/hero_img/svg.php?img={$image_url}&title={$title}&width={$width}" {$filename}`;

	header("Content-type: image/png");
	$image = imagecreatefrompng($filename);
	imagepng($image);
?>

