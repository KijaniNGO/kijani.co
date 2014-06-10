<?php
// $locale = shell_exec('geoip-lookup '.$_SERVER['REMOTE_ADDR']);
// if( $locale == "DE\n" || $locale == "AT\n" || $locale == "CH\n") {
// 	header('Location: de');
// } else{
// 	header('Location: en');
// };

$locale = 'en';
$accept_langs = explode(',', $_SERVER['HTTP_ACCEPT_LANGUAGE']);
foreach ( $accept_langs as $lang ) {
	$locale = preg_match('/^de/', $lang) ? 'de' : $locale;
}
header("Location: $locale");
?>
