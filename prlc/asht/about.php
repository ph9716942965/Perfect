<!doctype html>
<?php
 include_once('log-admin/include/db.php'); 
$q1=mysqli_query($conn,"select * from  lhk_about_property");
$f1=mysqli_fetch_array($q1);
?>
<html lang="en">
<head>
	<title>About Us</title>
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
                	<li>About Us</li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body md-typography">
					<div class="row box-alter-40 clearfix">
						<article class="box">
							<header class="grid_12 box-heading">
								<h3 class="head headline">About the owner</h3>
							</header>
                            
							<div class="box-body clearfix">
								<div class="grid_3">
									<article class="box box-alter-80">
										 
											<div><img src="uploads/about/<?php echo $f1['about_img'];?>" style="width: 200px;height: 200px;" /></div>
										 
										<div class="box-body">
										 
											<p> </p>
											
											
                                            
										</div>
									</article><!-- /.h1-heading -->
                                    
									

								</div>
								<div class="grid_9">
									<article class="box box-alter-40">
										<!--<header class="box-heading">
											<h3 class="h3"> Condo Rentals West Maui</h3>
										</header>-->
                                        
										<div class="box-body">
											<?php echo html_entity_decode($f1['content']);?>
										</div>
                                        
                                        
									</article><!-- /.h3-heading -->
                                    
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