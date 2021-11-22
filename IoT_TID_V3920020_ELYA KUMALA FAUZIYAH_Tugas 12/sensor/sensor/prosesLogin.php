<?php 
include 'connect.php';

$username = $_POST['username'];
$password = $_POST['password'];

$sql = mysqli_query($connect, "SELECT * FROM `user` WHERE username = '$username' AND password = '$password'"); 
$cek = mysqli_num_rows($sql);

if($cek > 0){
    session_start();
	$_SESSION['user'] = $user;
	$_SESSION['status'] = "login";
	header("location:index_control.php");
}else{
    session_start();
    $_SESSION['message'] = 'username atau password salah';
    header("location:login.php");
}
