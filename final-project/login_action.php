<?php
session_start();
include("db_config/connect.php");

$email = $_POST['email'];
$password = $_POST['password'];

$query = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);

    if ($row['admin'] == true) {

        $_SESSION['user_info'] = $row;
        header('Location: admin.php?admin');
    } else {
        unset($_SESSION['user_info']);
        $_SESSION['user_info'] = $row;
        echo $_SESSION['user_info']['username'];
        header("Location: index.php?@" . urlencode($_SESSION['user_info']['username']));
        mysqli_query($conn, "insert into users_login(user_id) values(" . $_SESSION['user_info']['id'] . ") ");
        $newlyInsertedId = mysqli_insert_id($conn); // Retrieve the last inserted ID
        $query1 = "SELECT * FROM users_login WHERE id = $newlyInsertedId";
        $result1 = mysqli_query($conn, $query1);
        if (mysqli_num_rows($result1) > 0) {
            unset($_SESSION['user_login_info']);
            $row1 = mysqli_fetch_assoc($result1);
            $_SESSION['user_login_info'] = $row1;
        }


    }
} else {
    header("Location: login.php?flag=1");
}
?>