	<!DOCTYPE html>
	<html lang="en">

	<!-- Mirrored from t.commonsupport.com/solustrid/plants.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 31 May 2019 12:08:29 GMT -->
	<head>
	<meta charset="utf-8">
	<title>Chaplinrowan | Services Detail</title>
	<!-- Stylesheets -->
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">

	<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
	<link rel="icon" href="images/favicon.png" type="image/x-icon">

	<!-- Responsive -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
	</head>

	<body>

	<div class="page-wrapper">
	<!-- Preloader -->
	<!-- <div class="preloader"></div> -->

	<!-- Home Style Two -->
	<?php
	//check if url parameter has been passed
	if (isset($_GET['id']) && !empty($_GET['id'])) {
	include_once('./inc/header.php');
	include_once('./server/connect.php');
	//assign the decrypted url parameter to a variable
	$serviceID = $_GET['id'];

	//query the database with the url parameter
	$viewservice = $pdo->prepare('SELECT * FROM services WHERE service_id=:id');
	$viewservice->execute(array(':id'=>$serviceID));
	$count=$viewservice->rowCount();


if ($count>0) {
	$row = $viewservice->fetch(PDO::FETCH_ASSOC);
	
	}else{header("location:services.php");}



	}else{
	header('Location:services.php');
	}
	?>

	<!-- End Main Header -->

	<!--Page Title-->
	<section class="page-banner" style="background-image:url(images/background/3.jpg);">
	<div class="auto-container">
	<div class="inner-container clearfix">
	<h1><?=$row['header']?></h1>
	<ul class="bread-crumb clearfix">
	<li><a href="index-2.html">Home</a></li>
	<li><a href="services.php">What We Do</a></li>
	<li><?=$row['header']?></li>
	</ul>
	</div>
	</div>
	</section>
	<!--End Page Title-->

	<!--Sidebar Page Container-->
	<div class="sidebar-page-container">
	<div class="auto-container">
	<div class="row clearfix">

	<!--Sidebar Side-->
	<div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
	<aside class="sidebar padding-right">



	<!-- Services Widget -->
	<div class="sidebar-widget services-widget">
	<div class="widget-content" style="background-image:url(images/resource/support.jpg);">
	<div class="icon flaticon-settings-4"></div>
	<h3>Optimising Perfomance with Special Services</h3>
	<div class="text">Discover how we're improving <br> quality of Industries</div>
	<a href="contact.php" class="theme-btn btn-style-two">get in touch</a>
	</div>
	</div>

	<!-- Support Widget -->
	<div class="sidebar-widget support-widget">
	<div class="widget-content">
	<span class="icon flaticon-telephone-1"></span>
	<div class="text">Got any Questions? <br> Call us Today!</div>
	<div class="number">+234 8034308873</div>
	<div class="email"><a href="#">info@chaplinrowan.com</a></div>
	</div>
	</div>
	</aside>
	</div>
	<!--Content Side / Services Detail-->
	<div class="content-side col-lg-8 col-md-12 col-sm-12">
	<div class="services-detail">
	<div class="inner-box">
	<div class="image">
	<img src=<?=$row['img']?>  alt=<?=$row['header']?>  />
	</div>
	<div class="lower-content">
	<!-- Title Box -->
	<div class="title-box">
	<div class="title">We are Chaplin Rowan</div>
	<h2><?=$row['header']?></h2>
	</div>
	<div class="text">
	<p><?=$row['description']?></p>
	<h3>Why Choose us</h3>
	<p>Auis nostrud exercitation ullamc laboris sed nisit aliquip ex bea sed consequat ipsum duis sit amet consecter adipisicing elit sed ipsum eiusmod tempor incididunt ut labore.</p>
	<!-- Services Featured Outer -->
	<div class="services-featured-outer">
	<div class="row clearfix">
	<!-- Feature Block -->
	<div class="feature-block col-lg-6 col-md-6 col-sm-12">
	<div class="inner-box">
	<div class="icon-box">
	<span class="icon flaticon-home-2"></span>
	</div>
	<h4>Well Maintained</h4>
	<div class="featured-text">Incididunt laboret dolore magna exercitation laboris nisis dolor in derit in voluptate velit.</div>
	</div>
	</div>
	<!-- Feature Block -->
	<div class="feature-block col-lg-6 col-md-6 col-sm-12">
	<div class="inner-box">
	<div class="icon-box">
	<span class="icon flaticon-fan"></span>
	</div>
	<h4>Modern Equipments</h4>
	<div class="featured-text">Incididunt laboret dolore magna exercitation laboris nisis dolor in derit in voluptate velit.</div>
	</div>
	</div>
	<!-- Feature Block -->
	<div class="feature-block col-lg-6 col-md-6 col-sm-12">
	<div class="inner-box">
	<div class="icon-box">
	<span class="icon flaticon-worker"></span>
	</div>
	<h4>All Expert Engineers</h4>
	<div class="featured-text">Incididunt laboret dolore magna exercitation laboris nisis dolor in derit in voluptate velit.</div>
	</div>
	</div>
	<!-- Feature Block -->
	<div class="feature-block col-lg-6 col-md-6 col-sm-12">
	<div class="inner-box">
	<div class="icon-box">
	<span class="icon flaticon-nuclear-plant"></span>
	</div>
	<h4>Power Efficient Factory</h4>
	<div class="featured-text">Incididunt laboret dolore magna exercitation laboris nisis dolor in derit in voluptate velit.</div>
	</div>
	</div>

	</div>
	</div>
	<!-- Default Two Column -->
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>  
	<?php include_once('./inc/footer.php')?>
	<!--End pagewrapper-->
	<!--Scroll to top-->
	<div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>
	<!--Scroll to top-->
	<script src="js/jquery.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery.fancybox.js"></script>
	<script src="js/validate.js"></script>
	<script src="js/owl.js"></script>
	<script src="js/wow.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/script.js"></script>
	</body>

	<!-- Mirrored from t.commonsupport.com/solustrid/plants.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 31 May 2019 12:08:37 GMT -->
	</html>