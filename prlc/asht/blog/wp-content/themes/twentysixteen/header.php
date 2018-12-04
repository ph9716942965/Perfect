<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<!-- /////////////////// LINK STYLE  /////////////////// -->
	<link rel="stylesheet" type="text/css" href="https://www.pineridgelogcabins.com/css/font.css">
	<link rel="stylesheet" type="text/css" href="https://www.pineridgelogcabins.com/css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="https://www.pineridgelogcabins.com/css/style.css">
	<link rel="stylesheet" type="text/css" href="https://www.pineridgelogcabins.com/css/responsive.css">
	<link rel="stylesheet" type="text/css" href="https://www.pineridgelogcabins.com/css/responsive-menu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.pineridgelogcabins.com/css/animate.css">
<script src="https://www.pineridgelogcabins.com/js/wow.js"></script>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?> style="background-color: green; color: #fff;">


	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">
        <!-- Header : starts -->
        	<!-- Header -->
<header class="md-header">
  <div class="container-fluid clearfix">
    <div class="grid_12"> 
      
      <!-- Logo -->
      <h1 class="md-logo"> <a href="https://www.pineridgelogcabins.com/"> <img src="https://www.pineridgelogcabins.com/images/logo.png" alt="logo"> </a> </h1>
      
      <!-- Menu -->
      <nav id="main-nav" class="nav-collapse">
        <ul id="main-menu" class="md-menu">
          <li  ><a href="https://www.pineridgelogcabins.com/" class="active">Home</a></li>
          <li class="have-submenu"><a href="" >Properties</a>
            <div class="sub-menu">
              <ul class="sub-menu-inner">				
				<li ><a href="https://www.pineridgelogcabins.com/property/2" >The Deer Stand</a></li>
				<li ><a href="https://www.pineridgelogcabins.com/property/1" >The Bear Cliff Cabin</a></li>           	
              </ul>
            </div>
          </li>
          <li ><a href="https://www.pineridgelogcabins.com/soap.php" >Pine Ridge Soap</a></li>
          <li class='active'><a href="https://www.pineridgelogcabins.com/area-information.php" >Activities</a></li>
          <li ><a href="https://www.pineridgelogcabins.com/reserve.php" >Reserve/Contract</a></li> 
<li ><a href="https://www.pineridgelogcabins.com/directions.php">Directions</a></li>
<li ><a href="https://www.pineridgelogcabins.com/things.php">Things To Do</a></li>
<li ><a href="https://www.pineridgelogcabins.com/blog/">Blog</a></li>
          <li ><a href="https://www.pineridgelogcabins.com/contact.php" >contact us</a></li>
        </ul>
      </nav>
       
      <!-- Icon Responsvie Menu --> 
      <a id="sys_btn_toogle_menu" class="btn-toogle-res-menu" href="#alternate-menu"></a> 
      
      <!-- Language Bar --> 
      
    </div>
  </div>
</header>
<!-- Header End --> 








<!-- Menu Responsive -->
  <nav id="mp-menu" class="mp-menu alternate-menu mp-overlap right-side">
    <div class="mp-level">
      <h2>Menu</h2>
      <ul>
       <li  ><a href="https://www.pineridgelogcabins.com/">Home</a></li>
        <li class="has-sub"> <a href="">Properties</a>
          <div class="mp-level">
            <h2>Properties</h2>
            <a class="mp-back" href="#">Back</a>
			<ul>				
				<li ><a href="https://www.pineridgelogcabins.com/property.php?property_id=2">The Deer Stand</a></li>
				<li ><a href="https://www.pineridgelogcabins.com/property.php?property_id=1">The Bear Cliff Cabin</a></li>           	
              </ul>
            <!--<ul>
			</li>
              
            </ul>-->
          </div>
        </li>
       <li ><a href="https://www.pineridgelogcabins.com/soap.php">Pine Ridge Soap</a></li>
          <li class='active'><a href="https://www.pineridgelogcabins.com/area-information.php">Activities</a></li>
          <li ><a href="https://www.pineridgelogcabins.com/reserve.php">Reserve/Contract</a></li> 
             <li ><a href="https://www.pineridgelogcabins.com/directions.php">Directions</a></li> 
             <li ><a href="https://www.pineridgelogcabins.com/directions.php">Things To DO</a></li> 
          <li ><a href="https://www.pineridgelogcabins.com/contact.php">contact us</a></li>
      </ul>
    </div>
  </nav>
<!-- Menu Responsive End --> 
