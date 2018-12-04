<!doctype html>
<html lang="en">

<!-- Mirrored from localhost/old/things-to-do.php by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Dec 2018 16:43:08 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<title>Pine Ridge Soap  Began June 30, 2016</title>
	<meta charset="UTF-8">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/font.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/libs/jquery-ui-1.10.3.custom.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/style.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/responsive.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/');?>css/responsive-menu.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

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
        	<!-- Header --> 
<header class="md-header">
  <div class="container clearfix">
    <div class="grid_12"> 
      
      <!-- Logo -->
      <h1 class="md-logo"> <a href="#"> <img src="<?php echo base_url('assets/');?>images/logo.png" alt="logo"> </a> </h1>
      
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
<?php $this->load->view('common/menue_responsive'); ?>
<!-- Menu Responsive End --> 


        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="<?php echo base_url();?>">Home</a></li>
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
                 <iframe src="<?php echo base_url('x1.php');?>" style="width:100%; height:700px"></iframe> 
                 
			</section>

			<section id="content2" class="tab-content">
				 
		      <iframe src="<?php echo base_url('x2.php');?>" style="width:100%; height:700px"></iframe> 

 
			</section>

	 
		</div>
					</div><!-- /.row -->
                    
				    <!-- /.row -->
				</div>
			</div><!-- /.md-wrapper  .md-typography -->

			
            <!-- footer : starts -->
                <?php $this->load->view('common/footer');?>