<?php

$conn = mysqli_connect('localhost','root','','user_db');
if($conn->connect_errno){
    die("Gabisa: <br/>". $conn->connect_error);
}
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

?>