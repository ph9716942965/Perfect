<?php 
$this->load->view('common/header');
?>
<!-- Menu Responsive End --> 


        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="index.php">Home</a></li>
                	<li>Activities Close By</li>
                </ul>
            </div>
        </div>


			<div class="container">
				<div class="md-body clearfix">
					<div id="md-news-deal" class="md-news-deal masonry-container masonry">
						<article class="media media-center">
							<figure>
								<a href=""><img src="<?php echo base_url('assets/');?>img/news-deal/news-deal-1.jpg" alt="" class="media-object" width="380" height="496"></a>
							</figure>
							<!--<div class="media-body">
								<h3 class="media-header h4"> <a href="">Aruba</a></h3>
								<p class="media-content">Aruba offers a diverse number of activities for people of all ages. On the one hand, it’s extremely family friendly, with many resorts catering to families with kids. On the other hand, you can find many adult-centered activities, such as nightlife and a wide assortment of casinos. Aruba also has a slightly different landscape from many Caribbean islands, having more of a desert appearance rather than forests.</p>
							</div>-->
						</article>
                        
                        <!--- Part 2 ---->
						<article class="media media-center">
							<header class="box-heading heading-large">
								A
								<div class="decription-override">
									<h2 class="h1">Activities Close By</h2>
									<p>Pine Ridge Log Cabins</p>
								</div>
							</header>
							<div class="media-body">
								
							</div>
						</article>
                        
                        
                        <!--- Part 3 ---->
						<article class="media media-center">
							<figure>
								<a href=""><img src="<?php echo base_url('assets/');?>img/news-deal/news-deal-3.jpg" alt="" class="media-object" width="380" height="496"></a>
							</figure>
							<!--<div class="media-body">
								<h3 class="media-header h4"> <a href="">Puerto Rico</a></h3>
								<p class="media-content">Puerto Rico is a commonwealth of the U.S., so citizens do not need a passport to visit this island. This is a bustling island full of activities. Cities such as San Juan and Ponce offer lots of historical sites as well as great food and nightlife. There are lots of different kinds of beaches, making it equally attractive for surfers, snorkelers or people who simply want to relax. Puerto Rico also has quite a few casinos both large and small.</p>
							</div>-->
						</article>
                        
                        
						<article class="media media-center">
							<figure>
								<a href=""><img src="<?php echo base_url('assets/');?>img/news-deal/news-deal-4.jpg" alt="" class="media-object" width="380" height="238"></a>
							</figure>
						<!--	<div class="media-body">
								<h3 class="media-header h4"><a href="">Antigua</a></h3>
								<p class="media-content">Antigua is a small island that is often grouped with its nearby neighbor Barbuda. A popular gambling destination, Antigua has a good selection of casinos. It also has plenty of other exciting nightlife, including great restaurants, cafes and discos. The beaches are also spectacular, and you can find literally hundreds of them, with both white and pink sand.</p>
							</div>-->
						</article>
                        
                        
						<article class="media media-center" style="width: 100%;">
							<!--<figure>
								<a href=""><img src="img/news-deal/news-deal-8.jpg" alt="" class="media-object" width="380" height="238"></a>
							</figure>-->
							<div class="media-body">
					 
								<p class="media-content"><p class="media-content">Marina: Wave Runner, Boats, Pontoon Rentals - 2 miles from our Log Cabins	 
Public Boat Lunch & State Park Picnic Pavilions - 2 miles
3 Beaches +2 Parks 2 miles either direction
Horseback Riding, Fishing, Biking, Golf, Swimming, Boating, Wave Runners - 8 miles
Many Shops, restaurants, Bass Pro, Belks etc. in the new Branson Landing on Lake Taneycomo
Silver Dollar City, Celebration City, White Water, Shepherd of the Hills, Caves
Over 100 Family Shows
Branson Live Entertainment, over 100 family shows, Go Carts, Museums, Factory Malls
Trout fishing Roaring River State Park, Eureka Springs Shopping and Passion Play or Lake Taneycomo
Antique Malls all around
Children Welcome

