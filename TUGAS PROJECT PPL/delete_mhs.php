<?php
require_once('config.php');
//Menghapus data customer 
if (!isset($_GET['id'])) {
 die("No ID Selected");
} else {
 $id = $_GET['id'];
 //assign a query
 $query = "DELETE FROM tb_profile_user WHERE id=" . $id;
 //execute the query
 $result = $conn->query($query);
 if (!$result) {
 die("Could not query the database: <br>" . $conn->error . "<br>Query: 
" . $query);
 } else {
 $conn->close();
 header('Location:data_mhs_admin.php');
 }
}