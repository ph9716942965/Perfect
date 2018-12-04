<?php
 include_once('admin/include/db.php'); 
$q1=mysqli_query($conn,"select * from  about_details");
$f1=mysqli_fetch_array($q1);
$s1=$f1['about_content'];
?>

<!doctype html>
<html lang="en">
<head>
    
    <?php 
    echo $_SERVER['REQUEST_URI'];
    ?>
	<title>Pine Ridge Log Cabins</title>
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="robots" content="index, nofollow">
	<!--  Viewport setting -->
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />

	<!--  Font -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/flaticon.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<!-- Jquery UI CSS   -->
	<link rel="stylesheet" type="text/css" href="css/libs/jquery-ui-1.10.3.custom.css">

	<!-- Library CSS  -->
	<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">


	<!-- Main CSS  -->
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<!-- Carousel CSS  -->
    <link href="css/owl.carousel.css" rel="stylesheet" />


	<!-- Responsive CSS  -->
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<link rel="stylesheet" type="text/css" href="css/responsive-menu.css">
    
        <link rel="stylesheet" href="css/animate.css">
        <script src="js/wow.js"></script>
          <script>
            wow = new WOW(
              {
                animateClass: 'animated',
                offset:       100,
                callback:     function(box) {
                  console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
                }
              }
            );
            wow.init();
            document.getElementById('moar').onclick = function() {
              var section = document.createElement('section');
              section.className = 'section--purple wow fadeInDown';
              this.parentNode.insertBefore(section, this);
            };
          </script>


	<!-- Fix ie9  -->
	<!--[if IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie9.css">
	<![endif]-->

</head>