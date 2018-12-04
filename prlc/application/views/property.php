<?php
$this->load->view('common/header');

?>




        <!-- Header : ends -->
        
        <div class="breadcrumb">
        	<div class="container">
            	<ul class="inner-nav">
                	<li><a href="<?php echo base_url();?>">Home</a></li>
                	<li>The Bear Cliff Cabin</li>
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
<?php /*
<div class="fotorama fotorama1543868185672" data-width="700" data-ratio="700/467" data-max-width="100%" data-nav="thumbs">
<div class="fotorama__wrap fotorama__wrap--css3 fotorama__wrap--slide fotorama__wrap--toggle-arrows fotorama__wrap--no-controls" style="width: 700px; min-width: 0px; max-width: 100%;">
<div class="fotorama__stage fotorama__pointer" style="width: 700px; height: 467px;">
<div class="fotorama__stage__shaft" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px); width: 700px; margin-left: 0px;">

<div class="fotorama__stage__frame fotorama__loaded fotorama__loaded--img" style="left: 702px;">
<img src="uploads/2/42.jpg" class="fotorama__img" style="width: 622.667px; height: 467px; left: 38.6667px; top: 0px;">
</div><div class="fotorama__stage__frame fotorama__loaded fotorama__loaded--img fotorama__active" style="left: 0px;">
<img src="uploads/2/41.jpg" class="fotorama__img" style="width: 622.667px; height: 467px; left: 38.6667px; top: 0px;">
</div>
<div class="fotorama__stage__frame fotorama__loaded fotorama__loaded--img" style="left: -702px;">
<img src="uploads/2/40.jpg" class="fotorama__img" style="width: 622.667px; height: 467px; left: 38.6667px; top: 0px;">
</div>
</div><div class="fotorama__arr fotorama__arr--prev" tabindex="0" role="button"></div><div class="fotorama__arr fotorama__arr--next" tabindex="0" role="button"></div><div class="fotorama__video-close"></div></div><div class="fotorama__nav-wrap"><div class="fotorama__nav fotorama__nav--thumbs fotorama__shadows--left fotorama__shadows--right" style="width: 700px;"><div class="fotorama__nav__shaft fotorama__grab" style="transition-duration: 357.5ms; transform: translate3d(-612px, 0px, 0px);"><div class="fotorama__thumb-border" style="transition-duration: 390ms; transform: translate3d(660px, 0px, 0px); width: 60px;"></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/31.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/32.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/33.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/34.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/35.jpg" class="fotorama__img" style="width: 64px; height: 85.3333px; left: 0px; top: -10.6667px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/36.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/37.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/38.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/39.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/40.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb fotorama__active" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/41.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/42.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/43.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/44.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/45.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/46.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/47.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/48.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/49.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/50.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/51.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb fotorama__loaded fotorama__loaded--img"><img src="uploads/2/52.jpg" class="fotorama__img" style="width: 85.3333px; height: 64px; left: -10.6667px; top: 0px;"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb"></div></div><div class="fotorama__nav__frame fotorama__nav__frame--thumb" tabindex="0" role="button" style="width: 64px;"><div class="fotorama__thumb"></div></div></div></div></div></div></div>
*/ ?>



<div class="fotorama" data-width="700" data-ratio="700/467" data-max-width="100%" data-nav="thumbs">
<?php
foreach($fdb as $v){
    echo '<img src="'.base_url("assets/uploads/$v->property_id/$v->file_name").'" alt="'.$v->caption.'" data-caption="'.$v->caption.'">';
}

