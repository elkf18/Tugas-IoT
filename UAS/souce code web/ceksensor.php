<?php 
$conn = mysqli_connect("localhost", "root", "", "uas_iot");

$sql = mysqli_query($conn, "SELECT * FROM sensor");
$data = mysqli_fetch_array($sql);
$nilai = $data["nilaisensor"];

echo $nilai;
?>
