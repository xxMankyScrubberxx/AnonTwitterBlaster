<?php

$a=array("@POTUS","@NATO","@MichelleObama","@RonPaul","@hmqelizabeth", "@wenjiabao");
$random_keys=array_rand($a,3);

echo "{\"ceants\":[";
echo "\"" . $a[$random_keys[0]] . "\",";
echo "\"" . $a[$random_keys[1]] . "\",";
echo "\"" . $a[$random_keys[2]] . "\"";


echo "]}";
$conn->close();
?>