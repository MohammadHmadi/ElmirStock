<?php 
    include('db_config/connect.php');

    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    

    $query="insert into users (username,email,password) values ('$username','$email','$password')";
    mysqli_query($conn,$query);

    header('location:login.php')


?>