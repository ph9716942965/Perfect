
<?php
$this->load->view('common/header');
?>
        <!-- Header : ends -->

			<!-- Slider with Jquery bxslider -->
			<section class="md-slide-wrapper md-slide-home pro">
				<!-- Slide Image-->
				<ul id="md-slide-fade" class="md-slide clearfix">
					<li>
						<img src="<?php echo base_url('assets/');?>img/slide/slide-2n.jpg" alt="">
					</li>
					<li>
						<img src="<?php echo base_url('assets/');?>img/slide/slide-2.jpg" alt="">
					</li>
<li>
						<img src="<?php echo base_url('assets/');?>img/slide/slide-1.jpg" alt="">
					</li>
					<li>
						<img src="<?php echo base_url('assets/');?>img/slide/slide-3.jpg" alt="">
						<!--<div class="content-slide dark">
							<div class="home-content">
								<h2 class="slide-title">Crystal<span class="title-inner">109 A</span>Sands</h2>
								<p class="slide-description">Open May 26-28 $425 Total+ on the Beach+Upgraded+Daily Bch Sv</p>
								
							</div>
						</div>-->
					</li>
                    
                    <li>
						<img src="<?php echo base_url('assets/');?>img/slide/slide-4.jpg" alt="">
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
<div class="container">
  <div class="row"><img src="<?php echo base_url('assets/');?>img_pin.png" alt="" style="width: 48%;"></div><br></div>


                <div class="container">
                    <div class="row">
                        <div class="grid_2 wow fadeInDown">
                            <a class="fa fa-paw"></a>
                            <h4 style="color: #000;">Pet Friendly</h4>
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
                           
                           <div class="grid_2 wow fadeInDown">
                            <a class="fa fa-wifi"></a>
                            <h4 style="color: #000;">WIFI</h4>
                        </div> 
                    </div>
                    <div align="center" class="container" >
                    <video style="margin-top:5%" width="70%" height="440" controls>
                     <source src="<?php echo base_url('assets/');?>WebsitePRLCVid.mp4" type="video/mp4"></video></div>
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
 @media (min-width: 600px) and (max-width: 759px) {
  
  .owl-stage {
    width: 100%!important;
}
.owl-item {
    width: 48%!important;
}
.media-header-big {
    font-size: 42px;
}
  
}
@media screen and (max-width: 768px){
.media-header-big {
    font-size: 20px;
    line-height: 55px;
}
.address-info {
    margin-top: 0px!important;
}


}


 
 @media (min-width: 320px) and (max-width: 480px) {
  
  .banner-bottom h4 {
     font-size: 10px;
    min-height: 22px;

  }
  
}

/* responsive css */
@media only screen and (max-width: 320px) {
  
        .grid_2 {
    width: 49.667%;
    margin: 7px 0px;
    }
}
     
     </style>       
            <div class="about-owner">
            	<div class="container">
                	 <h3></h3>
                    <!--<strong>This Is a Dummy Content Please Provide Us Content For This Section</strong>-->
