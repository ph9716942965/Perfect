<!doctype html>
<base href="https://www.pineridgelogcabins.com/">
<?php
include("log-admin/include/db.php");
$query2=mysqli_query($conn,"select * from lhk_property_details where property_id ='".$_REQUEST['pid']."'");
$f2=@mysqli_fetch_array($query2);
$pid =   $f2['property_id']; 
$prop_name =  $f2['property_heading'];
$query3=mysqli_query($conn,"select * from  lhk_property_default_rates where property_id ='".$_REQUEST['pid']."'");
$f3=mysqli_fetch_assoc($query3);
?>
<html lang="en">
<head>
	<?php 
	 $uri = $_SERVER['REQUEST_URI'];
	if($uri == '/property/1'){ ?>
	<title>Weekly Vacation Cabin Rentals by Owner Blue Eye Missouri - Table Rock Lake</title>
	<meta name="description"  content="Affordable weekly vacation cabin rentals by owner blue eye mo. Pine Ridge Luxury pet friendly 2 story log cabin with two bedrooms for family travelers in Missouri on rent. "/>
	<meta name="keywords" content="vacation cabin rentals blue eye Missouri, weekly vacation cabin rentals blue eye mo, blue eye vacation cabin rentals by owner, weekly cabin rentals blue eye mo" />
	<?php } ?>
	
	<?php if($uri == '/property/2'){ ?>
	<title>Two Bedroom Luxury Cabin Rentals for Family in Blue Eye Mo</title>
	<meta name="description"  content="2 story luxury cabin rentals blue eye mo for on rent family traveler. Best Pet friendly two bedroom weekly vacation cabin rentals Missouri with hot tub and Jacuzzi available on rent. Table Rock Lake"/>
	<meta name="keywords" content="2 story log cabin blue eye, luxury cabin rentals blue eye mo, two bedroom cabins in blue eye mo, family cabin rentals in blue eye mo" />
	<?php } ?>
	
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/font.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css" href="css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<link rel="stylesheet" type="text/css" href="css/responsive-menu.css">
	<link rel="stylesheet" type="text/css" href="css/show-hide.css">
	<link rel="stylesheet" type="text/css" href="css/fotorama.css">

	<style>
	.row_1{
		overflow: hidden;
	}
	.ratesAdditional ul li strong, .ratesAdditional ul li span {
    color: #fff;
}





/*Responsive Table*/


.responsive-table {
	width: 100%;
	margin-bottom: 1.5em;
}

@media (min-width: 44em) {
.responsive-table {
	font-size: .9em;
}
}

@media (min-width: 62em) {
.responsive-table {
	font-size: 1em;
}
}
.responsive-table thead {
	position: absolute;
	clip: rect(1px 1px 1px 1px);
	/* IE6, IE7 */
	clip: rect(1px, 1px, 1px, 1px);
	padding: 0;
	border: 0;
	height: 1px;
	width: 1px;
	overflow: hidden;
}

@media (min-width: 44em) {
.responsive-table thead {
	position: relative;
	clip: auto;
	height: auto;
	width: auto;
	overflow: auto;
}
}
.responsive-table thead th {
	background-color: #ff5203;
	border: 1px solid #ff5203;
	font-weight: normal;
	text-align: center;
	color: white;
	font-size: 16px;
}
.responsive-table thead th:first-of-type {
	text-align: left;
}
.responsive-table tbody, .responsive-table tr, .responsive-table th, .responsive-table td {
	display: block;
	padding: 0;
	text-align: left;
	white-space: normal;
}

@media (min-width: 44em) {
.responsive-table tr {
	display: table-row;
}
}
.responsive-table th, .responsive-table td {
	padding: .5em;
	vertical-align: middle;
}

@media (min-width: 30em) {
.responsive-table th,  .responsive-table td {
	padding: .75em .5em;
}
}

@media (min-width: 44em) {
.responsive-table th,  .responsive-table td {
	display: table-cell;
	padding: .5em;
}
}

@media (min-width: 62em) {
.responsive-table th,  .responsive-table td {
	padding: .75em .5em;
}
}

