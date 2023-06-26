<?php
include("db_config/connect.php");

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$select_rows = null;
$row_count = 0;

if (isset($_SESSION['user_info']) && isset($_SESSION['user_info']['id'])) {
    $select_rows = mysqli_query($conn, "SELECT * FROM `cart` WHERE  user_login_id = " . $_SESSION['user_login_info']['id']) or die('Query failed');
    $row_count = mysqli_num_rows($select_rows);
} else {
    header("Location: login.php");
    exit;
}
?>

<header>
    <a href="#" class="logo">
        <h1><span style="color:red">EL</span>Mir Stock</h1>
    </a>

    <ul class="navmenu">
        <li><a href="index.php">home</a></li>
        <li><a href="products.php">products</a></li>
        <li><a href="#" style="cursor: not-allowed; color: gray;pointer-events: none;">Contact Us</a></li>
    </ul>

    <div class="nav-icon">
        <a href="login.php"><i class='bx bx-user'></i></a>
        <a href="cart.php" class="cart"><i class='bx bx-cart'><span>
                    <?php echo $row_count; ?>
                </span></i></a>
        <a href="login.php" class="logout"><i class='bx bx-log-out'></i></a>
        <div class="bx bx-menu" id="menu-icon"></div>
    </div>
    <script src="./js/header.js"></script>
</header>