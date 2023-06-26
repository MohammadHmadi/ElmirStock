<?php
include("db_config/connect.php"); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/home-section.css">
    <link rel="stylesheet" href="css/trending-section.css">
    <link rel="stylesheet" href="css/footer.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <title>home panel</title>
</head>

<body>
    

    <?php require 'header.php'; ?>
    

    <?php require 'main-home-section.php'; ?>
    <?php echo  'id= '.$_SESSION['user_info']['id']   ; ?>
    <?php require 'trending-prdct-section.php'; ?>

    <?php require 'footer.php'; ?>
</body>

</html>