</p></p>
							</div>
						</article>
                        
                        
						<!--<article class="media media-center">
							<figure>
								<a href=""><img src="img/news-deal/news-deal-2.jpg" alt="" class="media-object" width="380" height="238"></a>
							</figure>
							<div class="media-body">
								<h3 class="media-header h4"><a href="">Henderson Beach State Park</a></h3>
								<p class="media-content">Henderson Beach State Recreation Area is a Florida State Park located near Destin, in northwestern Florida. The address is 17000 Emerald Coast Parkway. </p>
							</div>
						</article>
                        -->
                        
					<!--	<article class="media media-center">
							<figure>
								<a href=""><img src="img/news-deal/news-deal-5.jpg" alt="" class="media-object" width="380" height="496"></a>
							</figure>
							<div class="media-body">
								<h3 class="media-header h4"> <a href="">Destin History & Fishing Museum</a></h3>
								<p class="media-content">The Destin History & Fishing Museum is located at 108 Stahlman Avenue, Destin, Florida. It contains exhibits depicting the history of the town and the fishing industry in relation to it.</p>
							</div>
						</article>-->
					</div>
					
				</div><!-- /.md-testimonail -->
			</div><!-- /.md-wrapper  -->

			
            <!-- footer : starts -->
            <?php 
        $contacts=$this->Website->contacts();
        $about=$this->Website->about();
        $Social_link=$this->Website->Social_link();
        ?>
                <footer class="md-footer">
  <div class="container clearfix">
    <div class="grid_12">
      <div class="grid_4 footer-column inner-left wow slideInLeft">
        <div class="hotel-contact">
          <h3>About us</h3>
		            <p style="color:#1FDA9A"><?php echo html_entity_decode(substr($about->content,0,191)); ?></p>
         <p><a href="about.php">Read more <i class="fa fa-angle-right"></i></a></p> 
        </div>
      </div>
      
      <div class="grid_4 footer-column inner-right wow fadeInDown">
        <div class="hotel-address">
          <h3>Contact Information</h3>
          <div class="footer-content">
            <address>
            <p><i class="fa fa-map-marker"></i> <span style="color:#1FDA9A"><?php echo $contacts->contact_content;?></span></p>
            <p><i class="fa fa-envelope-o"></i> <span> <a href="mailto:<?php echo $contacts->contact_email;?>"><?php echo $contacts->contact_email;?></a></span></p>
            <p><i class="fa fa-mobile"></i> <span><a href="#"> <?php echo $contacts->contact_phone;?></a></span></p> 
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
          <a href="<?php echo $Social_link->facebook; ?>"><i class="icon icon-facebook"></i></a> 
          	<a href="<?php echo $Social_link->twitter; ?>"><i class="icon icon-twitter"></i></a> 
            <a href="<?php echo $Social_link->google_plus; ?>"><i class="icon icon-google"></i></a> 
         </span> </div>
        <span>© Pine Ridge Log Cabins 2016. All Rights Reserved.</span> </div>
    </div>
  </div>
</footer>
<div class="copy-right">
  <div class="container clearfix">
  
    <div class="designBy">
      <p>Design by  : <a href="http://www.greatwebmakers.com/" target="_blank"> GreatWebMakers.Com </a></p>
    </div>
    
    <!--<div class="certificate-logo">
      <ul>
        <li><img src="images/hintCounter.png"></li>
        <li><img src="images/w3c-certified.png"></li>
      </ul>
    </div>-->
    
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
</html>            <!-- footer : ends -->
		</div>
	</div>

	
	 <!-- /////////////////// LINKS SCRIPT /////////////////// -->
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/modernizr.custom.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/jquery-ui-1.10.3.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/classie.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/mlpushmenu.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/jquery.masonry.js"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/');?>js/script.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			"use strict";
			var newdeal = document.querySelector('#md-news-deal');
			var loadmore = document.querySelector('#load-more');
			
			var  msnry = new Masonry(newdeal,{
				itemSelector: '.media-center',
		        columnWidth: 400,
		        isFitWidth: true
			});

			$("#load-more").bind("click",function(event){
				event.preventDefault();
				$.get("loadmore.php",function(response){
					var data = $(response).filter("article.media-center");
					console.log(data);
					$("#md-news-deal").append(data);
					msnry.appended(data);
				},'php')
			})


		 jQuery(function(){
		     jQuery('.view-content').masonry({
		          // options
		         itemSelector : '.views-row'
		      });
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

<style>
   .grid_4.footer-column {
    visibility: visible!important;
}
</style>
  
    
</body>
