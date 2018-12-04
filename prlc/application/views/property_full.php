
<!doctype html>
<html lang="en">
<head>
		
		
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/font.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/style.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/responsive.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/responsive-menu.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/show-hide.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/fotorama.css">

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
    
        <link rel="stylesheet" href="<?php echo base_url('assets/');?>css/animate.css">
        <script src="<?php echo base_url('assets/');?>js/wow.js"></script>
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
  <script type="text/javascript" src="<?php echo base_url('assets/');?>js/fotorama.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	  
</head>
<body style=" background-color: green; color: #fff;">
    
	<div class="md-hotel">
		<div id="mp-pusher" class="mp-pusher">
        
        <!-- Header : starts -->
        	<!-- Header --> 
<header class="md-header">
  <div class="container clearfix">
    <div class="grid_12"> 
      
      <!-- Logo -->
      <h1 class="md-logo"> <a href="index.php"> <img src="<?php echo base_url('assets/');?>images/logo.png" alt="logo"> </a> </h1>
      
      <!-- Menu -->
      <?php $this->load->view('common/menue'); ?>
       
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
       <li  ><a href="index.php">Home</a></li>
        <li class="has-sub"> <a href="#">Properties</a>
          <div class="mp-level">
            <h2>Properties</h2>
            <a class="mp-back" href="#">Back</a>
			<ul>				
				<li ><a href="property/2">The Deer Stand</a></li>
				<li ><a href="property/1">The Bear Cliff Cabin</a></li>           	
              </ul>
            <!--<ul>
			</li>
              
            </ul>-->
          </div>
        </li>
       <li ><a href="soap.php">Pine Ridge Soap</a></li>
          <li ><a href="area-information.php">Activities</a></li>
          <li ><a href="reserve.php">Reserve/Contract</a></li> 
             <li ><a href="directions.php">Directions</a></li> 
             <li ><a href="things-to-do.php">Things To Do</a></li> 
             <li ><a href="https://www.pineridgelogcabins.com/blog/">Blog</a></li> 
          <li ><a href="contact.php">contact us</a></li>
      </ul>
    </div>
  </nav>
<!-- Menu Responsive End --> 


        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="index.php">Home</a></li>
                	<li>The Deer Stand</li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body md-room-detail clearfix"  style="margin-top: -80px;">
					<div class="grid_9 md-main">
                        <div class="new-heading"> </div>
						<div class="row">
							<!--  Slide Preview Room -->
							

<div class="sli">
<div class="fotorama" data-width="700" data-ratio="700/467" data-max-width="100%" data-nav="thumbs">
<?php
foreach($fdb as $v){
    echo '<img src="'.base_url("assets/uploads/$v->property_id/$v->file_name").'" alt="'.$v->caption.'" data-caption="'.$v->caption.'">';
}

/*
  <img src="uploads/2/31.jpg" alt="" data-caption="">
  <img src="uploads/2/32.jpg" alt="" data-caption="">
  <img src="uploads/2/33.jpg" alt="" data-caption="">
  <img src="uploads/2/34.jpg" alt="" data-caption="">
  <img src="uploads/2/35.jpg" alt="" data-caption="">
  <img src="uploads/2/36.jpg" alt="" data-caption="">
  <img src="uploads/2/37.jpg" alt="" data-caption="">
  <img src="uploads/2/38.jpg" alt="" data-caption="">
  <img src="uploads/2/39.jpg" alt="" data-caption="">
  <img src="uploads/2/40.jpg" alt="" data-caption="">
  <img src="uploads/2/41.jpg" alt="" data-caption="">
  <img src="uploads/2/42.jpg" alt="" data-caption="">
  <img src="uploads/2/43.jpg" alt="" data-caption="">
  <img src="uploads/2/44.jpg" alt="" data-caption="">
  <img src="uploads/2/45.jpg" alt="" data-caption="">
  <img src="uploads/2/46.jpg" alt="" data-caption="">
  <img src="uploads/2/47.jpg" alt="" data-caption="">
  <img src="uploads/2/48.jpg" alt="" data-caption="">
  <img src="uploads/2/49.jpg" alt="" data-caption="">
  <img src="uploads/2/50.jpg" alt="" data-caption="">
  <img src="uploads/2/51.jpg" alt="" data-caption="">
  <img src="uploads/2/52.jpg" alt="" data-caption="">
  <img src="uploads/2/53.jpg" alt="" data-caption="">
  <img src="uploads/2/54.jpg" alt="" data-caption="">
  <img src="uploads/2/Deer Stand2.jpg" alt="" data-caption="">
  <img src="uploads/2/Deer Stand1.jpg" alt="" data-caption="">*/ ?>
  </div>
