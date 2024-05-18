<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html>

<head>
 

  <title>Electronic Waste System || Home Page</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,600,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <?php include_once('includes/header.php');?>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">

      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-md-3 offset-md-2">
                <div class="slider_detail">
                  <h1>
                    INNOVATIVE
                    <span>
                      SOLUTIONS
                    </span>
                  </h1>
                  <p>
                    Reduce, Reuse, Recycle - Keep e-waste out of sight!" "Don't trash it, recycle your e-waste and make a difference
                  </p>
                  <div>
                    <a href="users/login.php">
                      List Your Electronic Waste
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-7">
                <div class="slider_img-box">
                  <img src="images/slider-img.png" alt="">
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row">
              <div class="col-md-3 offset-md-2">
                <div class="slider_detail">
                  <h1>
                    INNOVATIVE
                    <span>
                      SOLUTIONS
                    </span>
                  </h1>
                  <p>
                    Be a recycler, be a saver. Today, recycle for a better tomorrow. Reduce wasting natural resources. Reuse, recycle, and reduce the waste for a better future.
                  </p>
                  <div>
                    <a href="users/login.php">
                      List Your Electronic Waste
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-7">
                <div class="slider_img-box">
                  <img src="images/slider-img.png" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn-container">
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>

    </section>

    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <h2>
        About Us
      </h2>
      <?php

$ret=mysqli_query($con,"select * from tblpages where PageType='aboutus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
      <p>
        <?php  echo $row['PageDescription'];?>
      </p><?php } ?>
    </div>

    
  </section>

  <!-- end about section -->




  <!-- team section  -->
  <section class="team_section layout_padding">
    <div class="container">
      <h2>
        Contact Us
      </h2>
      <?php

$ret=mysqli_query($con,"select * from tblpages where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
      <p>
       <?php  echo $row['PageDescription'];?>
      </p><?php } ?>
    </div>

  </section>
  <!-- end info section -->
  <hr class="footer_hr">
  <!-- footer section -->
  <?php include_once('includes/footer.php');?>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>



  <script>
    function openNav() {
      document.getElementById("myNav").classList.toggle("menu_width")
      document.querySelector(".custom_menu-btn").classList.toggle("menu_btn-style")
    }
  </script>


</body>

</html>