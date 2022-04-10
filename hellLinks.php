<?php

$a=array("https://twitter.com/domblond2/status/1512392386437079046?s=20&t=sI6zb_ftgY7XLS8hsRBkRw","https://youtu.be/bTTIpMCQZ-A","https://drive.google.com/file/d/10fbltZE1JXqCjOCCTAWKcLc32y4jK6XM/view?usp=sharing","https://drive.google.com/file/d/1DCLlm7z_jW18DKZEdPNEnWE7mtjV2-W6/view?usp=sharing");

$link=$a[array_rand($a)];


$b=array("The world is watching","Silence is deafening","How many need to die?");
$msg=$b[array_rand($b)];



echo "{\"hell\":[";
echo "\"" . $link . "\",";
echo "\"" . $msg . "\"";

echo "]}";
?>