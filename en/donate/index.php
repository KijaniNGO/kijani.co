<?php
$locale = shell_exec('geoip-lookup '.$_SERVER['REMOTE_ADDR']);
if( $locale == "DE\n" ) {
	header('Location: de.html');
} else{
	header('Location: us.html');
};
?>