@media (min-width: 75em) {
.responsive-table th,  .responsive-table td {
	padding: .75em;
}
}
.responsive-table caption {
	margin-bottom: 1em;
	font-size: 1em;
	font-weight: bold;
	text-align: center;
}

@media (min-width: 44em) {
.responsive-table caption {
	font-size: 1.5em;
}
}
.responsive-table tfoot {
	font-size: .8em;
	font-style: italic;
}

@media (min-width: 62em) {
.responsive-table tfoot {
	font-size: .9em;
}
}

@media (min-width: 44em) {
.responsive-table tbody {
	display: table-row-group;
}
}
.responsive-table tbody tr {
	margin-bottom: 1em;
	border: 2px solid #21A171;
}

@media (min-width: 44em) {
.responsive-table tbody tr {
	display: table-row;
	border-width: 1px;
}
}
.responsive-table tbody tr:last-of-type {
	margin-bottom: 0;
}

@media (min-width: 44em) {
.responsive-table tbody tr:nth-of-type(even) {
	background-color: rgba(94, 93, 82, 0.1);
}
}
.responsive-table tbody th[scope="row"] {
	background-color: #ff5203;
	color: white;
}

@media (min-width: 44em) {
.responsive-table tbody th[scope="row"] {
	background-color: #fff;
	color: #000;
	text-align: left;
}
}
.responsive-table tbody td {
    text-align: right;
    border-bottom: 1px solid #21A171;
    background: #fff;
}

@media (min-width: 30em) {
.responsive-table tbody td {
	border-bottom: 1px solid #21A171;
}
}

@media (min-width: 44em) {
.responsive-table tbody td {
	text-align: center;
	background: #fff;
	font-weight: bold;
	font-size: 15px;
	border-left: 1px solid #21A171;
}
}
.responsive-table tbody td[data-type=currency] {
	text-align: center;
}
.responsive-table tbody td[data-title]:before {
	content: attr(data-title);
	float: left;
	font-size: .8em;
	color: #000;
	font-weight: bold;
}

@media (min-width: 30em) {
.responsive-table tbody td[data-title]:before {
	font-size: .9em;
}
}

@media (min-width: 44em) {
.responsive-table tbody td[data-title]:before {
	content: none;
}
}


.enq_form  input[type="text"], input[type="button"], input[type="submit"] {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    border: 1px solid #ccc;
    width: 100%;
    height: 32px;
    padding: 5px;
    margin: 2px;
}


.enq_form textarea{
	width: 100%;
	border: 1px solid #ccc;
}

.enq_form select{
width: 100%;
border: 1px solid #ccc;
height: 31px;
padding: 0px;
margin-top: 2px;
margin-bottom: 6px;
}


#butt {
line-height: 0px;
font-size: 14px;
width: 198px;
padding-top: 20px;
padding-bottom: 27px;
}
@media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {
  
  .box-bullet-list .clear {
    display: inline-block!important;
}
  
}

@media (min-width: 320px) and (max-width: 480px) {
  
  .grid_6 {
    width: 95%!important;
}
  
}

	</style>

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
	#map{
		width:100%;
		/*height:250px;*/
	}
	</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="js/fotorama.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	  
</head>
<body style=" background-color: green; color: #fff;">
    
	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">
        
        <!-- Header : starts -->
        	<?php include('includes/header.php'); ?>
        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="index.php">Home</a></li>
                	<li><?php echo $f2['property_heading']; ?></li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body md-room-detail clearfix"  style="margin-top: -80px;">
					<div class="grid_9 md-main">
                        <div class="new-heading"><?php echo $f2['property_head_title']; ?> </div>
						<div class="row">
							<!--  Slide Preview Room -->
							

<?php
$fetch = mysqli_query($conn,"SELECT * FROM lhk_files WHERE property_id ='".$_REQUEST['pid']."' ORDER BY menu_order ASC");
?>
<div class="sli">
<div class="fotorama" data-width="700" data-ratio="700/467" data-max-width="100%" data-nav="thumbs">
<?php  while($file = mysqli_fetch_assoc($fetch)){ ?>
  <img src="uploads/<?php echo $f2['property_id'];?>/<?php echo $file['file_name'];?>" alt="<?php echo $file['caption']; ?>" data-caption="<?php echo $file['caption']; ?>">
<?php }?>
  </div>
