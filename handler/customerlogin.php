<?php
session_start();


if(isset($_POST['login'])){
	include("../partials/connect.php");

	$email=$_POST['email'];
	$password=$_POST['password'];
	$sql="SELECT * FROM customers where username='$email' AND password='$password'";
	$results=$connect->query($sql);
	$final=$results->fetch_assoc();
  
  $_SESSION['email']=$final['username'];
   $_SESSION['password']=$final['password'];
   $_SESSION['customerid']=$final['id'];

	if($email=$final['username'] AND $password=$final['password']){
		//echo "True";
		
		header('location: ../cart.php');
	}
	else
	{
		//echo "false";
		echo "<script> alert('Credentials are incorrect');
    window.location.href='../customerforms.php'
    </script>";
	}
}
?>