?>
 <?php /* <img src="../uploads/1/2.jpg" alt="" data-caption="">
  <img src="../uploads/1/1.jpg" alt="" data-caption="">
  <img src="../uploads/1/4.jpg" alt="" data-caption="">
  <img src="../uploads/1/3.jpg" alt="" data-caption="">
  <img src="../uploads/1/5.jpg" alt="" data-caption="">
  <img src="../uploads/1/6.jpg" alt="" data-caption="">
  <img src="../uploads/1/7.jpg" alt="" data-caption="">
  <img src="../uploads/1/8.jpg" alt="" data-caption="">
  <img src="../uploads/1/9.jpg" alt="" data-caption="">
  <img src="../uploads/1/10.jpg" alt="" data-caption="">
  <img src="../uploads/1/11.jpg" alt="" data-caption="">
  <img src="../uploads/1/12.jpg" alt="" data-caption="">
  <img src="../uploads/1/13.jpg" alt="" data-caption="">
  <img src="../uploads/1/14.jpg" alt="" data-caption="">
  <img src="../uploads/1/16.jpg" alt="" data-caption="">
  <img src="../uploads/1/15.jpg" alt="" data-caption="">
  <img src="../uploads/1/17.jpg" alt="" data-caption="">
  <img src="../uploads/1/18.jpg" alt="" data-caption="">
  <img src="../uploads/1/19.jpg" alt="" data-caption="">
  <img src="../uploads/1/20.jpg" alt="" data-caption="">
  <img src="../uploads/1/The%20Bear%20Cliff%20Cabin.jpg" alt="" data-caption="">*/?>
  </div>
</div>

                            
							<!-- Md booking -->
							<section class="md-booking pricing_box">
								<span class="number number-big">$150<span class="one-night">Per Night</span></span>
							</section>
                            
                            <div class="propertyTypes">
                            	<ul class="pt_details">
                                	<strong>Property Type</strong>
                                	<li>Guest House </li>
                                </ul>
                                 	 
                                
                            </div>
							
							<div class="preview-content">
                            	<h3>Property description</h3>
								<p><strong>CALL FOR SPECIALS!!!</strong><br />
This is the &#39;Bear Cliff&#39;, a new, 1232 square feet, luxury log cabin with Ponderosa pine floors & soaring 8/12 pitch roof, heavy Douglas fir beams and rafters, with 8 inch pine ceiling, all to be seen throughout! Large covered Porches with swings to view the forests & wildlife !!!<br />
<br />
Wildlife abounds from whippoorwills, singing coyotes, hoot owls early and late evenings to cardinals, wrens, squirrels, 16 inch pileated wood peckers, lizards and box turtles, eagles and vultures always in the air, Pets are Welcome.<br />
<br />
Real Ponderosa Pine flooring goes completely through the cabin, with High-Beam views even the bathrooms! There are 8 inch t&g Pine walls throughout with no dry-wall! The only Log Chandelier, with candelabra lights of it&#39;s kind, is suspended by heavy black chains! Another Luxury Log Cabin, the &#39;Deer Stand&#39;, with 700# log chandelier (SEE Last PHOTO), can be seen on our Website (Click below under &#39;Further Details&#39; below). <br />
<br />
We, your hosts, actually live on the other end of the 20 acres!<br />
<br />
<br />
A Large In-ground Bird/Water Fountain and Log Bench Table for enjoying reading in the Forest & our "Bird Sanctuary" are now in place !!</p>
								
							</div>
                            
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
                           
