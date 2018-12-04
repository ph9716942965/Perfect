<!doctype html>
<?php
 include_once('gwm-admin/include/db.php'); 
//$q1=mysqli_query($conn,"select * from  home_details");
//$f1=mysqli_fetch_array($q1);
?>
<html lang="en">
<head>
	<title>Luxury Vacation Cabins Rentals in Blue Eye Mo with Hot Tubs, Jacuzzi Missouri</title>
	<meta name="description"  content="Luxury vacation cabins rentals available in blue eye mo with hot tubs and Jacuzzi for rent. 2 story weekly vacation cabin rentals with two bedrooms in Missouri blue eye mo for family travelers. Table Rock Lake"/>
	<meta name="keywords" content="cabins in blue eye mo with hot tubs, cabins in blue eye mo with Jacuzzi, luxury cabin rentals missouri" />
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/font.css">
	<link rel="stylesheet" type="text/css" href="css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<link rel="stylesheet" type="text/css" href="css/responsive-menu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<!-- Fix ie9  -->
	<!--[if IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie9.css">
	<![endif]-->
    
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

</head>
<body style="background-color: green; color: #fff;">
    
	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">
        <!-- Header : starts -->
        	<?php include('includes/header.php'); ?>
        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="index.html">Home</a></li>
                	<li>Directions</li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body md-typography" style="padding: 45px 0 99px;">
					<div class="row box-alter-40 clearfix">
						<article class="box">
							<header class="grid_12 box-heading">
								<h3 class="head headline">Directions</h3>
							</header>
                            
							<div class="box-body clearfix">
								<div class="grid_6">
									<article class="box box-alter-80">
										 
                                        <div class="aboutImg">
										<div class="box-body">
										 <img src="img/news-deal/map.gif" style="width: 100%; height: 410px;" />
</div></div></article></div><div class="grid_6">
									<article class="box box-alter-80">
										 
                                        <div class="aboutImg">
										<div class="box-body">
											<p  style="height: 410px;"> <strong>From Branson</strong><br>
Highway 65 South Towards Harrison Arkansas 8.7 miles. Turn right, on Highway 86, approx. 4 miles, cross Long Creek Bridge.  Pine Ridge is approx 1 mile on your left.<br>
<br>
<strong>From Harrison, Arkansas</strong><br>
Highway 65 North to Missouri 86 Highway.  Turn left, on Highway 86, approx. 4 miles, cross Long Creek Bridge.  Pine Ridge is approx 1 mile on your left.
<br><br>
<strong>From Kimberling City</strong><br>
Highway 13 towards Lampe 10.9 miles to 86 East left towards Table Rock Lake for 6 miles.  Pine Ridge is on your right before you get to the Long Creek Bridge</p>
											
											
                                            
										</div>
									</article></div><!-- /.h1-heading -->
                                    
									 
								<div class="grid_6">
									<article class="box box-alter-80">
										 
                                        <div class="aboutImg">
										<div class="box-body">
										 <img src="img/news-deal/Directtion_Page_1.jpg" style="width: 100%;" />
</div></div></article></div><div class="grid_6">
									<article class="box box-alter-80">
										 
                                        <div class="aboutImg">
										<div class="box-body">
										 <img src="img/news-deal/Directtion_Page_2.jpg" style="width: 100%;" />
</div></div></article></div>

								</div>
								
							</div>
						</article>
					</div><!-- /.row -->
                    
				  
				</div>
			</div><!-- /.md-wrapper  .md-typography -->

			
            <!-- footer : starts -->
                <?php include('includes/footer.php'); ?>
            <!-- footer : ends -->

		</div>
	</div>


<script type="text/javascript" src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.js"></script>
<script type="text/javascript" src="js/classie.js"></script>
<script type="text/javascript" src="js/mlpushmenu.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
	$(function() {
		"use strict";
		$("#arrival-date, #departure-date").datepicker({
			// showOn: "button",
			// buttonImage: "images/calendar.gif",
			// buttonImageOnly: true
		});
	});
</script>

<p id="back-top"><a href="#top"><i class="fa fa-arrow-up"></i></a></p>
<!--- back to top js -------------------->
<script type="text/javascript">
$(document).ready(function(){

	// hide #back-top first
	$("#back-top").hide();
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});
</script>
<!--- back to top js -------------------->


<script type="text/javascript">
    $(function(){
    	// Check the initial Poistion of the Sticky Header
    	var stickyHeaderTop = $('#stickyheader').offset().top;
    		$(window).scroll(function(){
    		if( $(window).scrollTop() > stickyHeaderTop ) {
    		$('#stickyheader').css({position: 'fixed', top: '0px'});
    		$('#stickyalias').css('display', 'block');
			$('header').addClass('scrool-nav');
			
    	} else {
    		$('#stickyheader').css({position: 'static', top: '0px'});
			$('#stickyheader').css('background', '#21A171');
    		$('#stickyalias').css('display', 'none');
			$('header').removeClass('scrool-nav');
    	}
    });
    });
</script>


</body>
</html>