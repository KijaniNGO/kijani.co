<?php
    $output = shell_exec('geoip-lookup '.$_SERVER['REMOTE_ADDR']);
    echo($output);
?>
