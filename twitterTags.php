<?php
$servername = "";
$username = "";
$password = "";
$dbname = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT  EmailId, AES_DECRYPT(Email, 'anonymous') AS Email FROM Emails WHERE IsActive = 1 LIMIT 10";
$result = $conn->query($sql);

if ($result->num_rows <= 0) {  
    $sqlUpdate = "UPDATE Emails SET IsActive = 1, created_at = NOW()" ;
    $resultUpdate = $conn->query($sqlUpdate);
    $result = $conn->query($sql);
}
$sql = "SELECT  EmailId, AES_DECRYPT(Email, 'anonymous') AS Email FROM Emails WHERE IsActive = 1 LIMIT 10";
$result = $conn->query($sql);

echo "{\"emails\":[";
if ($result->num_rows > 0) {
  // output data of each row
  $cnt = 0;
  while($row = $result->fetch_assoc()) {
    $cnt += 1;
    if($cnt >= 10)
        echo "\"" . $row["Email"] . "\"";
    else
        echo "\"" . $row["Email"] . "\",";
    
    $sqlUpdate = "UPDATE Emails SET IsActive = 0 WHERE EmailId= '" . $row["EmailId"] . "'" ;
    $resultUpdate = $conn->query($sqlUpdate);
    }
}


echo "]}";
$conn->close();
?>