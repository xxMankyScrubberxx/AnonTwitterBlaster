<?php

$servername = "";
$username = "";
$password = "";
$dbname = "";



$link = "";
$tags = "";
$msg = "";
$hashtags = "";

mb_internal_encoding('UTF-8');
mb_http_output('UTF-8');
mb_http_input('UTF-8');

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_set_charset($conn, "utf8");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}





////////////////////Links//////////////////////////////////////////////////////////////////
//get list of all IDs
$sql = "SELECT LinkID AS ID FROM WarLinks WHERE IsActive = 1";
$result = $conn->query($sql);

//construct list to be pulled by random
$idList = array('https://wearebadmofos.com');
$cnt = 0;
if ($result->num_rows > 0)
{
  // output data of each row
  while($row = $result->fetch_assoc()) 
  {
    $idList[$cnt] = $row["ID"];
    $cnt+=1;
  }
}

//Filter query with the random IDs
$ids=array_rand($idList, 2);
$sql = "SELECT LinkID, Link FROM WarLinks WHERE LinkID IN(" . $ids[0] . "," . $ids[1] . ")";
$result = $conn->query($sql);
$cnt = 0;
if ($result->num_rows > 0) {
  $cnt = 0;
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $cnt += 1;
    $link = $row["Link"];
  }
}







////////////////////MSG//////////////////////////////////////////////////////////////////
$b=array("The world is watching","Silence is deafening","How many need to die?","Stand with Ukraine. Stand for peace.","No more wars!","We do not forgive. We do not forget.", "How are these sanctions working out?", "How did you sleep last night?");
$msg=$b[array_rand($b)];








////////////////////TAGS//////////////////////////////////////////////////////////////////
//get list of all IDs
$sql = "SELECT TagID AS ID FROM Tags WHERE IsActive = 1";
$result = $conn->query($sql);

//construct list to be pulled by random
$idList2 = array('@potus');
$cnt = 0;
if ($result->num_rows > 0)
{
  // output data of each row
  while($row = $result->fetch_assoc()) 
  {
    $idList2[$cnt] = $row["ID"];
    $cnt+=1;
  }
}

//Filter query with the random IDs
$ids2=array_rand($idList2, 3);
$sql = "SELECT Tag FROM Tags WHERE TagID IN(" . $ids2[0] . "," . $ids2[1] . "," . $ids2[2] . ")";
$result = $conn->query($sql);
$cnt = 0;
if ($result->num_rows > 0) {
  $cnt = 0;
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $cnt += 1;
    $tags = $tags . " " . $row["Tag"];
  }
}






////////////////////HASHTAGS//////////////////////////////////////////////////////////////////
$c=array("#Anonymous","#Ukraine","#FightForUkraine","#FckPtn","#NoMoreWar","#EndAllWars","#OpRussia","#WeAreLegion","#StopPutinNow","#SlavaUkraini","#StopRussia");
$random_keys=array_rand($c,2);
$hashtags=$c[$random_keys[0]] . " " . $c[$random_keys[1]];


////////////////////JoinLink//////////////////////////////////////////////////////////////////
$d=array("Tweet For Peace https://tinyurl.com/4fw4rha2", "@Squad303 gives you a tool to send messages from your phones directly to randomly selected Russians. https://1920.in", "Follow @Squad303");
$joinlink=$d[array_rand($d)];



////////////////////JoinMsg//////////////////////////////////////////////////////////////////
$e=array("Please Retweet", "Join the fight", "Stand For Ukraine","Stop The War! Spread The Truth!","Stand For Peace","Fight The Kremlin","Stick it to Putin!");
$joinmsg=$e[array_rand($e)];



////////////////////return data///////////////////////////////////////////////////////////////////////////
echo "{\"tweet\":[";
echo "\"" . "https://twitter.com/intent/tweet?text=" . urlencode($msg . " " . $tags . "\r\n" . $link . "\r\n\r\n" . $joinmsg . "-" . $joinlink . "\r\n" . $hashtags) . "\",";

echo "\"" . $msg . "\",";
echo "\"" . $link. "\",";
echo "\"" . $tags . "\",";
echo "\"" . $hashtags . "\",";
echo "\"" . $joinlink. "\",";
echo "\"" . $joinmsg. "\"";
echo "]}";
?>
