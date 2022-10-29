<?php

require_once 'config.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $select = "SELECT * FROM kabupaten WHERE id_provinsi = '". $id ."'";
    $result = mysqli_query($conn, $select);

    echo '<option value="">Pilih Kota</option>';
    while ($row = mysqli_fetch_array($result)) {
        echo '<option value="'. $row['id'] .'"' . '>'. $row['nama'] .'</option>';
    }
}