</div>

                            
							<!-- Md booking -->
							<section class="md-booking pricing_box">
								<span class="number number-big">$150<span class="one-night">Per Night</span></span>
							</section>
                            
                            <div class="propertyTypes">
                            	<ul class="pt_details">
                                	<strong>Property Type</strong>
                                	<li><?php echo $db[0]->property_type;?></li>
                                </ul>
                                 	 
                                
                            </div>
							
							<div class="preview-content">
                            	<h3>Property description</h3>
								<p>
<?php echo html_entity_decode($db[0]->property_content);?>					
							</div>
                            
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
                           
<div class="clear"></div>
								 
                            
                            <div class="row clearfix tabCalender">
                                <h3>availability calendar</h3>
                                <div style="background:#f5f5f5; padding:20px; width:100%;"></div>	
								<iframe src="<?php echo base_url();?>calender/calender.php?property=2" frameborder="0" width="100%" height="700px"  style="background-color: #ccffcc;"></iframe>
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
									
									  
                                   		<tr>

                                           <?php 

//var_dump($edb);

foreach($rdb as $v){
    $pro_new_rate_sdate=$v->pro_new_rate_sdate;
    $pro_new_rate_edate=$v->pro_new_rate_edate;
    $pro_new_rate_weekend_night=$v->pro_new_rate_weekend_nt;
    $event=$v->pro_new_rate_desc;
    $pro_new_rate_min_stay=$v->pro_new_rate_min_stay;
   $pro_new_rate_weekly_night=$v->pro_new_rate_weekly_nt;
   $pro_new_rate_week_night=$v->pro_new_rate_week_nt;
   $pro_new_rate_monthly=$v->pro_new_rate_monthly;



	?>
		<tr>
                                      <td class="even"> 
									  <span><?php  echo $event; ?></span> 
									  <?php  echo $pro_new_rate_sdate!='0000-00-00'?date("m-d-Y", strtotime($pro_new_rate_sdate)) ." - to - ".date("m-d-Y", strtotime($pro_new_rate_edate)):''; ?> 
									  <br>
									  <?php echo $pro_new_rate_min_stay; ?>night min stay
									  </td>
									  
									  
									  
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

   
/*echo ' <td class="even"> <span>'.$v->pro_new_rate_desc.'</span>';
echo $v->pro_new_rate_sdate!='0000-00-00'?date("m-d-Y", strtotime($v->pro_new_rate_sdate)) ." - to - ".date("m-d-Y", strtotime($v->pro_new_rate_edate)):'';
echo '<br>'.$v->pro_new_rate_min_stay.'night min stay</td>';
echo '<td width="100" valign="middle" class="even-1">';
									 
				if($v->pro_new_rate_week_nt!=''){
					$si='$';
				}
				else{
					$si='-';
                }
    echo $si;
    echo $v->pro_new_rate_week_nt;</td>
    echo $v->pro_new_rate_weekend_nt;
    ?>
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
}*/
?>

    <?php 


foreach($edb as $v){
    $pro_cleaning_fee=$v->pro_cleaning_fee;
    $pro_refundable_amt=$v->pro_refundable_amt;
    $pro_def_rate_rates=$v->pro_def_rate_rates;
    $pro_tax_fee=$v->add_fees;
    $can_polices_rules=$v->can_policy;
    $can_polices_array = explode('|',$can_polices_rules);
    $notes=$v->notes;	
    @$month_dis=$v->month_dis;
    @$week_dis=$v->week_dis;
    @$extra_per_charge=$v->extra_per_charge;
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


    <?php /*    
        <strong>Notes: </strong> 48./ Pets fee - (up to 3 small pets for entire stay). Simply Call to Book ! Learn more about the Cabin &amp; owner. Credit Card payment can be a split 1/2 payment. First 1/2 at 60 days, balance at 14 days prior arrival. Payment is autom        <div class="ratesAdditional">
            <h2>Additional information about rental rates</h2>
            <label>Fees: </label>
            <ul>
                
                <li>
                    <strong>Cleaning Fee </strong>
                    <span>$69 + tax</span>
                </li>
                <li>
                    <strong>Tax Rate</strong>
                    <span>5.975% </span>
                </li>
                	
            </ul>
        </div>
        
        <div class="ownerInfo1 margin-top-big">
            <h2>Owner's Cancellation Policy:</h2>
            
						<strong><strong>CANCELLATION: &nbsp;100% REFUND FOR CANCELLATIONS MORE THAN 60 DAYS PRIOR&nbsp;CHECK-IN DATE. BOOKING: &nbsp;&nbsp;TO BOOK YOUR DATES: &nbsp;[SEE &quot;RESERVE/CONTRACT&quot; TAB AT TOP BAR.] &nbsp; 1) CLICK &quot;RESERVE/CONTRACT&quot; &nbsp; 2) &nbsp;CALL TO RESERVE. &nbsp;3) DISCUSS, PRINT AND FILL OUT &quot;RESERVE/CONTRACT&quot; 3 SHEETS. &nbsp;4) AFTER DISCUSSING WITH OWNER, EITHER EMAIL SHEETS BACK OR HAVE OWNER FAX THEM TO YOU ALREADY FILLED OUT FOR YOUR SIGNING, THEN, YOU FAX BACK. &nbsp;-DONE. NIGHTLY RATE: &nbsp;BASE RATE IS FOR 4 PERSONS. &nbsp;ADD 5. / PERSON EACH NIGHT</strong></strong>
						 
        </div>
   
                       
                                
                                
                            </div>
                            
                            
              */ ?>                       
                
                            

                             <div class="ratesTable"> 
                            	<h3>Location Map</h3>

								 <div class="map-container" id="map"></div>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3205.8732369292775!2d-93.33236978508597!3d36.53305248000456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87cee2251f316a27%3A0x1416ad0c4ba501ad!2s20+Dapple+Ln%2C+Blue+Eye%2C+MO+65611%2C+USA!5e0!3m2!1sen!2sin!4v1478897661816" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
							</div> 
							
							 <section >
         <div id="map"></div>
    </section>
                            
                            <div class="reviews">
                            <h3>Reviews</h3>

                            <?php
                           // var_dump($reviewdb);
                            foreach($reviewdb as $v){
                                if($v->img!="")
                                {
                                $cust_image = base_url("uploads/review/".$property_id."/".$v->img);
                                } 
                                else
                                {
                                $cust_image = base_url('assets/img/avatar/avt1.jpg');
                                }
                                echo '<div class="media">
                                <a class="pull-left" href="#">
                                    <img alt="avatar" src="'.$cust_image.'" class="media-object">
                                </a>
                                
                                <div class="media-body">
                                    <div class="box-quote box-quote-alter">
                                        <p style="color:#fff;">'.html_entity_decode($v->c_review).'</p>
                                        <div>
                                            <a class="text-link link-direct" href="#">'.ucfirst($v->c_name).'</a> 
                                                 </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div style="padding:20px 0px;"></div>
                             ';

                            }?>
                            <?php
                            
                            /********

                                $c_img=$v->img;
                                $c_name=$v->c_name;
                                $c_head=$v->heading;
                                $c_review=$v->c_review;	
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
                             
                            	
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We rented the Deer Stand cabin for a family Christmas get together. The cabin was immaculate: extremely clean and beautifully furnished. We were very impressed with the owner, David, who was easy to contact and always helpful during any interaction with him. He demonstrates a very caring, attentive, Christian personality and excellent customer service. Do not let the short drive through a trailer park at the entrance deter you, because the cabin experience more than makes up for the entrance. It is very quiet and layed back. We enjoyed spending time on the balcony and watching nature. If you need to rent more than one cabin, the other cabin is within close proximity. We would definitely recommend this cabin to anyone.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Tammy R</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">Hi David, My husband and I had a wonderful time staying in Blue Eye in your lovely Bear Cliff log cabin. The proximity to the town of Branson at 15 minutes is easily doable for shows and other activities. Best of all for us, the remote in-the-woods feel of the cabin, with its luxurious, rustic ambiance is spectacular. We were well outfitted with all the necessary items like dishes, linens, and even soap for the laundry. Being at the end of a driveway lined with mobile homes only slightly detracted from the loveliness of the cabin, but since the cabin faces the woods, once inside, we didn&#39;t think about it. The cabin was clean, well decorated, well outfitted, quiet and beautifully designed. Thank you for making such a lovely place available and for hosting our anniversary stay in your log cabin.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Sarah T</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We rented Bear Cliff for a 6 day stay. I was nervous renting it because of the mobile home park that you must drive through to get to the cabins. However, one review we read online said not to let that worry you. They were right! When you first turn in the property, it isn&#39;t so pretty. However, once in the cabin, you forget about the mobile homes. The cabin is BEAUTIFUL! The entire cabin, from floor to ceiling is beautiful. The cabin was clean and had all of the essentials you might need. The front porch has a great veiw into the forest and both the front and back porches have lots of animals to watch. The place was set up perfectly for our family with two rooms with beds and a living room with two couches that fold out. Our four children fit perfectly in there and staying in the living room was fun for them. The location is great and not too far from anything you want to do. We did find that the marina on the other side of the bridge had great boating prices. Table Rock Lake is a beauty too. We would stay at either cabin again. Great location, great price, and beautiful!</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Alana M</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">I could not put it into better words than Alana just did. When we first drove in to the park, we were kind of hesitant about it, but once we saw the inside of the cabin our minds quickly changed. I also noticed, just as she did, that throughout the stay we completely forgot about the mobile park that it is located in. The cabin is very spacious and has everything that you need for a week, or just a weekend. Comes complete with washer, dryer, towels, extra sheets, and anything you may need in a kitchen to whip up a good family meal. Me and my fiance had both of our families stay here, and with the two futons in the living room, everybody had a comfortable place to stay. The cabin is very close to Branson and right on Table Rock Lake as well. I would suggest it to anybody. Another big hit is the price, while looking, I couldn&#39;t find anything that was on this level for the price they offered. More than a great value</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Tyler A</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We&#39;ve just returned from staying at Deer Stand Cabin and hated to leave. We have stayed at Bear Cliff Cabin two or three times and can&#39;t say enough good things about both. The owners are easy to talk to and have made sure all the details are in place. As far as we are concerned these cabins are "the best!"</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Dee S</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We were looking to rent a secluded cabin for our family New Years getaway weekend. All pictures available online for the Pine Ridge cabins look secluded. The owner described that we would have to drive through a small mobile home park before getting to the Deer Stand Cabin. He indicated that then the road continued to the cabins and the cabins were in the woods past the mobile home park. The cabins are in fact immediately next to the mobile homes. All pictures online are carefully angled to avoid showing that fact. THE FRONT DOOR OF THE DEER STAND IS LITERALLY ABOUT 30 FEET FROM THE BACK OF AN OLD GRUNGY MOBILE HOME. I will be posting pictures we took to show this, available on Google images soon. To be clear, the Deer Stand cabin is very nice and spacious! It&#39;s supplied with all of the basics and then some. Certainly for the price the place is great! BUT one of the criteria for our trip was to be in a secluded place and we probably would NOT have chosen to stay here if we had been given an accurate description of the situation. We are not some snobby family who feel like we got mobile home on us or something, it&#39;s the principal of being lead to believe the cabin was removed from the mobile home park back in the woods and pulling into a parking space that is fit between the front porch of the cabin, and the back side of a mobile home. The 2nd cabin on the property is about 50 feet from the Deer Stand also. Additionally, we were told the lake was a short walk down a path for fishing or access. The lake is over 2000 feet from the cabin through the woods. Sadly even though this cabin is beautiful and spacious on the inside, well supplied, the view off the back porch is nice, and the price is great......we will not stay there again.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Reid K</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">My family stayed in the bear cliff cabin. It was very clean and fully equipped. We were a little leery about the mobile home park when first arriving, but felt very "at home" once inside the cabin. The back porch was our favorite hang out spot. It had a great view and was very private.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Shelly A</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We absolutely loved our stay in the Deer Stand! The cabin is absolutely beautiful and well equipped to accommodate our family of 7. It is just near enough to Branson and surrounding areas to easily take advantage of all the shows and attractions, but far enough away to escape the hustle and bustle. The rates are the best in town and they are pet friendly! We brought our German Shepherd and had no problems. We highly recommend staying at Pine Ridge Log Cabins!</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Nicole T</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                        
                                
                                
                           */ ?>      
                                
                                
                                
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
                         <li>
                         <input id="group-23" type="checkbox" hidden />
                          <label for="group-23" style=color:#fff;><span class="fa fa-angle-right"></span> General</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Activities Guide </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Local Maps </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Local Restaurant Guide </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Paper Towels </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Parking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Parking Off Street </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Shampoo </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Sofa Bed </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Toilet Paper </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Towels Provided </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Washing Machine: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Cooler </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Local Activities Guide </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Living Room </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Air Conditioning: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Alarm Clock </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Basic Soaps </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Ceiling Fans </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Clothes Dryer </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fireplace </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hair Dryer </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Heating </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Iron &amp; Board </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Laundry Soap </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Linens Provided: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fax </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-24" type="checkbox" hidden />
                          <label for="group-24" style=color:#fff;><span class="fa fa-angle-right"></span> Kitchen</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Toaster </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Ice Maker </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Grill </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Cooking Utensils </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Coffee Maker </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Dishes &amp; Utensils </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Dishwasher </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Kitchen </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Microwave </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Oven </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Refrigerator </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Stove </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Pantry Items </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-25" type="checkbox" hidden />
                          <label for="group-25" style=color:#fff;><span class="fa fa-angle-right"></span> Bedrooms</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;1 Bedroom, Sleeps 2, Beds for 2 </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bedroom 1: 1 king </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-26" type="checkbox" hidden />
                          <label for="group-26" style=color:#fff;><span class="fa fa-angle-right"></span> Bathrooms</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;1 Bathroom </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bathroom 1: toilet, combination tub/shower, tub, shower </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-27" type="checkbox" hidden />
                          <label for="group-27" style=color:#fff;><span class="fa fa-angle-right"></span> Sports &amp; Adventure Activities</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Cycling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Rafting </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Roller Blading </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Sailing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Scuba Diving Or Snorkeling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Snorkeling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Spelunking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Swimming </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Tennis </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Skiing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Tubing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Paragliding </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountaineering </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fishing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fly Fishing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Freshwater Fishing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Golf </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Golf Privileges Optional </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hiking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hunting </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Jet Skiing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain Biking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain Climbing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Wind-Surfing </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-28" type="checkbox" hidden />
                          <label for="group-28" style=color:#fff;><span class="fa fa-angle-right"></span> Leisure Activities</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Antiquing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Sledding </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Sight Seeing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Scenic Drives </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Paddle Boating </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Outlet Shopping </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Horseback Riding </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bird Watching </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Beachcombing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Walking </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-29" type="checkbox" hidden />
                          <label for="group-29" style=color:#fff;><span class="fa fa-angle-right"></span> Local Services &amp; Businesses</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Medical Services </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Laundromat </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hospital </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Groceries </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fitness Center </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;ATM/Bank </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-30" type="checkbox" hidden />
                          <label for="group-30" style=color:#fff;><span class="fa fa-angle-right"></span> Attractions</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Autumn Foliage </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Waterfalls </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Parks </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Theme Parks </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Synagogues </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Restaurants </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Recreation Center </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Playground </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Museums </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Marina </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Live Theater </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Library </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Forests </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Duty Free Shops </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Coin Laundry </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Cinemas </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Churches </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Caves </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Winery Tours </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-31" type="checkbox" hidden />
                          <label for="group-31" style=color:#fff;><span class="fa fa-angle-right"></span> Theme</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Adventure </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Away From It All </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-32" type="checkbox" hidden />
                          <label for="group-32" style=color:#fff;><span class="fa fa-angle-right"></span> Entertainment</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Television </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Satellite / Cable </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;DVD Player </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Video Library: </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-49" type="checkbox" hidden />
                          <label for="group-49" style=color:#fff;><span class="fa fa-angle-right"></span> Location Type</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Lake </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-50" type="checkbox" hidden />
                          <label for="group-50" style=color:#fff;><span class="fa fa-angle-right"></span> Dining</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Child's Highchair </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Dining </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Dining Area </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Seating for 8 people </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-51" type="checkbox" hidden />
                          <label for="group-51" style=color:#fff;><span class="fa fa-angle-right"></span> Outside</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Balcony </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Boat </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Lawn / Garden: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Outdoor Grill </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Porch / Veranda: </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-52" type="checkbox" hidden />
                          <label for="group-52" style=color:#fff;><span class="fa fa-angle-right"></span> Pool / Spa</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Jacuzzi </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-54" type="checkbox" hidden />
                          <label for="group-54" style=color:#fff;><span class="fa fa-angle-right"></span> Suitability</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Non Smoking Only </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Pets Welcome </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Low Allergen Environment </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Children Welcome </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Suitable For Elderly Or Infirm </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Wheelchair Accessible </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        
                        
                      </ul>
					  
                    </nav>
                    </div>
					
						
                        
					</aside><!-- /.md-sidebar -->
				</div><!-- /.md-testimonail -->
			</div><!-- /.md-wrapper  -->

			
            <!-- footer : starts -->
              <footer class="md-footer">
  <div class="container clearfix">
    <div class="grid_12">
      <div class="grid_4 footer-column inner-left wow slideInLeft">
        <div class="hotel-contact">
          <h3>About us</h3>
		            <p style="color:#1FDA9A">Your Hosts: David &amp; Nemesia Warren and our daughter.&nbsp;<br />
<strong>Why the Owner Chose Blue Eye, MO, USA:&nbsp;</strong><br />
Pines &amp; </p>
          <p><a href="about.php">Read more <i class="fa fa-angle-right"></i></a></p> 
        </div>
      </div>
      
      <div class="grid_4 footer-column inner-right wow fadeInDown">
        <div class="hotel-address">
          <h3>Contact Information</h3>
          <div class="footer-content">
            <address>
            <p><i class="fa fa-map-marker"></i> <span style="color:#1FDA9A">David Nemesia Warren :5704 E State Highway 86, Blue Eye, MO 65611</span></p>
            <p><i class="fa fa-envelope-o"></i> <span> <a href="mailto:pineridgelogcabinsmo@gmail.com">pineridgelogcabinsmo@gmail.com</a></span></p>
            <p><i class="fa fa-mobile"></i> <span><a href=""> Cell # 417-331-1556,  Home phone # 417-779-5095.</a></span></p> 
            </address>
            
          </div>
        </div>
      </div>
      
      <div class="grid_4 footer-column wow slideInRight">
        <div class="hotel-news">
          <h3>Newsletter</h3>
          <div class="footer-content">
            <p style="color:#1FDA9A">Sign up for our newsletter, and we'll keep you updated on all events at Flawles!</p>
            <form>
              <input type="text">
              <button class="btn btn-brown" type="submit">Send</button>
            </form>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
    </div>
	    <div class="grid_12">
      <div class="footer-social">
        <div class="social-inner">
          <h4>Follow us</h4>
          <span class="social-group wow slideInLeft"> 
          	<a href="https://www.facebook.com/Pineridgelogcabins-2109857072607540/"><i class="icon icon-facebook"></i></a> 
          	<a href="https://twitter.com/pineridgelogca1"><i class="icon icon-twitter"></i></a> 
            <a href="https://plus.google.com/u/0/105418076715800229667"><i class="icon icon-google"></i></a> 
         </span> </div>
        <span>© PineRidgeLogCabins 2017. All Rights Reserved.</span> </div>
    </div>
  </div>
</footer>
<div class="copy-right">
  <div class="container clearfix">
  
    <div class="designBy">
      <p><a href="https://www.perfectstayz.com/" target="_blank">Vacation Rentals</a> <a href="https://www.findamericanrentals.com/" target="_blank">Website</a> <a href="https://www.findamericanrentals.com/" target="_blank">Designed</a> & <a href="https://www.perfectstayz.com/" target="_blank">Managed</a> By: <a href="http://www.greatwebmakers.com/" target="_blank"><span style="color:#AE0000;"><img style="width:165px" src="https://greatwebmakers.com/images/logo.png"></span></a></p>
    </div>
    
    <div class="certificate-logo">
      <ul>
        <li><img src="<?php echo base_url('assets/');?>images/hintCounter.png"></li>
        <li><img src="<?php echo base_url('assets/');?>images/w3c-certified.png"></li>
      </ul>
    </div>
    
    <div class="clear"></div>
  </div>
</div>
<script>
$(document).ready(function(){
 $( "#to" ).datepicker({
    minDate: new Date()
});
$( "#from" ).datepicker({
    minDate: new Date(),
    onSelect: function(dateText, inst) {
        var selectedDate = $( this ).datepicker( "getDate" );
           
           // to add 2 days to current date
            Date.prototype.addDays = function(days) {
            this.setDate(this.getDate() + parseInt(days));
            return this;
            };
            
             var currentDate = selectedDate.addDays(2);
    
        $( "#to" ).datepicker( "option", "minDate", currentDate );
    }
});
})
</script>
<!-- Footer End --> 
<script type="text/javascript">
    $.noConflict();
</script>
            <!-- footer : ends -->
    
		</div><!-- /.mp-pusher -->
	</div>
    
    
    
<!-- Library Javascript  -->
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/modernizr.custom.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/jquery-ui-1.10.3.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/jquery.bxslider.min.js"></script>


<!-- Responsive Menu Javascript  -->
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/classie.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/mlpushmenu.js"></script>

<!-- Main Javascript  -->
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/script.js"></script>

<!-- Separate Javascript for each page -->
<script type="text/javascript" src="<?php echo base_url('assets/');?>js/home.js"></script>
<script type="text/javascript">
	$(function() {
		"use strict";
		$("#arrival-date, #departure-date").datepicker({
		});
	});
</script>


<script src="<?php echo base_url('assets/');?>js/jquery-1.7.1.min.js"></script>
<script src="<?php echo base_url('assets/');?>js/owl.carousel.js"></script>
 <script>
	$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
	autoplay:true,
	autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
})
	
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
			$('body,php').animate({
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