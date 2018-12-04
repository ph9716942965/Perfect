<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

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
            <p><i class="fa fa-envelope-o"></i> <span> <a href="mailto:pineridglogcabinsmo@gmail.com">pineridglogcabinsmo@gmail.com</a></span></p>
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
          	<a href="https://www.facebook.com/"><i class="icon icon-facebook"></i></a> 
          	<a href="https://twitter.com/"><i class="icon icon-twitter"></i></a> 
            <a href="https://www.youtube.com/"><i class="icon icon-google"></i></a> 
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
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/modernizr.custom.js"></script>
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/jquery-ui-1.10.3.js"></script>
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/jquery.bxslider.min.js"></script>


<!-- Responsive Menu Javascript  -->
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/classie.js"></script>
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/mlpushmenu.js"></script>

<!-- Main Javascript  -->
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/script.js"></script>

<!-- Separate Javascript for each page -->
<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/home.js"></script>
<script type="text/javascript">
	$(function() {
		"use strict";
		$("#arrival-date, #departure-date").datepicker({
		});
	});
</script>


<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/owl.carousel.js"></script>
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
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/modernizr.custom.js"></script>
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/jquery-ui-1.10.3.js"></script>
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/classie.js"></script>
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/mlpushmenu.js"></script>
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/jquery.masonry.js"></script>
	<script type="text/javascript" src="https://www.pineridgelogcabins.com/js/script.js"></script>
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
<?php wp_footer(); ?>
</body>
</html>