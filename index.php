<?php
	$locale = shell_exec('geoip-lookup '.$_SERVER['REMOTE_ADDR']);
	if( $locale == "DE\n" || $locale == "AT\n" || $locale == "CH\n") {
		header('Location: de');
	} else{
		header('Location: en');
	};
?>