</div>

                            
							<!-- Md booking -->
							<section class="md-booking pricing_box">
								<span class="number number-big"><?php echo "$".$f3['pro_def_rate_rates']; ?><span class="one-night">Per Night</span></span>
							</section>
                            
                            <div class="propertyTypes">
                            	<ul class="pt_details">
                                	<strong>Property Type</strong>
                                	<li><?php echo $f2['property_type']; ?></li>
                                </ul>
                                 	 
                                
                            </div>
							
							<div class="preview-content">
                            	<h3>Property description</h3>
								<p><?php  echo html_entity_decode($f2['property_content']); ?></p>
								
							</div>
                            
<?php if($pid=='2')
{
?>
<div class="row box-alter-40 clearfix">
						<article class="box box-bullet-list">
							 
							<div class="box-body clearfix">
 <div class="grid_6">
									<ul class="list list-triangle list-triangle-color "><!--https://www.youtube.com/embed/1RQxm-Gkkb8-->
										<li><iframe width="100%" height="315" src="https://www.youtube.com/embed/fBZXvoD0uNM" frameborder="0" allowfullscreen=""></iframe></li>
										
									</ul>
								</div>
<div class="clear"></div>
								<div class="grid_6">
									<ul class="list list-triangle list-triangle-color">
										<li><iframe width="100%" height="315" src="https://www.youtube.com/embed/RytOflOfb1Y" frameborder="0" allowfullscreen=""></iframe></li>

										 
									</ul>
								</div>
</div>
						</article>
					</div>
<?php
}
else
{
?>
<div class="grid_6">
									<ul class="list list-triangle list-triangle-color">
										<li><iframe width="100%" height="315" src="https://www.youtube.com/embed/j2H4Q0g8JMw" frameborder="0" allowfullscreen=""></iframe></li>
										 
									</ul>
								</div>
<div class="grid_6">
									<ul class="list list-triangle list-triangle-color">
										<li><iframe width="100%" height="315" src="https://www.youtube.com/embed/TMrduG9Cn2g" frameborder="0" allowfullscreen=""></iframe> </li>

										 
									</ul>
								</div>
<?php
}
?>
                           
