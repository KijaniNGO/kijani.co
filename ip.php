<?php
	$output = shell_exec('geoip-lookup '.$_SERVER['REMOTE_ADDR']);
	if( $output == "DE" || $output == "AT" || $output == "CH") {
		header('Location: http://kijani.co/donate');
	} else{
		header('Location: http://kijani.co/newsletter');
	};
?>
