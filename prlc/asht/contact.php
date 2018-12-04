<!doctype html>
<?php include_once('log-admin/include/db.php'); ?>
		<?php 
								$q3=mysqli_query($conn,"select * from  lhk_contact_details");
								$f3=mysqli_fetch_array($q3);
					
							?>
<html lang="en">
<head>
	<title>Contact Us</title>
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/font.css">
	<link rel="stylesheet" type="text/css" href="css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="css/libs/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<link rel="stylesheet" type="text/css" href="css/responsive-menu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<!-- Fix ie9  -->
	<!--[if IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie9.css">
	<![endif]-->
	<style>
		#map_canvas {
	        /*width: 500px;*/
	        height: 820px;
	      }

	</style>
    
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
<body style="background-color: #ccffcc;">
    
    
	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">
        <!-- Header : starts -->
        	<?php include('includes/header.php'); 
        	   
        	?>
        <!-- Header : ends -->


			<section class="md-contact">
				<figure class="bg-contact">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.822950034187!2d-93.33052443284986!3d36.53426556758992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87cee224ec123815%3A0x8089de56c67b4264!2s5704+MO-86%2C+Blue+Eye%2C+MO+65611%2C+USA!5e0!3m2!1sen!2sin!4v1478897319351" width="70%" height="750" frameborder="0" style="border:0" allowfullscreen></iframe>
					<div class="bg-pattern"></div>
				</figure>
				<div class="contact-wrap">
					<div class="layout-left">
						<header class="box-heading heading-large">
							C
							<div class="decription-override">
								<h2 class="h1">Contact</h2>
								<p>get in touch</p>
							</div>
						</header>
						<p id="contact-content" class="description"></p>
						<div class="row form-contact">
							<form class="label-placeholder" action="mail.php" method="post">
								<div class="row clearfix">
									<div class="form-group">
										<input id="contact-name" type="text" name="fname" class="input-control" placeholder="Name">
									</div>
									<div class="form-group">
										<input id="contact-email" type="text" name="email" class="input-control" placeholder="Email">
									</div>
								</div>
								<div class="form-group">
									<textarea  id="contact-textarea"  class="input-control" placeholder="Your message" name="message"></textarea>
								</div>
								<div class="form-group">
									<button type="submit"  name="submit" value="Send" class="btn btn-alter btn-border btn-border-brown" id="submit-contact">Submit</button>
								</div>
							</form>
						</div><!-- /.form-contact -->
						<div class="address-wrap clearfix">
							<div class="address-info"  style="margin-top: 168px;">
								<ul>
									<li><i class="icon icon-map-white"></i><?php echo html_entity_decode($f3['contact_content']); ?></li>
									<li><i class="icon icon-phone"></i> <?php echo $f3['contact_phone']; ?></li>
									<li><i class="icon icon-mail"></i><a href="mailto:<?php echo $f3['contact_email'];?>"><?php echo $f3['contact_email'];?></a></li>
								</ul>
							</div>
							<!--<div class="address-map">
								<div>
									<i class="icon icon-map-brown"></i>
									<a class="popup-gmaps" href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.8796828662616!2d-93.33274468471762!3d36.5328969800045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87cee23a7363a1bb%3A0x3b45ce1b0020526e!2sPine+Ridge+Log+Cabins!5e0!3m2!1sen!2sin!4v1478203472519">See Map</a>
                                    
                                   
         <iframe src="" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> 
                                    
                                    
								</div>
							</div>-->
						</div><!-- /.address-wrap -->
					</div>
				</div>
			</section><!-- /.md-wrapper  -->

			
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
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.map.js"></script>


<script type="text/javascript" src="js/script.js"></script>

<script type="text/javascript">
	$(function() {
		"use strict";
		$("#arrival-date, #departure-date").datepicker({
			// showOn: "button",
			// buttonImage: "images/calendar.gif",
			// buttonImageOnly: true
		});

		// Script for Popup Map Address
 	// 	$('.popup-gmaps').magnificPopup({
		// 	// disableOn: 700,
		// 	type: 'iframe',
		// 	mainClass: 'md-map',
		// 	removalDelay: 160,
		// 	preloader: false,
		// 	fixedContentPos: false
		// });

	$('.popup-gmaps').magnificPopupMap();

		if($("#contact-form").length > 0){
	      // Validate the contact form
	      $('#contact-form').validate({
	        // Add requirements to each of the fields
	        rules: {
	          name: {
	            required: true,
	            minlength: 2
	          },
	          email: {
	            required: true,
	            email: true
	          },
	          message: {
	            required: true,
	            minlength: 10
	          }
	        },

	        // Specify what error messages to display
	        // when the user does something horrid
	        messages: {
	          name: {
	            required: "Please enter your name.",
	            minlength: $.format("At least {0} characters required.")
	          },
	          email: {
	            required: "Please enter your email.",
	            email: "Please enter a valid email."
	          },
	          message: {
	            required: "Please enter a message.",
	            minlength: $.format("At least {0} characters required.")
	          }
	        },

	        // Use Ajax to send everything to processForm.php
	        submitHandler: function(form) {
	          $("#submit-contact").php("Sending...");
	          $(form).ajaxSubmit({
	            success: function(responseText, statusText, xhr, $form) {
	              $("#contact-content").slideUp(600, function() {
					$("#contact-content").php(responseText).slideDown(600);
				  });
				  $("#submit-contact").php("Submit");
	            }
	          });
	          return false;
	        }
	      });
	    }
	});

 	
 	</script>



 




</body>
</php>