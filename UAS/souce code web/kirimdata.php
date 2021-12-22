<?php 
$conn = mysqli_connect("localhost", "root", "", "uassensor");
$nilai = $_GET["sensor"];
mysqli_query($conn, "UPDATE sensor SET nilaisensor='$nilai'");