<div class="clear"></div>
								 
                            
                            <div class="row clearfix tabCalender">
                                <h3>availability calendar</h3>
                                <div style="background:#f5f5f5; padding:20px; width:100%;"></div>	
								<iframe src="../calender/calenderc207.html?property=1" frameborder="0" width="100%" height="700px"  style="background-color: #ccffcc;"></iframe>
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
                                      <td class="even"> <span>Season 1</span> 01-04-2018 - to - 01-31-2018  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $120</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$840</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 2</span> 02-01-2018 - to - 02-28-2018  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $130</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$910</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 3</span> 03-01-2018 - to - 05-21-2018  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $150</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1000</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 4</span> 05-22-2018 - to - 06-30-2018  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $189</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1225</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 5</span> 07-01-2018 - to - 08-18-2018  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $199</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1345</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 6</span> 08-19-2017 - to - 10-31-2017  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $169</td>
                                      <!--<td class=" even textCenter">189</td>-->
                                      
									  <td class=" even-1 textCenter">
									  $189</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1100.00</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 7</span> 11-01-2017 - to - 11-20-2017  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $169</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1100</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Thanksgiving</span> 11-21-2017 - to - 11-30-2017  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $179</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1200</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 8</span> 12-01-2017 - to - 12-20-2017  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $149</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$943</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  		<tr>
                                      <td class="even"> <span>Season 9</span> 12-21-2017 - to - 01-03-2018  <br>2night min stay</td>
									  
									  
									  
                                      <td width="100" valign="middle" class="even-1">
									  $155</td>
                                      <!--<td class=" even textCenter"></td>-->
                                      
									  <td class=" even-1 textCenter">
									  -</td>
									  
									  
									  
									  
                                      <td class=" even textCenter">$1035</td>
									  
									
									  
                                      <td class="even-1 textCenter">-  </td>
                                    </tr>						   
								   
								   
								   
		  								   
                                  </tbody>
                                </table>
                                		
        
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
            
						<strong><strong>CANCELLATION: &nbsp;100% REFUND FOR CANCELLATIONS MORE THAN 60 DAYS PRIOR&nbsp;CHECK-IN DATE. BOOKING: &nbsp;&nbsp;TO BOOK YOUR DATES: &nbsp;[SEE &quot;RESERVE/CONTRACT&quot; TAB AT TOP BAR.] &nbsp; 1) CLICK &quot;RESERVE/CONTRACT&quot; &nbsp; 2) &nbsp;CALL TO RESERVE. &nbsp;3) DISCUSS, PRINT AND FILL OUT &quot;RESERVE/CONTRACT&quot; 3 SHEETS. &nbsp;4) AFTER DISCUSSING WITH OWNER, EITHER EMAIL SHEETS BACK OR HAVE OWNER FAX THEM TO YOU ALREADY FILLED OUT FOR YOUR SIGNING, THEN, YOU FAX BACK. &nbsp;-DONE. NIGHTLY RATE: &nbsp;BASE RATE IS FOR 4 PERSONS. &nbsp;ADD 5. / PERSON EACH NIGHT.</strong></strong>
						 
        </div>
   
                       
                                
                                
                            </div>
                            
                            
                                      
                
                            

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
                             
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We had such a wonderful time and have never seen such a well built spacious and beautiful log cabin as this before! It was definately an experience worth repeating and we will be back again and bring more family with us. Your prices are unbeatable for all the amenities offered not to mention the peaceful and beautiful surroundings. This is what a real vacation is meant to be! I could have spent the entire time on the back porch. Keep up the great work you have started David and Nemesia.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Linda</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">We stayed at the cabin for 2 days. It was very convenient to Branson but out of the hustle and bustle of things. The cabin was meticulously clean and had all the amenities one would want. It is very roomy and the beds very comfortable. It is a very quiet setting and certainly worth the price. The only wish would be the the bathroom areas in the bedrooms had a door on them. We loved the back deck. When we next go to Branson we will use the cabin again.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Okie</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">My husband and I came down with our dogs for a 3 night stay in May of 2011. We have rented houses on vacation before and this cabin was wonderful. Full size amenities, super clean and the porches are wonderful. We did spend most of our time on the back porch - which, by the way, is quite nice as it is raised and does not have stairs to it, so there is less worry with dogs and little ones. The Porch is also covered so if you do get a nice mountain rain, it is just as lovely to sit outside and take it all in. Easy (and beautiful) drive to Eureka Springs. Quite close to Branson and Table Rock lake. Dogwood Canyon is also just a few miles down the road (cannot comment on Dogwood as it was flooded and closed the weekend we were there). Close to grocieries, restaurants, gas station, Walmart, etc.....</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Weinkc</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">My girlfriend, her twin sister, her husband and I stayed here for 6 days. We stayed in the Bear Cliff Cabin and enjoyed every single minute of it. The cabin had everything you could possible need, plus a wonderful view of the countryside. Was a great get awaym with Branson and Springfield only a short drive away. The cabin slept 2 couples very well with very large rooms, a nice gas fireplace and a large dining area with a wonderful island. I highly recommend this property and look forward to coming back! Thanks so much for sharing your cabin with us!</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Dale H.</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">Great property! Great place to get away from the hustle and bustle of the strip. My family loved it. Thank you!!</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Hope k.</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">VERY CLEAN . IT WAS QUIET AND NEAR TO BRANSON, TABLE ROCK LAKE. WE HAD A GREAT EXPERIENCE AT THE BEAR CLIFF AND WOULD RECOMMEND TO EVERYONE. THE OWNERS WERE GREAT PEOPLE.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Honeybear</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">Great cabin with a view. Clean and comfortable...I would recommend this to anyone. Easy to find and just a short drive to Branson.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Bob</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">Bear Cliff is the most beautiful log cabin with a wonderful view. We loved the long back porch where we watched deer, squirrels and birds of all kinds. The cabin is well stocked, kitchen and bedrooms. The shower has a nice shower chair also. We would recommend this cabin to anyone. We enjoyed our stay and the Owner is very nice and helpful.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Bern</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">My husband and I stayed at the Bear Cliff 5 nights, and we loved every minute! The pictures Do Not do it justice. This cabin is beautiful, comfortable, peaceful and cozy. Has everything you could possibly need. My favorite was the view from the back porch and the gas fireplace. Just a few minutes to Top of Rock, Dogwood Canyon, and Branson shopping.</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Jan B.</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">My girlfriend, her twin sister, her husband and I stayed here for 6 days. We stayed in the Bear Cliff Cabin and enjoyed every single minute of it. The cabin had everything you could possible need, plus a wonderful view of the countryside. Was a great get awaym with Branson and Springfield only a short drive away. The cabin slept 2 couples very well with very large rooms, a nice gas fireplace and a large dining area with a wonderful island. I highly recommend this property and look forward to coming back! Thanks so much for sharing your cabin with us!</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Dale H.</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                 
                            	<div class="media">
                                    <a class="pull-left" href="#">
                                        <img alt="avatar" src="../img/avatar/avt1.jpg" class="media-object">
                                    </a>
                                    
                                    <div class="media-body">
                                        <div class="box-quote box-quote-alter">
                                            <p style="color:#fff;">Great property! Great place to get away from the hustle and bustle of the strip. My family loved it. Thank you!!</p>
                                            <div>
                                            	<a class="text-link link-direct" href="#">Hope k.</a> 
                                            	     </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div style="padding:20px 0px;"></div>
                                        
                                
                                
                                 
                                
                                
                                
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
                         <input id="group-34" type="checkbox" hidden />
                          <label for="group-34" style=color:#fff;><span class="fa fa-angle-right"></span> General</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Activities Guide </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Local Maps </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Local Restaurant Guide </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mobile Phone </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Paper Towels </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Parking Off Street: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Parking For RV/Boat/Trailer: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Telephone </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Toilet Paper </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Towels Provided </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Washing Machine: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Cooler </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Wireless Internet: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Local Activities Guide </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Linens Provided: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Air Conditioning: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Alarm Clock </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Basic Soaps </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Ceiling Fans </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Clothes Dryer </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Computer Available: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fireplace </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Gas Fireplace: </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hair Dryer </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Heating </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Iron &amp; Board </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Laundry Soap </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fax </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-35" type="checkbox" hidden />
                          <label for="group-35" style=color:#fff;><span class="fa fa-angle-right"></span> Kitchen</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Toaster </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Oven </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;4 Ring Stove </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Coffee Maker </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Cooking Utensils </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Dishwasher </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Ice Maker </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Kitchen </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Microwave </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Pantry Items </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Refrigerator </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Stove </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Freezer </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-36" type="checkbox" hidden />
                          <label for="group-36" style=color:#fff;><span class="fa fa-angle-right"></span> Bedrooms</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;3 Bedrooms, Sleeps 8, Beds for 6-8 </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bedroom 1 </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bedroom 2 </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bedroom 3 </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;King size beds (1), Queen size Beds (1), Twin or Single Beds (1), Sleep Sofa or Futons (1) </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-37" type="checkbox" hidden />
                          <label for="group-37" style=color:#fff;><span class="fa fa-angle-right"></span> Bathrooms</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Bathroom 1 </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bathroom 2 </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-38" type="checkbox" hidden />
                          <label for="group-38" style=color:#fff;><span class="fa fa-angle-right"></span> Sports &amp; Adventure Activities</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Cycling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Rafting </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Sailing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Scuba Diving Or Snorkeling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Snorkeling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Snorkeling/Diving </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Spelunking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Swimming </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Tennis </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Skiing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Tubing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Parasailing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain Climbing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fishing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fly Fishing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Freshwater Fishing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Golf </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Golf Privileges Optional </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hiking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hot Air Ballooning </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Hunting </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Jet Skiing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain Biking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Wind-Surfing </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-39" type="checkbox" hidden />
                          <label for="group-39" style=color:#fff;><span class="fa fa-angle-right"></span> Leisure Activities</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Walking </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Shuffleboard </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Scenic Drives </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Paddle Boating </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Outlet Shopping </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Horseback Riding </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Bird Watching </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Antiquing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Beachcombing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Boating </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Miniature Golf </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Shelling </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Shopping </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Sight Seeing </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Wildlife Viewing </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-40" type="checkbox" hidden />
                          <label for="group-40" style=color:#fff;><span class="fa fa-angle-right"></span> Local Services &amp; Businesses</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Groceries </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Fitness Center </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-41" type="checkbox" hidden />
                          <label for="group-41" style=color:#fff;><span class="fa fa-angle-right"></span> Attractions</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Zoo </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Waterfalls </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Water Parks </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Theme Parks </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Playground </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Marina </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Forests </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Caves </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Autumn Foliage </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Cinemas </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Health/Beauty Spa </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Live Theater </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Museums </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Recreation Center </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Restaurants </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Winery Tours </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-42" type="checkbox" hidden />
                          <label for="group-42" style=color:#fff;><span class="fa fa-angle-right"></span> Theme</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Romantic </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-43" type="checkbox" hidden />
                          <label for="group-43" style=color:#fff;><span class="fa fa-angle-right"></span> Entertainment</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Television </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Satellite / Cable </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;DVD Player </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Video Library: </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-45" type="checkbox" hidden />
                          <label for="group-45" style=color:#fff;><span class="fa fa-angle-right"></span> Location Type</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Lake </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Mountain View: </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-46" type="checkbox" hidden />
                          <label for="group-46" style=color:#fff;><span class="fa fa-angle-right"></span> Dining</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Child's Highchair </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Dining Area </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Seating for 8 people </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-47" type="checkbox" hidden />
                          <label for="group-47" style=color:#fff;><span class="fa fa-angle-right"></span> Outside</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Balcony </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Deck / Patio </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Outdoor Grill </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Lanai / Gazebo </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Porch / Veranda </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Barbecue </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-48" type="checkbox" hidden />
                          <label for="group-48" style=color:#fff;><span class="fa fa-angle-right"></span> Pool / Spa</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Jacuzzi </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Jetted Tub: </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        <li>
                         <input id="group-53" type="checkbox" hidden />
                          <label for="group-53" style=color:#fff;><span class="fa fa-angle-right"></span> Suitability</label>
						    
								<ul class="group-list">
								 								
                          <li> <a href="#">. &nbsp;Wheelchair Accessible </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Non Smoking Only </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Children Welcome </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Events Allowed </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Low Allergen Environment </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Minimum Age Limit For Renters </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Limited Accessibility </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Suitable For Elderly Or Infirm </a></li>
                          
                        
						  								
                          <li> <a href="#">. &nbsp;Pets Welcome </a></li>
                          
                        
						   
                          
                          </ul>
                        </li>
						
                        
						                        
                        
                      </ul>
					  
                    </nav>
                    </div>
					
						
                        
					</aside><!-- /.md-sidebar -->
				</div><!-- /.md-testimonail -->
			</div><!-- /.md-wrapper  -->

			
         <?php

$this->load->view('common/footer');
?>