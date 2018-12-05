<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<base href="{base_url}">
<title>Asheville Lodgings</title>

<!-- Stylesheets -->
<link href="{assets_url}css/style.css" rel="stylesheet">
<link href="{assets_url}css/responsive.css" rel="stylesheet">
<link rel="icon" href="{assets_url}images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
</head>

<!-- page wrapper -->
<body class="page-wrapper">
    <!-- .preloader -->
    <div class="preloader"></div>
    <!-- main header area -->
    <header class="main-header header-style-two">
        <!-- main-menu -->
        <div class="theme_menu stricky">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="logo-box" style="margin-top:-15px">
                            <a href="{base_url}"><figure><img src="{assets_url}images/ash-logo.png" style="width:300px" alt=""></figure></a>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="menu-area">
                            <nav class="main-menu">
                                <div class="navbar-header">     
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="navbar-collapse collapse clearfix">
                                    <ul class="navigation clearfix">
                                        <li class="current"><a href="{base_url}">Home</a></li>
                                        
                                        <li class="dropdown"><a href="{base_url}All_vacation">Vacation Rentals</a>
                                            <ul class="submenu">
                                                {Property_menue}
                                                    <li><a href="property/index/{property_id}">{property_heading}</a></li>
                                                {/Property_menue}
                                            </ul>
                                        </li> 
										
<li  ><a href="{base_url}" target="_blank">Log Cabins</a></li>										
                                        <li class=""><a href="{base_url}reviews">Reviews</a></li>
										<li class=""><a href="{base_url}attraction">Attractions</a></li> 
                                        <li class=""><a href="{base_url}contact_us">Contact Us</a>
                                        </li>
                                    </ul>
                                    <!-- mobile menu -->
                                    <ul class="mobile-menu clearfix">
                                        <li class="current"><a href="{base_url}">Home</a></li>
                                        
                                        <li class="dropdown"><a href="{base_url}">Vacation Rentals</a>
                                            <ul>
                                            {Property_menue}
                                                    <li><a href="{base_url}property/index/{property_id}">{property_heading}</a></li>
                                            {/Property_menue}                                            
                                        </li>
                                        <li><a href="{base_url}" target="_blank">Log Cabins</a></li>
                                        <li><a href="{base_url}reviews">Reviews</a></li>
									    <li><a href="{base_url}attraction">Attractions</a></li> 
                                        <li><a href="{base_url}contact_us">Contact Us</a>
                                    </ul>
                                </div>
                            </nav>
                            <ul class="header-social">
                                <li><a href="{facebook_url}"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="{twitter_url}"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="{gplus_url}"><i class="fab fa-google-plus-g"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
           </div>
        </div>

    </header>