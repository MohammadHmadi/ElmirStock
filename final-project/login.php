<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <title>login panel</title>
</head>

<body>


<div style="margin: auto;max-width: 600px">

<?php
if(isset($_GET['flag'])){
    if($_GET['flag']==1)
        echo "<div class='warning'>Email or password is wrong!</div>";
}
?>

<?php
session_start();
unset($_SESSION['user_info']['id']);
// Other session cleanup or redirection code if needed
?>

<style>
    .warning {
        background-color: #f8d7da;
        color: #721c24;
        padding: 10px;
        border-radius: 5px;
        font-weight: bold;
        margin-bottom: 10px;
    }
</style>



<div class="form">
        <h1>Log In</h1>
        <form action="login_action.php" method="post" name="login">
            <input type="text" name="email" placeholder="Email" required />
            <input type="password" name="password" placeholder="Password" required />
            <br>
            <input name="submit" type="submit" value="Login" />
        </form>
        <p>Not registered yet? <a href='registration.php'>Register Here</a></p>
    </div>
</body>

</html>