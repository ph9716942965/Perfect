<!doctype html>
<?php
 include_once('gwm-admin/include/db.php'); 
//$q1=mysqli_query($conn,"select * from  home_details");
//$f1=mysqli_fetch_array($q1);
?>
<html lang="en">
<head>
	<title>Pine Ridge Soap  Began June 30, 2016</title>
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
           
<style>
    /*Fun begins*/
.tab_container {
	width: 90%;
	margin: 0 auto;
	padding-top: 70px;
	position: relative;
}

input, section {
  clear: both;
  padding-top: 10px;
  display: none;
}

label {
  font-weight: 700;
  font-size: 18px;
  display: block;
  float: left;
  width: 50%;
  padding: 1.5em;
  color: #757575;
  cursor: pointer;
  text-decoration: none;
  text-align: center;
  background: #f0f0f0;
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4,
#tab5:checked ~ #content5 {
  display: block;
  padding: 20px;
  background: #fff;
  color: #999;
  border-bottom: 2px solid #f0f0f0;
}

.tab_container .tab-content p,
.tab_container .tab-content h3 {
  -webkit-animation: fadeInScale 0.7s ease-in-out;
  -moz-animation: fadeInScale 0.7s ease-in-out;
  animation: fadeInScale 0.7s ease-in-out;
}
.tab_container .tab-content h3  {
  text-align: center;
}

.tab_container [id^="tab"]:checked + label {
  background: #fff;
  box-shadow: inset 0 3px #0CE;
}

.tab_container [id^="tab"]:checked + label .fa {
  color: #0CE;
}

label .fa {
  font-size: 1.3em;
  margin: 0 0.4em 0 0;
}

/*Media query*/
@media only screen and (max-width: 930px) {
  label span {
    font-size: 14px;
  }
  label .fa {
    font-size: 14px;
  }
}

@media only screen and (max-width: 768px) {
  label span {
    display: none;
  }

  label .fa {
    font-size: 16px;
  }

  .tab_container {
    width: 98%;
  }
}

/*Content Animation*/
@keyframes fadeInScale {
  0% {
  	transform: scale(0.9);
  	opacity: 0;
  }
  
  100% {
  	transform: scale(1);
  	opacity: 1;
  }
}
</style>
 

 
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
                	<li><a href="index.php">Home</a></li>
                	<li>Pine Ridge Soap</li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body md-typography">
					<div class="row box-alter-40 clearfix">
 
 
		<div class="tab_container">
			<input id="tab1" type="radio" name="tabs" checked>
			<label for="tab1"><span>Top of the Rock</span></label>

			<input id="tab2" type="radio" name="tabs">
			<label for="tab2"><span>Dogwood Canyon</span></label>

			
			<section id="content1" class="tab-content">
                 <iframe src="https://www.pineridgelogcabins.com/x1.php" style="width:100%; height:800px"></iframe> 
                 
			</section>

			<section id="content2" class="tab-content">
				 
		      <iframe src="https://www.pineridgelogcabins.com/x2.php" style="width:100%; height:800px"></iframe> 

 
			</section>

	 
		</div>
					</div><!-- /.row -->
                    
				    <!-- /.row -->
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
	<script type="text/javascript" src="js/jquery.masonry.js"></script>
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