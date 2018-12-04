<!doctype html>
<html lang="en">
<head>
	<title>Pine Ridge Log Cabins</title>
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="robots" content="index, nofollow">
	<!--  Viewport setting -->
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />

	<!--  Font -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/font.css'); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/flaticon.css'); ?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<!-- Jquery UI CSS   -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/libs/jquery-ui-1.10.3.custom.css'); ?>">

	<!-- Library CSS  -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/jquery.bxslider.css'); ?>">


	<!-- Main CSS  -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style.css'); ?>">

	<!-- Carousel CSS  -->
    <link href="<?php echo base_url('css/owl.carousel.cs'); ?>s" rel="stylesheet" />


	<!-- Responsive CSS  -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/responsive.css'); ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/responsive-menu.css'); ?>">
    
        <link rel="stylesheet" href="<?php echo base_url('css/animate.css'); ?>">
        <script src="<?php echo base_url('js/wow.js'); ?>"></script>
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
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/ie9.css'); ?>">
	<![endif]-->

</head>