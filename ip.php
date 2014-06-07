<?php
	$locale = shell_exec('geoip-lookup '.$_SERVER['REMOTE_ADDR']);
	if( $locale == "DE\n" || $locale == "AT\n" || $locale == "CH\n") {
		header('Location: http://kijani.co/donate');
	} else{
		header('Location: http://kijani.co/newsletter');
	};
?>
