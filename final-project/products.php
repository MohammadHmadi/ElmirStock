<?php
session_start();
include("db_config/connect.php");

if (isset($_POST['add_to_cart'])) {

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = 1;

   $select_cart = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND  user_login_id = " . $_SESSION['user_login_info']['id']);

   if (mysqli_num_rows($select_cart) > 0) {
      $message[] = 'product already added to cart';
   } else {
      $insert_product = mysqli_query($conn, "INSERT INTO `cart`(name, price, images, quantity,user_login_id) VALUES('$product_name', '$product_price', '$product_image', '$product_quantity',"  . $_SESSION['user_login_info']['id'] . ")");
      $message[] = 'product added to cart succesfully';
   }

}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>products panel</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <link rel="stylesheet" href="css/header.css">
   <link rel="stylesheet" href="css/footer.css">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap"
      rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>

<body>

   <?php

   if (isset($message)) {
      foreach ($message as $message) {
         echo '<div class="message"><span>' . $message . '</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
      }
      ;
   }
   ;

   ?>

   <?php include 'header.php'; ?>

   <div class="container" style="margin-top:8rem;">

      <section class="products">

         <h1 class="heading">latest products</h1>
<div cal>
         <div class="box-container">

            <?php

            $select_products = mysqli_query($conn, "SELECT * FROM `products`");
            if (mysqli_num_rows($select_products) > 0) {
               while ($fetch_product = mysqli_fetch_assoc($select_products)) {
                  ?>

                  <form action="" method="post">
                     <div class="box">
                        <img src="uploaded_img/<?php echo $fetch_product['image']; ?>" alt="">
                        <h3>
                           <?php echo $fetch_product['name']; ?>
                        </h3>
                        <div class="price">$
                           <?php echo $fetch_product['price']; ?>/-
                        </div>
                        <input type="hidden" name="product_name" value="<?php echo $fetch_product['name']; ?>">
                        <input type="hidden" name="product_price" value="<?php echo $fetch_product['price']; ?>">
                        <input type="hidden" name="product_image" value="<?php echo $fetch_product['image']; ?>">
                        <input type="submit" class="btn" value="add to cart" name="add_to_cart">
                     </div>
                  </form>

                  <?php
               }
               ;
            }
            ;
            ?>

         </div>
         </div>
      </section>

   </div>
   <?php include 'footer.php'; ?>
</body>

</html>