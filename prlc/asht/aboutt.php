<?php
 include_once('gwm-admin/include/db.php'); 
$q1=mysqli_query($conn,"select * from  about_details");
$f1=mysqli_fetch_array($q1);
$s1=$f1['about_content'];
$about_heading=$f1['about_heading'];
?>
<!doctype html>
<html lang="en">


<head>
	<title>Pine Ridge Log Cabins</title>
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
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
<body style="background-color: green;color:#fff;">

	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">

        <!-- Header : starts -->
        	<!-- Header -->
<?php include('includes/header.php'); ?>

        <!-- Header : ends -->

			<!-- Slider with Jquery bxslider -->
			<section class="md-slide-wrapper md-slide-home pro">
				<!-- Slide Image-->
				<ul id="md-slide-fade" class="md-slide clearfix">
					<li>
						<img src="img/slide/slide-2n.jpg" alt="">
					</li>
					<li>
						<img src="img/slide/slide-2.jpg" alt="">
					</li>
<li>
						<img src="img/slide/slide-1.jpg" alt="">
					</li>
					<li>
						<img src="img/slide/slide-3.jpg" alt="">
						<!--<div class="content-slide dark">
							<div class="home-content">
								<h2 class="slide-title">Crystal<span class="title-inner">109 A</span>Sands</h2>
								<p class="slide-description">Open May 26-28 $425 Total+ on the Beach+Upgraded+Daily Bch Sv</p>
								
							</div>
						</div>-->
					</li>
                    
                    <li>
						<img src="img/slide/slide-4.jpg" alt="">
					</li>
                    
                    <!-- <li>
						<img src="img/slide/slide-5.jpg" alt="">
                       <div class="content-slide dark">
							<div class="home-content">
								<h2 class="slide-title">Crystal Beach</h2>
								<p class="slide-description">Caribbean Dunes is conveniently located across from the beach with deeded beach access.</p>
								
							</div>
						</div>
					</li>-->
				</ul>

			</section>
			<!-- Slider End -->
            
            
			<!-- Body -->
            <!-- banner-bottom -->
            <div class="banner-bottom">
                <!-- container -->
<div class="container" style="margin: 0px 0px 11px 78px;">
  <div class="row"><img src="img_pin.png" alt="" style="width: 48%;"></div><br></div>


                <div class="container">
                    <div class="row">
<div class="grid_2 wow fadeInDown">
                            &nbsp;
                        </div>
                        <div class="grid_2 wow fadeInDown">
                            <a class="fa fa-key"></a>
                            <h4 style="color: #000;">Rent direct with owner</h4>
                        </div>
                        <div class="grid_2 wow fadeInUp">
                            <a class="fa fa-money"></a>
                            <h4 style="color: #000;">No commission</h4>
                        </div>
                        <div class="grid_2 wow fadeInDown">
                            <a class="fa fa-calendar"></a>
                            <h4 style="color: #000;">Flexible rental dates</h4></div>
                        <div class="grid_2 wow fadeInUp">
                            <a class="fa fa-eye-slash"></a>
                            <h4 style="color: #000;">Space &amp; privacy</h4></div>
                    </div>
<div class="grid_2 wow fadeInDown">
                            &nbsp;
                        </div>
                </div>
                <!-- //container -->
            </div>
            <!-- //banner-bottom -->
            
     <style>
	@media screen and (max-width: 3000px) and (min-width: 760px) {
      .aky{ width: 150% }
	 .aky1{ width: 150%;margin-left: 51%; }
      }
@media screen and (max-width: 3000px) and (min-width: 760px) {
   .aky2{ width: 100% }
   }
 @media screen and (max-width: 3000px) and (min-width: 760px) {
.owl-nav {
    visibility: hidden;
}
 }
     
     </style>       
            <div class="about-owner">
            	<div class="container">
                	 <h3><?php echo $about_heading; ?></h3>
                    <!--<strong>This Is a Dummy Content Please Provide Us Content For This Section</strong>-->
<p><?php echo html_entity_decode($s1);  ?></p>
 
                </div>
            </div>
            
            
            <div class="ourProperty_newsection">
            	<div class="container">
            	<div class="owl-carousel">
            	<?php 
			$q1=mysqli_query($conn,"select * from  property_listing");
					while($f1=mysqli_fetch_assoc($q1))
					{

						$pro_id = $f1['property_id'];
						if($pro_id=='1')
						{
							$pk="aky";
						}
						else
						{
							$pk="aky1";
						}
						?>
                							
					 
                    <div class="item <?php echo $pk; ?>" >
                        <div class="row row-home">
                          <article class="media">
                            <?php  
						 $q2=mysqli_query($conn,"select * from  files where property_id='$pro_id' ORDER BY menu_order ASC limit 1");
						$f2=mysqli_fetch_array($q2);
						?>
						   <figure class="media-image wow fadeInRight"> <img src="gwm-admin/uploads/<?php echo $pro_id; ?>/<?php echo $f2['file_name']; ?>" alt="" class="media-object" style="height: 371px;"> </figure>
                            <section class="media-body">
                            <?php 
								$q3=mysqli_query($conn,"select * from  property_details where property_id=$pro_id");
								$f3=mysqli_fetch_array($q3);
					
							?>
							   <h3 class="media-header media-header-big"> <a href="property.php?property_id=<?php echo $pro_id; ?>"><?php echo $f3['property_heading']; ?></a> </h3><?php
							  $con=$f3['property_content'];
							  $shw=substr($con,0,520);
							  ?>
							                                <p class="media-content" style="text-align:justify;"><?php echo html_entity_decode($shw)."..."; ?>
                                                             <div class="infoIcon">
                                <ul>
                                  <li><span class="flaticon-bed32"></span> Sleeps - <?php echo $f3['property_no_of_sleeps']; ?></li>
                                  <li><span class="flaticon-bedroom23"></span> Bedrooms - <?php echo $f3['property_no_of_bedrooms']; ?></li>
                                  <li><span class="flaticon-hygiene11"></span> Bathrooms - <?php echo $f3['property_no_of_baths']; ?></li>
                                  <li><span class="flaticon-home211"></span> Property type - <?php echo $f3['property_type']; ?></li>
                                   <?php
$query3=mysqli_query($conn,"select * from  property_default_rates where property_id='$pro_id'");
$f3=mysqli_fetch_array($query3);
?>
								                                    <li> <a href="property.php?property_id=<?php echo $pro_id; ?>" class="read-more">see more</a></li>
                                  <li><i class=""></i><?php echo "$".$f3['pro_def_rate_rates']; ?><b>Avg/Night</b></li>
                                </ul>
                              </div>
                              </p>
                            </section>
                          </article>
						  
                        </div>
                    </div>
				<?php  }  ?>
                 	 
                     
				              
                </div>
				
				</div>
				
            </div>
           
            

            <!-- footer : starts -->
                <!-- Footer -->
<?php include"footer.php"; ?>