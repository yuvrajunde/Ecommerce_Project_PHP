<?php
include("../partials/connect.php");
   $email=$_POST['email'];
   $message=$_POST['msg'];

   $sql="INSERT INTO contact(email,message) VALUES('$email','$message')";
   $connect->query($sql);

?>