<div class="clear"></div>
								 
                            
                            <div class="row clearfix tabCalender">
                                <h3>availability calendar</h3>
                                <div style="background:#f5f5f5; padding:20px; width:100%;"></div>	
								<iframe src="calender/calender.php?property=<?php echo $pid; ?>" frameborder="0" width="100%" height="700px"  style="background-color: #ccffcc;"></iframe>
                            </div> 
                            
                            <div class="responsiveTab margin-top-big">
                            	<h3>Rates</h3>
                            	<table cellspacing="0" cellpadding="0" class="tableType1 fullWidth table table-striped" id="propertyRates" style="width:100%; margin-top:20px;">
                                  <tbody>
                                    <tr>
                                      <td class="even boxSpacingSet8"><strong>Dates</strong></td>
                                      <td class="even boxSpacingSet8"><strong>Nightly</strong></td>
                                      <td class="even-1 boxSpacingSet8"><strong>Weekend Night</strong></td>
                                      <td class="even boxSpacingSet8 textCenter"><strong>Weekly</strong></td>
                                      <td class="even-1 boxSpacingSet8 textCenter"><strong>Monthly *</strong></td>
                                      <!--<td class="even boxSpacingSet8 textCenter"><strong>Event</strong></td>-->
                                    </tr>
									
									  
                                   <?php
	  $fetch11 = mysqli_query($conn,"SELECT * FROM `lhk_property_new_rates` WHERE property_id=$pid");
	   $num11 = mysqli_num_rows($fetch11);
	  
		while($show11 = mysqli_fetch_assoc($fetch11))
		  {
			 //$pro_id = $show11['property_id'];
			 $pro_new_rate_sdate=$show11['pro_new_rate_sdate'];
			 $pro_new_rate_edate=$show11['pro_new_rate_edate'];
			 $pro_new_rate_weekend_night=$show11['pro_new_rate_weekend_nt'];
			 $event=$show11['pro_new_rate_desc'];
			 $pro_new_rate_min_stay=$show11['pro_new_rate_min_stay'];
			$pro_new_rate_weekly_night=$show11['pro_new_rate_weekly_nt'];
			$pro_new_rate_week_night=$show11['pro_new_rate_week_nt'];
			$pro_new_rate_monthly=$show11['pro_new_rate_monthly'];
			  
	?>
		<tr>
                                      <td class="even"> <span><?php  echo $event; ?></span> <?php  echo $pro_new_rate_sdate!='0000-00-00'?date("m-d-Y", strtotime($pro_new_rate_sdate)) ." - to - ".date("m-d-Y", strtotime($pro_new_rate_edate)):''; ?>  <br><?php echo $pro_new_rate_min_stay; ?>night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  <?php 
				if($pro_new_rate_week_night!=''){
					$si='$';
				}
				else{
					$si='-';
				}
				?><?php echo $si; ?><?php echo $pro_new_rate_week_night;?></td>
                                      <!--<td class=" even textCenter"><?php echo $pro_new_rate_weekend_night; ?></td>-->
                                      
									  <td class=" even-1 textCenter">
									  <?php 
				if($pro_new_rate_weekend_night!=''){
					$si='$';
				}
				else{
					$si='-';
				}
				?><?php echo $si; ?><?php echo $pro_new_rate_weekend_night; ?></td>
									  
									  
									  
									  
                                      <td class=" even textCenter"><?php 
				if($pro_new_rate_weekly_night!=''){
					$si='$';
				}
				else{
					$si='-';
				}
				?><?php echo $si; ?><?php echo $pro_new_rate_weekly_night ?></td>
									  
									
									  
                                      <td class="even-1 textCenter"><?php 
				if($pro_new_rate_monthly!=''){
					$si='$';
				}
				else{
					$si='-';
				}
				?><?php echo $si; ?>  <?php echo $pro_new_rate_monthly ?></td>
                                    </tr>						   
								   
								   
								   
		  <?php } ?>
								   
                                  </tbody>
                                </table>
                                	<?php
		$property_id = @$property_id;
		$fetch1 = mysqli_query($conn,"SELECT * FROM lhk_property_default_rates where property_id ='".$pid."'");
		$num1 = mysqli_num_rows($fetch1);
		while($show1 = mysqli_fetch_assoc($fetch1))
		{
		$pro_cleaning_fee=$show1['pro_cleaning_fee'];
		$pro_refundable_amt=$show1['pro_refundable_amt'];
		$pro_def_rate_rates=$show1['pro_def_rate_rates'];
		$pro_tax_fee=$show1['add_fees'];
		$can_polices_rules=$show1['can_policy'];
		$can_polices_array = explode('|',$can_polices_rules);
		$notes=$show1['notes'];	
		$month_dis=$show1['month_dis'];
		$week_dis=$show1['week_dis'];
		$extra_per_charge=$show1['extra_per_charge'];

		}
		?>	
        
        <?php if($notes){ ?><strong>Notes: </strong> <?php echo html_entity_decode($notes); ?><?php } ?>
        <div class="ratesAdditional">
            <h2>Additional information about rental rates</h2>
            <label>Fees: </label>
            <ul>
                
                <li>
                    <strong>Cleaning Fee </strong>
                    <span><?php echo "$".$pro_cleaning_fee; ?> + tax</span>
                </li>
                <li>
                    <strong>Tax Rate</strong>
                    <span><?php echo $pro_tax_fee; ?>% </span>
                </li>
                	
            </ul>
        </div>
        
        <div class="ownerInfo1 margin-top-big">
            <h2>Owner's Cancellation Policy:</h2>
           <?php foreach($can_polices_array as $can_polices){ ?> 
						<strong><?php echo html_entity_decode(ucfirst(strip_tags($can_polices))); ?></strong>
						<?php }  ?> 
        </div>
   
                       
                                
                                
                            </div>
                            
                            
                                      
                
                            

                             <div class="ratesTable"> 
                            	<h3>Location Map</h3>

								 <div class="map-container" id="map"></div>
                                <?php if($property_id=='1')
{
?><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.8663847272924!2d-93.33242988508596!3d36.533217780004435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87cee224dc71db79%3A0x2ff7a763a7d03c69!2s21+Dapple+Ln%2C+Blue+Eye%2C+MO+65611%2C+USA!5e0!3m2!1sen!2sin!4v1478897805385" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	<?php
}
else
{
?><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.8732369292775!2d-93.33236978508597!3d36.53305248000456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87cee2251f316a27%3A0x1416ad0c4ba501ad!2s20+Dapple+Ln%2C+Blue+Eye%2C+MO+65611%2C+USA!5e0!3m2!1sen!2sin!4v1478897661816" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	<?php
}
?>						</div> 
							
							 <section >
         <div id="map"></div>
    </section>
                            
                            <div class="reviews">
                            <h3>Reviews</h3>
                            <?php
				$fetch11 = mysqli_query($conn,"SELECT * FROM lhk_reviews_detail where property_id ='".$pid."'  ORDER BY id DESC");
				$i = 1 ;
				while($show11 = mysqli_fetch_assoc($fetch11))
				{
				$c_img=$show11['img'];
				$c_name=$show11['c_name'];
				$c_head=$show11['heading'];
				$c_review=$show11['c_review'];	
				if($c_img!="")
				{
				$cust_image = "uploads/review/".$property_id."/".$c_img;
				} 
				else
				{
				$cust_image = "framework/img/avatar.png";
				}
				?> 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;"><?php echo html_entity_decode($c_review); ?></p>
                                            <div>
                                            	<a class="text-link link-direct" href="#"><?php echo ucfirst($c_name); ?></a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                <?php } ?>
        
                                
                                
                                 
                                
                                
                                
                            </div>
						</div>
					</div><!-- /.md-main -->
                    
                    
					<aside class="grid_3 md-sidebar"  style="background-color: green;">
                    
                    <!-- /.box-booking -->
                       
                    
                        
                    <!---- Show Hide ------------>
                    <div  style="margin-top: 42px;" >
                    <h2 class="h3 header-sidebar">Amenities</h2>
						 
                    <nav class="nav" role="navigation">
                      <ul class="nav__list">
 <?php
								$i=0;
								$fetch = mysqli_query($conn,"SELECT * FROM lhk_amenity where property_id ='".$pid."' ORDER BY amenity_id ASC ");
								while($count = mysqli_fetch_assoc($fetch)){
								$amenity_id = $count['amenity_id'];
								$amenity_name = $count['amenity_name'];
								$i++;

								?>
                        <li>
                         <input id="group-<?php echo $amenity_id;?>" type="checkbox" hidden />
                          <label for="group-<?php echo $amenity_id;?>" style=color:#fff;><span class="fa fa-angle-right"></span> <?php echo ucfirst($amenity_name); ?></label>
						    
								<ul class="group-list">
								 <?php
		  $fetch1 = mysqli_query($conn,"SELECT * FROM lhk_amenity_details where amenity_id = '".$amenity_id."' and amen_status = 1 ORDER BY amenity_id ASC ");
		  $num = mysqli_num_rows($fetch1);
		  while($count1 = mysqli_fetch_assoc($fetch1)){
		  $amenity_id = $count1['amenity_id'];
		  $amen_value = $count1['amen_value'];
            ?>
								
                          <li> <a href="#">. &nbsp;<?php echo ucfirst($amen_value); ?> </a></li>
                          
                        
						  <?php } ?> 
                          
                          </ul>
                        </li>
						
                        
						<?php }?>
                        
                        
                      </ul>
					  
                    </nav>
                    </div>
					
						
                        
					</aside><!-- /.md-sidebar -->
				</div><!-- /.md-testimonail -->
			</div><!-- /.md-wrapper  -->

			
            <!-- footer : starts -->
              <?php include('footer.php'); ?>