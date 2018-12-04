<!-- Header --> 
<?php include ("log-admin/include/db.php"); ?>
<?php
                error_reporting(0);
                 $uri = $_SERVER['REQUEST_URI'];

                  if($uri=="/")
                       {
                       $k0="class='active'";
                       }
                       else if($uri=="")
                       {
                        $k0="class='active'";
                       }
                                  //$pagid=$_GET['p'];
                
                  if($uri=="/index.php")
                  {
                    $k1="class='active'";
                  }
                  else

                  {
                   $k1="";
                  }
                  
                 
                  if($uri=="/the-dory-unit-f.php")
                  {
                    $k2="class='active'";
                  }
                  else
                  {
                   $k2="";
                  }
                  if($uri=="/about.php")
                  {
                    $k3="class='active'";
                  }
                  else
                  {
                  $k3="";
                  }
                  if($uri=="/area-information.php")
                  {
                    $k4="class='active'";
                  }
                  else
                  {
                  $k4="";
                  }
                 if($uri=="/contact.php")
                  {
                     $k5="class='active'";
                  }
                  else
                  {
                   $k5="";
                  }
 


?>
<header class="md-header">
  <div class="container clearfix">
    <div class="grid_12"> 
      
      <!-- Logo -->
      <h1 class="md-logo"> <a href="index.php"> <img src="images/logo.png" alt="logo"> </a> </h1>
      
      <!-- Menu -->
      <nav id="main-nav" class="nav-collapse">
        <ul id="main-menu" class="md-menu">
          <?php echo"<li $k1 $k0>"; ?><a href="index.php" class="active">Home</a></li>
          <li class="have-submenu"><a href="" >Properties</a>
            <div class="sub-menu">
              <ul class="sub-menu-inner">				
				<?php echo"<li $k2>"; ?><a href="property/2" >The Deer Stand</a></li>
				<?php echo"<li $k2>"; ?><a href="property/1" >The Bear Cliff Cabin</a></li>           	
              </ul>
            </div>
          </li>
          <?php echo"<li $k3>"; ?><a href="soap.php" >Pine Ridge Soap</a></li>
          <?php echo"<li $k4>"; ?><a href="area-information.php" >Activities</a></li>
          <li ><a href="reserve.php" >Reserve/Contract</a></li> 
<li ><a href="directions.php">Directions</a></li>
<li ><a href="things-to-do.php">Things To Do</a></li>
<li ><a href="https://www.pineridgelogcabins.com/blog/">Blog</a></li> 
          <?php echo"<li $k5>"; ?><a href="contact.php" >contact us</a></li>
        </ul>
      </nav>
       
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
       <?php echo"<li $k1 $k0>"; ?><a href="index.php">Home</a></li>
        <li class="has-sub"> <a href="#">Properties</a>
          <div class="mp-level">
            <h2>Properties</h2>
            <a class="mp-back" href="#">Back</a>
			<ul>				
				<?php echo"<li $k2>"; ?><a href="property/2">The Deer Stand</a></li>
				<?php echo"<li $k2>"; ?><a href="property/1">The Bear Cliff Cabin</a></li>           	
              </ul>
            <!--<ul>
			<?php
				$pdata = mysqli_query($conn,"select * from property_listing");
				while($prs = mysqli_fetch_assoc($pdata))
				{
			?>
              <?php echo"<li $k2>"; ?><a href="the-dory-unit-f.php?property_id=<?php echo $prs['property_id'];?>"><?php echo strtoupper($prs['property_heading']);?></a><?php }?></li>
              
            </ul>-->
          </div>
        </li>
       <?php echo"<li $k3>"; ?><a href="soap.php">Pine Ridge Soap</a></li>
          <?php echo"<li $k4>"; ?><a href="area-information.php">Activities</a></li>
          <li ><a href="reserve.php">Reserve/Contract</a></li> 
             <li ><a href="directions.php">Directions</a></li> 
             <li ><a href="things-to-do.php">Things To Do</a></li> 
             <li ><a href="https://www.pineridgelogcabins.com/blog/">Blog</a></li> 
          <?php echo"<li $k5>"; ?><a href="contact.php">contact us</a></li>
      </ul>
    </div>
  </nav>
<!-- Menu Responsive End --> 