<p></p>
                    
                </div>
            </div>
            <div class="ourProperty_newsection">
            	<div class="container">
            	<div class="owl-carousel">
                            <?php
                           // $d= $this->Website->lhk_files(1);
                           $property=$this->Website->property();
                           // var_dump($this->Website->property());
                            ?>
					 
                    <?php
                    $ALT=0;
                    foreach($property as $v){
                        if( $ALT==0){
                            echo '<div class="item aky" >';
                            $ALT=1;
                        }elseif($ALT==1){
                            echo '<div class="item aky1" >';
                            $ALT=0;
                        }
echo '
<div class="row row-home">
  <article class="media">
    <figure class="media-image wow fadeInRight"> 
    <img src="'.base_url('assets/').'uploads/'.$v->property_id.'/'.$this->Website->lhk_files($v->property_id).'" alt="" class="media-object" style="height: auto;"> </figure>
    <section class="media-body">
    <h3 class="media-header media-header-big"> <a href="'.base_url("property/index/$v->property_id").'">'.$v->property_heading.'</a> </h3>	
        <p class="media-content" style="text-align:justify;">'.html_entity_decode(substr($v->property_content,0,520)).'                                                             <div class="infoIcon">
        <ul>
          <li><span class="flaticon-bed32"></span> Sleeps - '.$v->property_no_of_sleeps.'</li>
          <li><span class="flaticon-bedroom23"></span> Bedrooms - '.$v->property_no_of_bedrooms.'</li>
          <li><span class="flaticon-hygiene11"></span> Bathrooms - '.$v->property_no_of_baths.'</li>
          <li><span class="flaticon-home211"></span> Property type - '.$v->property_type.' </li> 
          <li> <a href="'.base_url("property/index/$v->property_id").'" class="read-more">see more</a></li>
          <li><i class=""></i>$'.$this->Website->get_rate($v->property_id).'<b>Avg/Night</b></li>
        </ul>
      </div>
      </p>
    </section>
  </article>
</div>
</div>';
                    }
                    ?>
                 <?php /*   <div class="item aky" >
                        <div class="row row-home">
                          <article class="media">
                            						   <figure class="media-image wow fadeInRight"> <img src="uploads/1/2.jpg" alt="" class="media-object" style="height: auto;"> </figure>
                            <section class="media-body">
                            <h3 class="media-header media-header-big"> <a href="property/1.html">The Bear Cliff Cabin</a> </h3>	
                                <p class="media-content" style="text-align:justify;"><strong>CALL FOR SPECIALS!!!</strong><br />
This is the &#39;Bear Cliff&#39;, a new, 1232 square feet, luxury log cabin with Ponderosa pine floors & soaring 8/12 pitch roof, heavy Douglas fir beams and rafters, with 8 inch pine ceiling, all to be seen throughout! Large covered Porches with swings to view the forests & wildlife !!!<br />
<br />
Wildlife abounds from whippoorwills, singing coyotes, hoot owls early and late evenings to cardinals, wrens, squirrels, 16 inch pileated wood peckers, lizards and ...                                                             <div class="infoIcon">
                                <ul>
                                  <li><span class="flaticon-bed32"></span> Sleeps - 8</li>
                                  <li><span class="flaticon-bedroom23"></span> Bedrooms - 2</li>
                                  <li><span class="flaticon-hygiene11"></span> Bathrooms - 2</li>
                                  <li><span class="flaticon-home211"></span> Property type - Guest House </li>
                                   								                                    <li> <a href="property/1.html" class="read-more">see more</a></li>
                                  <li><i class=""></i>$150<b>Avg/Night</b></li>
                                </ul>
                              </div>
                              </p>
                            </section>
                          </article>
						  
                        </div>
                    </div>
				                							
					 
                    <div class="item aky1" >
                        <div class="row row-home">
                          <article class="media">
                            	<figure class="media-image wow fadeInRight"> <img src="uploads/2/31.jpg" alt="" class="media-object" style="height: auto;"> </figure>
                            <section class="media-body">
                            	<h3 class="media-header media-header-big"> 
                                <a href="property/2.html">The Deer Stand</a> </h3>							          
                                    <p class="media-content" style="text-align:justify;">
                                                                                 <strong>***CALL FOR SPECIALS !!  </strong><br />
The Deer Stand, a 2-story log cabin with 2 big bedrooms, 2 baths, (authentic 2-person Jacuzzi and tub/shower). It has the same beautiful ponderosa pine flooring throughout. A 8ft x 30in pine-slab bar, 7ft log 12 light candelabra chandelier, 5ft wide upstairs interior balcony reading area overlooking the lodge and dining room below. Of course, the same wide, cabin-length covered porches as the Bear Cliff cabin. Lots of rocking chairs, central air and h...                                                             <div class="infoIcon">
                                <ul>
                                  <li><span class="flaticon-bed32"></span> Sleeps - 8</li>
                                  <li><span class="flaticon-bedroom23"></span> Bedrooms - 2</li>
                                  <li><span class="flaticon-hygiene11"></span> Bathrooms - 2</li>
                                  <li><span class="flaticon-home211"></span> Property type - Cabin</li>
                                   								                                    <li> <a href="property/2.html" class="read-more">see more</a></li>
                                  <li><i class=""></i>$150<b>Avg/Night</b></li>
                                </ul>
                              </div>
                              </p>
                            </section>
                          </article>
						  
                        </div>
                    </div>
				                 	 
                     */?>
				              
                </div>
				
				</div>
				
            </div>
         <?php
$this->load->view('common/footer');
         ?>